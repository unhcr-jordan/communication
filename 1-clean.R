#load required packages

source("0-packages.R")

##################################################################
##### Adding data collected throug LimeSurvey for the urban Case Load throug the R syntax file export
##################################################################


source("survey_29824_R_syntax_file.R")

# Subsstract rows based on Non Answered Record for Submit Date in Limesurvey
db <-data[!rowSums(is.na(data["submitdate"])), ]

#key <- as.data.frame(colnames(db))
key <-read.csv("heading_name.csv",header=TRUE)

## Format as used in ODK
quer<-read.csv("key_unhcr.csv",header=TRUE)
key_choice<-read.csv("key_choice.csv",header=TRUE)


name_or<-names(db)
before<-as.character(key_choice[,3])
after<-as.character(key_choice[,2])
yes_no<-c(levels(db$Ac_SmartPhone))

db<-as.data.frame(sapply(db,gsub,pattern=",",replacement=""))

# Re-encode the results of the question
for( i in 1:599) 
{
  choice<-as.data.frame(strsplit(name_or[i],"_",fixed=TRUE))
  name_or[i]<-as.character(choice[length(choice[,1]),1])
  for (z in 1:length(key_choice[,1])) {if(name_or[i]==key_choice[z,3]){name_or[i]<-as.character(key_choice[z,2])}}
  db[,i]<-as.character(db[,i])
  if(levels(as.factor(db[,i]))[1]!="No"|is.na(levels(as.factor(db[,i]))[1]!="No")){db[,i]<-recode(db[,i],"'Not selected'=NA;'Yes'=name_or[i]")}
}
db<-as.data.frame(sapply(db,gsub,pattern=" ",replacement="_"))

## When multiple choice questions, merge the result in one column
loops<-length(quer[,1])
cnt<-0
row<-1

for (j in 1:loops)
{
  nb<-quer[j,2]
  cn<-cnt+1
  cnt<-cnt+nb
  if(nb>1)
  {
    del<-cn+1
    row<-c(row,del:cnt)
    db[,cn]<-do.call(paste, c(db[,cn:cnt], sep = " "))
  }
}
row<-c(8,6,5,4,3,row)
row<-sort(row,decreasing=TRUE)

## Db
dbback <- db

for (d in row){ db=db[,-d]}

## Cleaning the content of the cells
db<-as.data.frame(sapply(db,gsub,pattern="NA ",replacement=""))
db<-as.data.frame(sapply(db,gsub,pattern=" NA",replacement=""))
db<-as.data.frame(sapply(db,gsub,pattern="  ",replacement=" "))
db4<-as.data.frame(sapply(db,str_trim))




##################################################################
## Adding data collected through OpenData kit in Zaatari
##################################################################


odkdump <- read.csv("JOR_Mass_Communications_Survey_28052014_results.csv",header=TRUE)

# Remove meta data from ODK
odkdump1 <- odkdump[,-(3:6),drop=FALSE]
reach <- odkdump1[,-(6),drop=FALSE]

key_odk_or <- as.data.frame(colnames(reach))

# map column names 
master_key<-read.csv("key_reach_final.csv",header=TRUE)

# Delete columns that are not in the reformatted limesurvey dataset
delete<-sort(na.omit(master_key[,6]),decreasing=TRUE)

reacha <- reach

for (d in delete){ reacha=reacha[,-d]}




##################################################################
# add a column to tell wether the data are for the camps or for the host communities
##################################################################

names(reacha)=names(db4)

status<-rep("camp",length(reacha[,1]))
reacha<-cbind(reacha,status)

status<-rep("host",length(db4[,1]))
db4<-cbind(db4,status)

## Comparing variables names between the 2 data set
key_odk_key <- as.data.frame(colnames(reacha))
key_limesurvey_key <- as.data.frame(colnames(db4))


#write.csv(key_odk_key,"odk_key.csv")
#write.csv(key_limesurvey_key,"limesurvey_key.csv")

# Saved the reformatted data 
write.csv(db4,"stacked_limesurvey.csv")
write.csv(reacha,"stacked_odk.csv")

##################################################################
## Now mergin everything together
##################################################################

master_db<-rbind(db4,reacha)
master_db<-as.data.frame(sapply(master_db,gsub,pattern=",",replacement=""))
master_db<-as.data.frame(sapply(master_db,tolower))

##################################################################
## Final Recoding
##################################################################

for (q in 1:length(names(master_db)))
{master_db[,q]<-recode(master_db[,q],"'yes'=1;'no'=0;'null'=NA;'na'=NA")}

consolidated.table <- master_db

write.csv(master_db,"merge_mass_com_final.csv")

# Clean workspace for next phase
rm(list=setdiff(ls(), "consolidated.table"))