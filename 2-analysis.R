source("1-clean.R")

# A function can facilitate the re-enconding
# http://susanejohnston.wordpress.com/2012/10/01/find-and-replace-in-r-part-2-how-to-recode-many-values-simultaneously/

recoderFunc <- function(data, oldvalue, newvalue) {                                    
  # convert any factors to characters                                    
  if (is.factor(data))     data     <- as.character(data)
  if (is.factor(oldvalue)) oldvalue <- as.character(oldvalue)
  if (is.factor(newvalue)) newvalue <- as.character(newvalue)         
  # create the return vector         
  newvec <- data         
  # put recoded values into the correct position in the return vector         
  for (i in unique(oldvalue)) newvec[data == i] <- newvalue[oldvalue == i]         
  newvec         
}  


# Reorgnise the matrix in order to compute pivot tables
# Tuto: http://marcoghislanzoni.com/blog/2013/10/11/pivot-tables-in-r-with-melt-and-cast/


# extract on communication topics
dataclean.commtopic <- melt(consolidated.table, id=c(1:19), measure=c(258:279)) 

# extract on communication channel
dataclean.channel <- melt(dataclean, id=c(1:19), measure=c(20:36))
dataclean.television <- melt(dataclean, id=c(1,9:19, 42:45), measure=c(46:52))

dataclean.televisiontime <- subset(melt(dataclean, id=c(1), measure=c(42:45)),value==1,select=c(id,variable,value))
dataclean.televisiontrust <- subset(melt(dataclean, id=c(1), measure=c(46:52)),value==1,select=c(id,variable,value))
dataclean.televisionall <- merge(dataclean.televisiontime , dataclean.televisiontrust, by.x = "id", by.y = "id")


dataclean.mobile <- melt(dataclean, id=c(1,9:19, 55:59), measure=c(60:66))
dataclean.internet <- melt(dataclean, id=c(1,9:19, 67:71), measure=c(72:78))
dataclean.friends <- melt(dataclean, id=c(1,9:19, 160:164), measure=c(165:171))

write.csv(dataclean, file="dataclean.csv", row.names=F, na="")
write.csv(dataclean.television, file="datacleantelevision.csv", row.names=F, na="")
write.csv(dataclean.channel, file="datacleanchannel.csv", row.names=F, na="")

# extract on complaint
dataclean.complaint <- melt(dataclean, id=c(1:19), measure=c(535)) # further field are till 550
#warnings()
#levels(dataclean.complaint$variable)

# Let's rename the label for the variable. "Variable" is a factor so we can not simply replace value. 

changelabelchannel <- data.frame(Original = c(  "InformationSource_television", "InformationSource_mobile", "InformationSource_internet", "InformationSource_facebook","InformationSource_twitter","InformationSource_notice","InformationSource_newspaper",  "InformationSource_leaflet","InformationSource_radio","InformationSource_friends","InformationSource_community","InformationSource_religious","InformationSource_official","InformationSource_unstaff","InformationSource_NGO","InformationSource_Centres","InformationSource_Film"),
                                 New = c("Television","Mobile","Internet",  "Facebook","Twitter","Notice","Newspaper",  "Leaflet","Radio","Friends","Community",   "Religious","Official","UnStaff", "NGO","Centres","Film"))     

dataclean.channel$variable <- recoderFunc(dataclean.channel$variable, changelabelchannel$Original, changelabelchannel$New)  


changelabeltrust <- data.frame(Originaltel = c("InformationTrust_tel_full","InformationTrust_tel_mind","InformationTrust_tel_moffi","InformationTrust_tel_mcros","InformationTrust_tel_ninde","InformationTrust_tel_noffi","InformationTrust_tel_ncros"),
                               Originalmob = c("InformationTrust_mob_full","InformationTrust_mob_mind","InformationTrust_mob_moffi","InformationTrust_mob_mcros","InformationTrust_mob_ninde","InformationTrust_mob_noffi","InformationTrust_mob_ncros"),
                               Originalint = c("InformationTrust_int_full","InformationTrust_int_mind","InformationTrust_int_moffi","InformationTrust_int_mcros","InformationTrust_int_ninde","InformationTrust_int_noffi","InformationTrust_int_ncros"),
                               Originalfri = c("InformationTrust_fri_full","InformationTrust_fri_mind","InformationTrust_fri_moffi","InformationTrust_fri_mcros","InformationTrust_fri_ninde","InformationTrust_fri_noffi","InformationTrust_fri_ncros"),
                               New = c("Fully","Moderately as not independant","Moderately as not official","Moderately as not verified","Not as not independant","Not as not official","Not as not verified"))


changelabelspend <- data.frame(Originaltel = c("InformationSpend_tel_hourl", "InformationSpend_tel_daily" , "InformationSpend_tel_weekl" ,"InformationSpend_tel_month"),
                               Originalmob = c("InformationSpend_mob_hourl", "InformationSpend_mob_daily" , "InformationSpend_mob_weekl" ,"InformationSpend_mob_month"),
                               Originalint = c("InformationSpend_int_hourl", "InformationSpend_int_daily" , "InformationSpend_int_weekl" ,"InformationSpend_int_month"),
                               Originalfri = c("InformationSpend_fri_hourl", "InformationSpend_fri_daily" , "InformationSpend_fri_weekl" ,"InformationSpend_fri_month"),
                               New = c("Every hour", "Every Day" , "Every Week" ,"Every month"))


