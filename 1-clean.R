#test
## Adding data collected throug LimeSurvey for the urban Case Load throug the R syntax file export
source("survey_29824_R_syntax_file.R")

# Subsstract rows based on Non Answered Record for Submit Date in Limesurvey
db <-data[!rowSums(is.na(data["submitdate"])), ]

key <- as.data.frame(colnames(db))

#key1 <-read.csv("heading_name.csv",header=TRUE)
quer<-read.csv("key_unhcr.csv",header=TRUE)

## Adding data collected through OpenData kit in Zaatari

reach<-read.csv("survey_ODK_data_file.csv",header=TRUE)
master_key <- as.data.frame(colnames(reach))

#master_key<-read.csv("key_reach_final.csv",header=TRUE)
key_choice<-read.csv("key_choice.csv",header=TRUE)


cle<-key[,2]
name_db<-as.character(cle)
name_or<-names(db)
before<-as.character(key_choice[,3])
after<-as.character(key_choice[,2])
yes_no<-c(levels(db$Ac_SmartPhone))

db<-as.data.frame(sapply(db,gsub,pattern=",",replacement=""))

for( i in 1:599) 
{
  choice<-as.data.frame(strsplit(name_or[i],"_",fixed=TRUE))
  names(db)[i]<-name_db[i]
  name_or[i]<-as.character(choice[length(choice[,1]),1])
  for (z in 1:length(key_choice[,1])) {if(name_or[i]==key_choice[z,3]){name_or[i]<-as.character(key_choice[z,2])}}
  attributes(db)$variable.labels[i]<-name_db[i]
  db[,i]<-as.character(db[,i])
  if(levels(as.factor(db[,i]))[1]!="No"|is.na(levels(as.factor(db[,i]))[1]!="No")){db[,i]<-recode(db[,i],"'Not selected'=NA;'Yes'=name_or[i]")}
}
db<-as.data.frame(sapply(db,gsub,pattern=" ",replacement="_"))


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

for (d in row){ db=db[,-d]}

db<-as.data.frame(sapply(db,gsub,pattern="NA ",replacement=""))
db<-as.data.frame(sapply(db,gsub,pattern=" NA",replacement=""))
db<-as.data.frame(sapply(db,gsub,pattern="  ",replacement=" "))
db<-as.data.frame(sapply(db,str_trim))

write.csv(db,"stacked_unhcr.csv")

delete<-sort(na.omit(master_key[,6]),decreasing=TRUE)
for (d in delete){ reach=reach[,-d]}
names(db)=names(reach)
status<-rep("camp",length(reach[,1]))
reach<-cbind(reach,status)
status<-rep("host",length(db[,1]))
db<-cbind(db,status)
master_db<-rbind(reach,db)
master_db<-as.data.frame(sapply(master_db,gsub,pattern=",",replacement=""))
master_db<-as.data.frame(sapply(master_db,tolower))

## Recoding questions with Yes or No
for (q in 1:length(names(master_db)))
{master_db[,q]<-recode(master_db[,q],"'yes'=1;'no'=0;'null'=NA;'na'=NA")}

write.csv(master_db,"merge_mass_com_final.csv")