dataclean.television$variable <- recoderFunc(dataclean.television$variable, changelabeltrust$Originaltel, changelabeltrust$New)  
dataclean.mobile$variable <- recoderFunc(dataclean.mobile$variable, changelabeltrust$Originalmob, changelabeltrust$New)  
dataclean.internet$variable <- recoderFunc(dataclean.television$variable, changelabeltrust$Originalint, changelabeltrust$New)  
dataclean.friends$variable <- recoderFunc(dataclean.television$variable, changelabeltrust$Originalfri, changelabeltrust$New)  

changelabeltopic <- data.frame(Original = c("Issues_aidregistration","Issues_MoIcards", "Issues_missingmember","Issues_foodassist","Issues_waterassist", "Issues_shelter","Issues_winter","Issues_health","Issues_document", "Issues_aidcontact","Issues_income", "Issues_membercomm","Issues_servicesforchild","Issues_insecurity","Issues_return","Issues_leavecamp","Issues_civil","Issues_disabilities","Issues_news","Issues_work","Issues_cash", "Issues_resettlement" ),
                               New = c("UNHCRregistration","MoI_Cards", "MissingMember","FoodAssist",  
                                       "WaterAssist", "Shelter","Winter","Health","Document","AidContact","Income", "MemberComm",    
                                       "ServicesForChild","Insecurity","IssuesReturn","LeaveCamp","Civil","Disabilities","News", "Work", "Cash", "Resettlement"))  

dataclean.commtopic$variable <- recoderFunc(dataclean.commtopic$variable, changelabeltopic$Original, changelabeltopic$New) 







##rm(list=ls(all=TRUE))



############################################
###bivariate logistic
db <- consolidated.table
a <-db
warn <-getOption("warn") 
options(warn=2) 
dep<-391 #dependent variable index
datab<-as.data.frame(db[,391])
name_datab<-c("dependent_variable_name")
model_num<-c("dependent_variable_index")
row_coeff<-c("name","cat","Estimate","Std.Error","z value","P_value")
for(j in c(391))
{
  for (i in 1:length(names(db)))
  {
    g<-data.frame(na.omit(a[,c(j,i)]))
    f<-as.character(names(db)[i])
    k<-as.character(names(db)[j])
    n<-paste("REGRESSION DUMMIES:",k,"VS",f,"/",j,"VS",i)
    mod<-try(glm(g[,1]~g[,2],family ="binomial"),silent=T)
    if(is(mod,"try-error")){next}
    coeff<-summary(mod)
    coeff<-coeff$coefficients
    coeff<-as.data.frame(coeff)
    p_value<-coeff[2,4]
    p_value2<-coeff[3,4]
    p_value3<-coeff[4,4]
    if(p_value<=0.05&!is.na(p_value)|p_value2<=0.05&!is.na(p_value2)|p_value3<=0.05&!is.na(p_value3))
    {
      y<-length(coeff[,1])
      for (z in 2:y)
      { 
        out_coef<-c(f,rownames(coeff[z,]),coeff[z,])
        row_coeff<-rbind(row_coeff,out_coef)
      }
      
      try(cat(n,file="glm.txt",sep="\n",append=TRUE))
      out<-capture.output(summary(mod))
      try(cat(out,file="glm.txt",sep="\n",append=TRUE))
      out<-paste("-----------------------------------------------------------------------------")
      try(cat(out,file="glm.txt",sep="\n",append=TRUE))
      datab<-cbind(datab,db[,i])
      name_datab<-c(name_datab,f)
      model_num<-c(model_num,i)
    }
  }
}

write.csv(row_coeff,"bivariate_regression.csv")

#bivariate linear

warn <-getOption("warn") 
options(warn=2)
dep<-391 #dependent variable index
datab<-as.data.frame(db[,dep])
name_datab<-c("dependent_variable_name")
model_num<-c("dependent_variable_index")
row_coeff_lm<-c("name","cat","adjusted R square","R square","Estimate","Std.Error","z value","P_value")
for(j in c(dep))
{
  for (i in 8:length(names(db)))
  {
    g<-data.frame(na.omit(a[,c(j,i)]))
    f<-as.character(names(db)[i])
    k<-as.character(names(db)[j])
    n<-paste("REGRESSION DUMMIES:",k,"VS",f,"/",j,"VS",i)
    mod<-try(lm(g[,1]~g[,2]),silent=T)
    if(is(mod,"try-error")){next}
    coeff<-summary(mod)
    coeff<-coeff$coefficients
    coeff<-as.data.frame(coeff)
    p_value<-coeff[2,4]
    adjrsquare<-summary(mod)$adj.r.squared
    rsquare<-summary(mod)$r.squared
    if(p_value<=0.05&!is.na(p_value)|p_value2<=0.05&!is.na(p_value2)|p_value3<=0.05&!is.na(p_value3))
    {
      y<-length(coeff[,1])
      for (z in 2:y)
      { 
        out_coef_lm<-c(f,adjrsquare,rsquare,rownames(coeff[z,]),coeff[z,])
        row_coeff_lm<-rbind(row_coeff_lm,out_coef_lm)
      }
    }
  }
}

write.csv(row_coeff_lm,"bivariate_linear_regression.csv")


