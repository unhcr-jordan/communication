
#$Rev: 12179 $ .
data <- read.table("survey_29824_R_data_file.csv", sep=",", quote = "'", na.strings=c("","\"\""), stringsAsFactors=FALSE)

data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"

data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"

#Field hidden

data[, 3] <- as.character(data[, 3])
attributes(data)$variable.labels[3] <- "startlanguage"
names(data)[3] <- "startlanguage"

data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "token"
names(data)[4] <- "token"

data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "datestamp"
names(data)[5] <- "datestamp"

data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "startdate"
names(data)[6] <- "startdate"

data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "ipaddr"
names(data)[7] <- "ipaddr"

data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "refurl"
names(data)[8] <- "refurl"

data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "Size of the household"
names(data)[9] <- "householdsize"

data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Gender of the principal representative of the household?"
data[, 10] <- factor(data[, 10], levels=c("male","fmale"),labels=c("Male","Female"))
names(data)[10] <- "pa_gender"

data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "Age of the of the principal representative of the household?"
data[, 11] <- factor(data[, 11], levels=c(118,1935,3559,60),labels=c("Less than 18","Between 18 and 35","Between 36 and 59","Over 60"))
names(data)[11] <- "pa_agecohort"

data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Arrival Date in Jordan?"
names(data)[12] <- "ArrivalDate"

data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Where in Jordan do you live?"
data[, 13] <- factor(data[, 13], levels=c("ZAA","EJC","AZR","1704","1710","1705","1703","1706","1712","1709","1701","1702","1707","1711","1708"),labels=c("Zaatari Camp","EJC Camp","Azraq Camp","Al Karak Governorate","Madaba Governorate","Amman Governorate","Al Aqabah Governorate","At Tafilah Governorate","Az Zarqa Governorate","Ma'an Governorate","Ajlun Governorate","Al Balqa Governorate","Irbid Governorate","Al Mafraq Governorate","Jarash Governorate"))
names(data)[13] <- "Location1"

data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "What kind of shelter do you have?"
data[, 14] <- factor(data[, 14], levels=c("carav","tent","flat","basem"),labels=c("Caravan","Tent","Flat","Basement"))
names(data)[14] <- "Accom"

data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "[Other] What kind of shelter do you have?"
names(data)[15] <- "Accom_other"

data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "Do you have a Smart Phone?"
data[, 16] <- factor(data[, 16], levels=c(1,2),labels=c("Yes","No"))
names(data)[16] <- "Ac_SmartPhone"

data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[Android] Do you have an Android or IOS?"
data[, 17] <- factor(data[, 17], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[17] <- "Pb_SmartPhone_Android"

data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "[IOS] Do you have an Android or IOS?"
data[, 18] <- factor(data[, 18], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[18] <- "Pb_SmartPhone_IOS"

data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[Other] Do you have an Android or IOS?"
names(data)[19] <- "Pb_SmartPhone_other"

data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "[Television] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 20] <- factor(data[, 20], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[20] <- "InformationSource_television"

data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[Mobile] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 21] <- factor(data[, 21], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[21] <- "InformationSource_mobile"

data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "[Internet (news)] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 22] <- factor(data[, 22], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[22] <- "InformationSource_internet"

data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Facebook] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 23] <- factor(data[, 23], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[23] <- "InformationSource_facebook"

data[, 24] <- as.numeric(data[, 24])
attributes(data)$variable.labels[24] <- "[Twitter] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 24] <- factor(data[, 24], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[24] <- "InformationSource_twitter"

data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Notice Board or Poster] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 25] <- factor(data[, 25], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[25] <- "InformationSource_notice"

data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "[Newspapers or Magazines] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 26] <- factor(data[, 26], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[26] <- "InformationSource_newspaper"

data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Leaflets] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 27] <- factor(data[, 27], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[27] <- "InformationSource_leaflet"

data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "[Radio] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 28] <- factor(data[, 28], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[28] <- "InformationSource_radio"

data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Friends and Family] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 29] <- factor(data[, 29], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[29] <- "InformationSource_friends"

data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "[Community Leaders] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 30] <- factor(data[, 30], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[30] <- "InformationSource_community"

data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "[Religious Institutions (Mosque, Church etc.)] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 31] <- factor(data[, 31], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[31] <- "InformationSource_religious"

data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "[Jordanian Government Officials] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 32] <- factor(data[, 32], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[32] <- "InformationSource_official"

data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "[UNHCR] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 33] <- factor(data[, 33], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[33] <- "InformationSource_unstaff"

data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "[Other Humanitarian Workers/NGOs/CBOs] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 34] <- factor(data[, 34], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[34] <- "InformationSource_NGO"

data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "[Health Centres, Schools, Community-Centres] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 35] <- factor(data[, 35], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[35] <- "InformationSource_Centres"

data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "[Short film/video clip] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 36] <- factor(data[, 36], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[36] <- "InformationSource_Film"

data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[Other] 
	Which of the following channels does your household use to get important information? (tick all applicable options)

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
names(data)[37] <- "InformationSource_other"

data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "[Jordanian] Which Television programs do you watch?"
data[, 38] <- factor(data[, 38], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[38] <- "Ac_television_Jor"

data[, 39] <- as.numeric(data[, 39])
attributes(data)$variable.labels[39] <- "[Programs from your country of origin] Which Television programs do you watch?"
data[, 39] <- factor(data[, 39], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[39] <- "Ac_television_CoO"

data[, 40] <- as.numeric(data[, 40])
attributes(data)$variable.labels[40] <- "[International] Which Television programs do you watch?"
data[, 40] <- factor(data[, 40], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[40] <- "Ac_television_Int"

data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "Please specify the programs that you watch."
names(data)[41] <- "Informationtelevisio"

data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[More than once a day] How often do you consult \"Television\" as a source of information?"
data[, 42] <- factor(data[, 42], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[42] <- "InformationSpend_tel_hourl"

data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[Once day] How often do you consult \"Television\" as a source of information?"
data[, 43] <- factor(data[, 43], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[43] <- "InformationSpend_tel_daily"

data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Once a week] How often do you consult \"Television\" as a source of information?"
data[, 44] <- factor(data[, 44], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[44] <- "InformationSpend_tel_weekl"

data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Not more than once a month] How often do you consult \"Television\" as a source of information?"
data[, 45] <- factor(data[, 45], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[45] <- "InformationSpend_tel_month"

data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[Fully] 
	How much do you trust \"Television\" as a source of information?"
data[, 46] <- factor(data[, 46], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[46] <- "InformationTrust_tel_full"

data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[ Moderately because it\'s not an independant source] 
	How much do you trust \"Television\" as a source of information?"
data[, 47] <- factor(data[, 47], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[47] <- "InformationTrust_tel_mind"

data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "[ Moderately because it\'s not an official source] 
	How much do you trust \"Television\" as a source of information?"
data[, 48] <- factor(data[, 48], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[48] <- "InformationTrust_tel_moffi"

data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "[ Moderately because I can not verify it] 
	How much do you trust \"Television\" as a source of information?"
data[, 49] <- factor(data[, 49], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[49] <- "InformationTrust_tel_mcros"

data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "[ Not at all because it\'s not an independant source] 
	How much do you trust \"Television\" as a source of information?"
data[, 50] <- factor(data[, 50], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[50] <- "InformationTrust_tel_ninde"

data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[ Not at all because it\'s not an official source] 
	How much do you trust \"Television\" as a source of information?"
data[, 51] <- factor(data[, 51], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[51] <- "InformationTrust_tel_noffi"

data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "[ Not at all because I can not verify it] 
	How much do you trust \"Television\" as a source of information?"
data[, 52] <- factor(data[, 52], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[52] <- "InformationTrust_tel_ncros"

data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[Voice Call] Which mobile services do you use?"
data[, 53] <- factor(data[, 53], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[53] <- "Ac_mobileservices_Call"

data[, 54] <- as.numeric(data[, 54])
attributes(data)$variable.labels[54] <- "[SMS or Whatsapp] Which mobile services do you use?"
data[, 54] <- factor(data[, 54], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[54] <- "Ac_mobileservices_SMS"

data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Smart phone services (Internet, Apps)] Which mobile services do you use?"
data[, 55] <- factor(data[, 55], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[55] <- "Ac_mobileservices_App"

data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "[More than once a day] How often do you consult \"Mobile Communication\" as a source of information?"
data[, 56] <- factor(data[, 56], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[56] <- "InformationSpend_mob_hourl"

data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[Once day] How often do you consult \"Mobile Communication\" as a source of information?"
data[, 57] <- factor(data[, 57], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[57] <- "InformationSpend_mob_daily"

data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "[Once a week] How often do you consult \"Mobile Communication\" as a source of information?"
data[, 58] <- factor(data[, 58], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[58] <- "InformationSpend_mob_weekl"

data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "[Not more than once a month] How often do you consult \"Mobile Communication\" as a source of information?"
data[, 59] <- factor(data[, 59], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[59] <- "InformationSpend_mob_month"

data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "[Fully] How much do you trust \"Mobile Communication\" as a source of information?"
data[, 60] <- factor(data[, 60], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[60] <- "InformationTrust_mob_full"

data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Mobile Communication\" as a source of information?"
data[, 61] <- factor(data[, 61], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[61] <- "InformationTrust_mob_mind"

data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "[ Moderately because it\'s not an official source] How much do you trust \"Mobile Communication\" as a source of information?"
data[, 62] <- factor(data[, 62], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[62] <- "InformationTrust_mob_moffi"

data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "[ Moderately because I can not verify it] How much do you trust \"Mobile Communication\" as a source of information?"
data[, 63] <- factor(data[, 63], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[63] <- "InformationTrust_mob_mcros"

data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Mobile Communication\" as a source of information?"
data[, 64] <- factor(data[, 64], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[64] <- "InformationTrust_mob_ninde"

data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[ Not at all because it\'s not an official source] How much do you trust \"Mobile Communication\" as a source of information?"
data[, 65] <- factor(data[, 65], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[65] <- "InformationTrust_mob_noffi"

data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "[ Not at all because I can not verify it] How much do you trust \"Mobile Communication\" as a source of information?"
data[, 66] <- factor(data[, 66], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[66] <- "InformationTrust_mob_ncros"

data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "Please specify the website you are refering to."
names(data)[67] <- "Informationinternet"

data[, 68] <- as.numeric(data[, 68])
attributes(data)$variable.labels[68] <- "[More than once a day] How often do you consult \"Internet\" as a source of information?"
data[, 68] <- factor(data[, 68], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[68] <- "InformationSpend_int_hourl"

data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[Once day] How often do you consult \"Internet\" as a source of information?"
data[, 69] <- factor(data[, 69], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[69] <- "InformationSpend_int_daily"

data[, 70] <- as.numeric(data[, 70])
attributes(data)$variable.labels[70] <- "[Once a week] How often do you consult \"Internet\" as a source of information?"
data[, 70] <- factor(data[, 70], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[70] <- "InformationSpend_int_weekl"

data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Not more than once a month] How often do you consult \"Internet\" as a source of information?"
data[, 71] <- factor(data[, 71], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[71] <- "InformationSpend_int_month"

data[, 72] <- as.numeric(data[, 72])
attributes(data)$variable.labels[72] <- "[Fully] How much do you trust \"Internet\" as a source of information?"
data[, 72] <- factor(data[, 72], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[72] <- "InformationTrust_int_full"

data[, 73] <- as.numeric(data[, 73])
attributes(data)$variable.labels[73] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Internet\" as a source of information?"
data[, 73] <- factor(data[, 73], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[73] <- "InformationTrust_int_mind"

data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "[ Moderately because it\'s not an official source] How much do you trust \"Internet\" as a source of information?"
data[, 74] <- factor(data[, 74], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[74] <- "InformationTrust_int_moffi"

data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "[ Moderately because I can not verify it] How much do you trust \"Internet\" as a source of information?"
data[, 75] <- factor(data[, 75], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[75] <- "InformationTrust_int_mcros"

data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Internet\" as a source of information?"
data[, 76] <- factor(data[, 76], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[76] <- "InformationTrust_int_ninde"

data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "[ Not at all because it\'s not an official source] How much do you trust \"Internet\" as a source of information?"
data[, 77] <- factor(data[, 77], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[77] <- "InformationTrust_int_noffi"

data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[ Not at all because I can not verify it] How much do you trust \"Internet\" as a source of information?"
data[, 78] <- factor(data[, 78], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[78] <- "InformationTrust_int_ncros"

data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "Please specify the Facebook group page you are refering to (eg. UNHCR Jordan)."
names(data)[79] <- "Informationfacebook"

data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[More than once a day] How often do you consult \"Facebook\" as a source of information?"
data[, 80] <- factor(data[, 80], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[80] <- "InformationSpend_fac_hourl"

data[, 81] <- as.numeric(data[, 81])
attributes(data)$variable.labels[81] <- "[Once day] How often do you consult \"Facebook\" as a source of information?"
data[, 81] <- factor(data[, 81], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[81] <- "InformationSpend_fac_daily"

data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[Once a week] How often do you consult \"Facebook\" as a source of information?"
data[, 82] <- factor(data[, 82], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[82] <- "InformationSpend_fac_weekl"

data[, 83] <- as.numeric(data[, 83])
attributes(data)$variable.labels[83] <- "[Not more than once a month] How often do you consult \"Facebook\" as a source of information?"
data[, 83] <- factor(data[, 83], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[83] <- "InformationSpend_fac_month"

data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "[Fully] How much do you trust \"Facebook\" as a source of information?"
data[, 84] <- factor(data[, 84], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[84] <- "InformationTrust_fac_full"

data[, 85] <- as.numeric(data[, 85])
attributes(data)$variable.labels[85] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Facebook\" as a source of information?"
data[, 85] <- factor(data[, 85], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[85] <- "InformationTrust_fac_mind"

data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "[ Moderately because it\'s not an official source] How much do you trust \"Facebook\" as a source of information?"
data[, 86] <- factor(data[, 86], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[86] <- "InformationTrust_fac_moffi"

data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- "[ Moderately because I can not verify it] How much do you trust \"Facebook\" as a source of information?"
data[, 87] <- factor(data[, 87], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[87] <- "InformationTrust_fac_mcros"

data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Facebook\" as a source of information?"
data[, 88] <- factor(data[, 88], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[88] <- "InformationTrust_fac_ninde"

data[, 89] <- as.numeric(data[, 89])
attributes(data)$variable.labels[89] <- "[ Not at all because it\'s not an official source] How much do you trust \"Facebook\" as a source of information?"
data[, 89] <- factor(data[, 89], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[89] <- "InformationTrust_fac_noffi"

data[, 90] <- as.numeric(data[, 90])
attributes(data)$variable.labels[90] <- "[ Not at all because I can not verify it] How much do you trust \"Facebook\" as a source of information?"
data[, 90] <- factor(data[, 90], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[90] <- "InformationTrust_fac_ncros"

data[, 91] <- as.character(data[, 91])
attributes(data)$variable.labels[91] <- "Please specify the Twitter account you are following"
names(data)[91] <- "InformationTwitter"

data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[More than once a day] How often do you consult \"Twitter\" as a source of information?"
data[, 92] <- factor(data[, 92], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[92] <- "InformationSpend_twi_hourl"

data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[Once day] How often do you consult \"Twitter\" as a source of information?"
data[, 93] <- factor(data[, 93], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[93] <- "InformationSpend_twi_daily"

data[, 94] <- as.numeric(data[, 94])
attributes(data)$variable.labels[94] <- "[Once a week] How often do you consult \"Twitter\" as a source of information?"
data[, 94] <- factor(data[, 94], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[94] <- "InformationSpend_twi_weekl"

data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[Not more than once a month] How often do you consult \"Twitter\" as a source of information?"
data[, 95] <- factor(data[, 95], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[95] <- "InformationSpend_twi_month"

data[, 96] <- as.numeric(data[, 96])
attributes(data)$variable.labels[96] <- "[Fully] How much do you trust \"Twitter\" as a source of information?"
data[, 96] <- factor(data[, 96], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[96] <- "InformationTrust_twi_full"

data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Twitter\" as a source of information?"
data[, 97] <- factor(data[, 97], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[97] <- "InformationTrust_twi_mind"

data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "[ Moderately because it\'s not an official source] How much do you trust \"Twitter\" as a source of information?"
data[, 98] <- factor(data[, 98], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[98] <- "InformationTrust_twi_moffi"

data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[ Moderately because I can not verify it] How much do you trust \"Twitter\" as a source of information?"
data[, 99] <- factor(data[, 99], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[99] <- "InformationTrust_twi_mcros"

data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Twitter\" as a source of information?"
data[, 100] <- factor(data[, 100], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[100] <- "InformationTrust_twi_ninde"

data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "[ Not at all because it\'s not an official source] How much do you trust \"Twitter\" as a source of information?"
data[, 101] <- factor(data[, 101], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[101] <- "InformationTrust_twi_noffi"

data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "[ Not at all because I can not verify it] How much do you trust \"Twitter\" as a source of information?"
data[, 102] <- factor(data[, 102], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[102] <- "InformationTrust_twi_ncros"

data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "[More than once a day] How often do you consult \"Leaflets\" as a source of information?"
data[, 103] <- factor(data[, 103], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[103] <- "InformationSpend_lea_hourl"

data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "[Once day] How often do you consult \"Leaflets\" as a source of information?"
data[, 104] <- factor(data[, 104], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[104] <- "InformationSpend_lea_daily"

data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- "[Once a week] How often do you consult \"Leaflets\" as a source of information?"
data[, 105] <- factor(data[, 105], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[105] <- "InformationSpend_lea_weekl"

data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "[Not more than once a month] How often do you consult \"Leaflets\" as a source of information?"
data[, 106] <- factor(data[, 106], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[106] <- "InformationSpend_lea_month"

data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "[Fully] How much do you trust \"Leaflets\" as a source of information?"
data[, 107] <- factor(data[, 107], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[107] <- "InformationTrust_lea_full"

data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Leaflets\" as a source of information?"
data[, 108] <- factor(data[, 108], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[108] <- "InformationTrust_lea_mind"

data[, 109] <- as.numeric(data[, 109])
attributes(data)$variable.labels[109] <- "[ Moderately because it\'s not an official source] How much do you trust \"Leaflets\" as a source of information?"
data[, 109] <- factor(data[, 109], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[109] <- "InformationTrust_lea_moffi"

data[, 110] <- as.numeric(data[, 110])
attributes(data)$variable.labels[110] <- "[ Moderately because I can not verify it] How much do you trust \"Leaflets\" as a source of information?"
data[, 110] <- factor(data[, 110], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[110] <- "InformationTrust_lea_mcros"

data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Leaflets\" as a source of information?"
data[, 111] <- factor(data[, 111], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[111] <- "InformationTrust_lea_ninde"

data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "[ Not at all because it\'s not an official source] How much do you trust \"Leaflets\" as a source of information?"
data[, 112] <- factor(data[, 112], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[112] <- "InformationTrust_lea_noffi"

data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "[ Not at all because I can not verify it] How much do you trust \"Leaflets\" as a source of information?"
data[, 113] <- factor(data[, 113], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[113] <- "InformationTrust_lea_ncros"

data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- "[More than once a day] How often do you consult \"Newspapers or Magazines\" as a source of information?"
data[, 114] <- factor(data[, 114], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[114] <- "InformationSpend_new_hourl"

data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "[Once day] How often do you consult \"Newspapers or Magazines\" as a source of information?"
data[, 115] <- factor(data[, 115], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[115] <- "InformationSpend_new_daily"

data[, 116] <- as.numeric(data[, 116])
attributes(data)$variable.labels[116] <- "[Once a week] How often do you consult \"Newspapers or Magazines\" as a source of information?"
data[, 116] <- factor(data[, 116], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[116] <- "InformationSpend_new_weekl"

data[, 117] <- as.numeric(data[, 117])
attributes(data)$variable.labels[117] <- "[Not more than once a month] How often do you consult \"Newspapers or Magazines\" as a source of information?"
data[, 117] <- factor(data[, 117], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[117] <- "InformationSpend_new_month"

data[, 118] <- as.numeric(data[, 118])
attributes(data)$variable.labels[118] <- "[Fully] How much do you trust \"Newspapers or Magazine\" as a source of information?"
data[, 118] <- factor(data[, 118], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[118] <- "InformationTrust_new_full"

data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Newspapers or Magazine\" as a source of information?"
data[, 119] <- factor(data[, 119], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[119] <- "InformationTrust_new_mind"

data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "[ Moderately because it\'s not an official source] How much do you trust \"Newspapers or Magazine\" as a source of information?"
data[, 120] <- factor(data[, 120], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[120] <- "InformationTrust_new_moffi"

data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "[ Moderately because I can not verify it] How much do you trust \"Newspapers or Magazine\" as a source of information?"
data[, 121] <- factor(data[, 121], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[121] <- "InformationTrust_new_mcros"

data[, 122] <- as.numeric(data[, 122])
attributes(data)$variable.labels[122] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Newspapers or Magazine\" as a source of information?"
data[, 122] <- factor(data[, 122], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[122] <- "InformationTrust_new_ninde"

data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- "[ Not at all because it\'s not an official source] How much do you trust \"Newspapers or Magazine\" as a source of information?"
data[, 123] <- factor(data[, 123], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[123] <- "InformationTrust_new_noffi"

data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- "[ Not at all because I can not verify it] How much do you trust \"Newspapers or Magazine\" as a source of information?"
data[, 124] <- factor(data[, 124], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[124] <- "InformationTrust_new_ncros"

data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[More than once a day] How often do you consult \"Notice Board\" as a source of information?"
data[, 125] <- factor(data[, 125], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[125] <- "InformationSpend_not_hourl"

data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "[Once day] How often do you consult \"Notice Board\" as a source of information?"
data[, 126] <- factor(data[, 126], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[126] <- "InformationSpend_not_daily"

data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[Once a week] How often do you consult \"Notice Board\" as a source of information?"
data[, 127] <- factor(data[, 127], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[127] <- "InformationSpend_not_weekl"

data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[Not more than once a month] How often do you consult \"Notice Board\" as a source of information?"
data[, 128] <- factor(data[, 128], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[128] <- "InformationSpend_not_month"

data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[Fully] How much do you trust \"Notice Board\" as a source of information?"
data[, 129] <- factor(data[, 129], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[129] <- "InformationTrust_not_full"

data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Notice Board\" as a source of information?"
data[, 130] <- factor(data[, 130], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[130] <- "InformationTrust_not_mind"

data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "[ Moderately because it\'s not an official source] How much do you trust \"Notice Board\" as a source of information?"
data[, 131] <- factor(data[, 131], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[131] <- "InformationTrust_not_moffi"

data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "[ Moderately because I can not verify it] How much do you trust \"Notice Board\" as a source of information?"
data[, 132] <- factor(data[, 132], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[132] <- "InformationTrust_not_mcros"

data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Notice Board\" as a source of information?"
data[, 133] <- factor(data[, 133], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[133] <- "InformationTrust_not_ninde"

data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "[ Not at all because it\'s not an official source] How much do you trust \"Notice Board\" as a source of information?"
data[, 134] <- factor(data[, 134], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[134] <- "InformationTrust_not_noffi"

data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[ Not at all because I can not verify it] How much do you trust \"Notice Board\" as a source of information?"
data[, 135] <- factor(data[, 135], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[135] <- "InformationTrust_not_ncros"

data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "[FM] What type of Radio do you listen to?"
data[, 136] <- factor(data[, 136], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[136] <- "Ac_Radio_FM"

data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[Short Wave] What type of Radio do you listen to?"
data[, 137] <- factor(data[, 137], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[137] <- "Ac_Radio_Short"

data[, 138] <- as.character(data[, 138])
attributes(data)$variable.labels[138] <- "Please specify the programs that you listen to."
names(data)[138] <- "informationradio"

data[, 139] <- as.numeric(data[, 139])
attributes(data)$variable.labels[139] <- "[More than once a day] How often do you consult \"radio\" as a source of information?"
data[, 139] <- factor(data[, 139], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[139] <- "InformationSpend_rad_hourl"

data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "[Once day] How often do you consult \"radio\" as a source of information?"
data[, 140] <- factor(data[, 140], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[140] <- "InformationSpend_rad_daily"

data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[Once a week] How often do you consult \"radio\" as a source of information?"
data[, 141] <- factor(data[, 141], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[141] <- "InformationSpend_rad_weekl"

data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[Not more than once a month] How often do you consult \"radio\" as a source of information?"
data[, 142] <- factor(data[, 142], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[142] <- "InformationSpend_rad_month"

data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- "[Fully] How much do you trust \"Radio\" as a source of information?"
data[, 143] <- factor(data[, 143], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[143] <- "InformationTrust_rad_full"

data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Radio\" as a source of information?"
data[, 144] <- factor(data[, 144], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[144] <- "InformationTrust_rad_mind"

data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "[ Moderately because it\'s not an official source] How much do you trust \"Radio\" as a source of information?"
data[, 145] <- factor(data[, 145], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[145] <- "InformationTrust_rad_moffi"

data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "[ Moderately because I can not verify it] How much do you trust \"Radio\" as a source of information?"
data[, 146] <- factor(data[, 146], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[146] <- "InformationTrust_rad_mcros"

data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Radio\" as a source of information?"
data[, 147] <- factor(data[, 147], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[147] <- "InformationTrust_rad_ninde"

data[, 148] <- as.numeric(data[, 148])
attributes(data)$variable.labels[148] <- "[ Not at all because it\'s not an official source] How much do you trust \"Radio\" as a source of information?"
data[, 148] <- factor(data[, 148], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[148] <- "InformationTrust_rad_noffi"

data[, 149] <- as.numeric(data[, 149])
attributes(data)$variable.labels[149] <- "[ Not at all because I can not verify it] How much do you trust \"Radio\" as a source of information?"
data[, 149] <- factor(data[, 149], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[149] <- "InformationTrust_rad_ncros"

data[, 150] <- as.numeric(data[, 150])
attributes(data)$variable.labels[150] <- "[More than once a day] How often do you consult \"Friends and Family\" as a source of information?"
data[, 150] <- factor(data[, 150], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[150] <- "InformationSpend_fri_hourl"

data[, 151] <- as.numeric(data[, 151])
attributes(data)$variable.labels[151] <- "[Once day] How often do you consult \"Friends and Family\" as a source of information?"
data[, 151] <- factor(data[, 151], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[151] <- "InformationSpend_fri_daily"

data[, 152] <- as.numeric(data[, 152])
attributes(data)$variable.labels[152] <- "[Once a week] How often do you consult \"Friends and Family\" as a source of information?"
data[, 152] <- factor(data[, 152], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[152] <- "InformationSpend_fri_weekl"

data[, 153] <- as.numeric(data[, 153])
attributes(data)$variable.labels[153] <- "[Not more than once a month] How often do you consult \"Friends and Family\" as a source of information?"
data[, 153] <- factor(data[, 153], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[153] <- "InformationSpend_fri_month"

data[, 154] <- as.numeric(data[, 154])
attributes(data)$variable.labels[154] <- "[Fully] How much do you trust \"Friends and Family\" as a source of information?"
data[, 154] <- factor(data[, 154], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[154] <- "InformationTrust_fri_full"

data[, 155] <- as.numeric(data[, 155])
attributes(data)$variable.labels[155] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Friends and Family\" as a source of information?"
data[, 155] <- factor(data[, 155], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[155] <- "InformationTrust_fri_mind"

data[, 156] <- as.numeric(data[, 156])
attributes(data)$variable.labels[156] <- "[ Moderately because it\'s not an official source] How much do you trust \"Friends and Family\" as a source of information?"
data[, 156] <- factor(data[, 156], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[156] <- "InformationTrust_fri_moffi"

data[, 157] <- as.numeric(data[, 157])
attributes(data)$variable.labels[157] <- "[ Moderately because I can not verify it] How much do you trust \"Friends and Family\" as a source of information?"
data[, 157] <- factor(data[, 157], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[157] <- "InformationTrust_fri_mcros"

data[, 158] <- as.numeric(data[, 158])
attributes(data)$variable.labels[158] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Friends and Family\" as a source of information?"
data[, 158] <- factor(data[, 158], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[158] <- "InformationTrust_fri_ninde"

data[, 159] <- as.numeric(data[, 159])
attributes(data)$variable.labels[159] <- "[ Not at all because it\'s not an official source] How much do you trust \"Friends and Family\" as a source of information?"
data[, 159] <- factor(data[, 159], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[159] <- "InformationTrust_fri_noffi"

data[, 160] <- as.numeric(data[, 160])
attributes(data)$variable.labels[160] <- "[ Not at all because I can not verify it] How much do you trust \"Friends and Family\" as a source of information?"
data[, 160] <- factor(data[, 160], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[160] <- "InformationTrust_fri_ncros"

data[, 161] <- as.numeric(data[, 161])
attributes(data)$variable.labels[161] <- "[More than once a day] How often do you consult \"Community Leaders\" as a source of information?"
data[, 161] <- factor(data[, 161], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[161] <- "InformationSpend_com_hourl"

data[, 162] <- as.numeric(data[, 162])
attributes(data)$variable.labels[162] <- "[Once day] How often do you consult \"Community Leaders\" as a source of information?"
data[, 162] <- factor(data[, 162], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[162] <- "InformationSpend_com_daily"

data[, 163] <- as.numeric(data[, 163])
attributes(data)$variable.labels[163] <- "[Once a week] How often do you consult \"Community Leaders\" as a source of information?"
data[, 163] <- factor(data[, 163], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[163] <- "InformationSpend_com_weekl"

data[, 164] <- as.numeric(data[, 164])
attributes(data)$variable.labels[164] <- "[Not more than once a month] How often do you consult \"Community Leaders\" as a source of information?"
data[, 164] <- factor(data[, 164], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[164] <- "InformationSpend_com_month"

data[, 165] <- as.numeric(data[, 165])
attributes(data)$variable.labels[165] <- "[Fully] How much do you trust \"Community Leaders\" as a source of information?"
data[, 165] <- factor(data[, 165], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[165] <- "InformationTrust_com_full"

data[, 166] <- as.numeric(data[, 166])
attributes(data)$variable.labels[166] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Community Leaders\" as a source of information?"
data[, 166] <- factor(data[, 166], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[166] <- "InformationTrust_com_mind"

data[, 167] <- as.numeric(data[, 167])
attributes(data)$variable.labels[167] <- "[ Moderately because it\'s not an official source] How much do you trust \"Community Leaders\" as a source of information?"
data[, 167] <- factor(data[, 167], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[167] <- "InformationTrust_com_moffi"

data[, 168] <- as.numeric(data[, 168])
attributes(data)$variable.labels[168] <- "[ Moderately because I can not verify it] How much do you trust \"Community Leaders\" as a source of information?"
data[, 168] <- factor(data[, 168], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[168] <- "InformationTrust_com_mcros"

data[, 169] <- as.numeric(data[, 169])
attributes(data)$variable.labels[169] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Community Leaders\" as a source of information?"
data[, 169] <- factor(data[, 169], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[169] <- "InformationTrust_com_ninde"

data[, 170] <- as.numeric(data[, 170])
attributes(data)$variable.labels[170] <- "[ Not at all because it\'s not an official source] How much do you trust \"Community Leaders\" as a source of information?"
data[, 170] <- factor(data[, 170], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[170] <- "InformationTrust_com_noffi"

data[, 171] <- as.numeric(data[, 171])
attributes(data)$variable.labels[171] <- "[ Not at all because I can not verify it] How much do you trust \"Community Leaders\" as a source of information?"
data[, 171] <- factor(data[, 171], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[171] <- "InformationTrust_com_ncros"

data[, 172] <- as.numeric(data[, 172])
attributes(data)$variable.labels[172] <- "[More than once a day] How often do you consult \"Religious Institutions (Mosque, Church etc.)\" as a source of information?"
data[, 172] <- factor(data[, 172], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[172] <- "InformationSpend_rel_hourl"

data[, 173] <- as.numeric(data[, 173])
attributes(data)$variable.labels[173] <- "[Once day] How often do you consult \"Religious Institutions (Mosque, Church etc.)\" as a source of information?"
data[, 173] <- factor(data[, 173], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[173] <- "InformationSpend_rel_daily"

data[, 174] <- as.numeric(data[, 174])
attributes(data)$variable.labels[174] <- "[Once a week] How often do you consult \"Religious Institutions (Mosque, Church etc.)\" as a source of information?"
data[, 174] <- factor(data[, 174], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[174] <- "InformationSpend_rel_weekl"

data[, 175] <- as.numeric(data[, 175])
attributes(data)$variable.labels[175] <- "[Not more than once a month] How often do you consult \"Religious Institutions (Mosque, Church etc.)\" as a source of information?"
data[, 175] <- factor(data[, 175], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[175] <- "InformationSpend_rel_month"

data[, 176] <- as.numeric(data[, 176])
attributes(data)$variable.labels[176] <- "[Fully] How much do you trust \"Religious Insititutions (Mosque, Church etc.)\" as a source of information?"
data[, 176] <- factor(data[, 176], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[176] <- "InformationTrust_rel_full"

data[, 177] <- as.numeric(data[, 177])
attributes(data)$variable.labels[177] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Religious Insititutions (Mosque, Church etc.)\" as a source of information?"
data[, 177] <- factor(data[, 177], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[177] <- "InformationTrust_rel_mind"

data[, 178] <- as.numeric(data[, 178])
attributes(data)$variable.labels[178] <- "[ Moderately because it\'s not an official source] How much do you trust \"Religious Insititutions (Mosque, Church etc.)\" as a source of information?"
data[, 178] <- factor(data[, 178], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[178] <- "InformationTrust_rel_moffi"

data[, 179] <- as.numeric(data[, 179])
attributes(data)$variable.labels[179] <- "[ Moderately because I can not verify it] How much do you trust \"Religious Insititutions (Mosque, Church etc.)\" as a source of information?"
data[, 179] <- factor(data[, 179], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[179] <- "InformationTrust_rel_mcros"

data[, 180] <- as.numeric(data[, 180])
attributes(data)$variable.labels[180] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Religious Insititutions (Mosque, Church etc.)\" as a source of information?"
data[, 180] <- factor(data[, 180], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[180] <- "InformationTrust_rel_ninde"

data[, 181] <- as.numeric(data[, 181])
attributes(data)$variable.labels[181] <- "[ Not at all because it\'s not an official source] How much do you trust \"Religious Insititutions (Mosque, Church etc.)\" as a source of information?"
data[, 181] <- factor(data[, 181], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[181] <- "InformationTrust_rel_noffi"

data[, 182] <- as.numeric(data[, 182])
attributes(data)$variable.labels[182] <- "[ Not at all because I can not verify it] How much do you trust \"Religious Insititutions (Mosque, Church etc.)\" as a source of information?"
data[, 182] <- factor(data[, 182], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[182] <- "InformationTrust_rel_ncros"

data[, 183] <- as.numeric(data[, 183])
attributes(data)$variable.labels[183] <- "[More than once a day] How often do you consult \"Jordanian Government Officials\" as a source of information?"
data[, 183] <- factor(data[, 183], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[183] <- "InformationSpend_off_hourl"

data[, 184] <- as.numeric(data[, 184])
attributes(data)$variable.labels[184] <- "[Once day] How often do you consult \"Jordanian Government Officials\" as a source of information?"
data[, 184] <- factor(data[, 184], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[184] <- "InformationSpend_off_daily"

data[, 185] <- as.numeric(data[, 185])
attributes(data)$variable.labels[185] <- "[Once a week] How often do you consult \"Jordanian Government Officials\" as a source of information?"
data[, 185] <- factor(data[, 185], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[185] <- "InformationSpend_off_weekl"

data[, 186] <- as.numeric(data[, 186])
attributes(data)$variable.labels[186] <- "[Not more than once a month] How often do you consult \"Jordanian Government Officials\" as a source of information?"
data[, 186] <- factor(data[, 186], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[186] <- "InformationSpend_off_month"

data[, 187] <- as.numeric(data[, 187])
attributes(data)$variable.labels[187] <- "[Fully] How much do you trust \"Jordanian Government Officials\" as a source of information?"
data[, 187] <- factor(data[, 187], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[187] <- "InformationTrust_off_full"

data[, 188] <- as.numeric(data[, 188])
attributes(data)$variable.labels[188] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Jordanian Government Officials\" as a source of information?"
data[, 188] <- factor(data[, 188], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[188] <- "InformationTrust_off_mind"

data[, 189] <- as.numeric(data[, 189])
attributes(data)$variable.labels[189] <- "[ Moderately because it\'s not an official source] How much do you trust \"Jordanian Government Officials\" as a source of information?"
data[, 189] <- factor(data[, 189], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[189] <- "InformationTrust_off_moffi"

data[, 190] <- as.numeric(data[, 190])
attributes(data)$variable.labels[190] <- "[ Moderately because I can not verify it] How much do you trust \"Jordanian Government Officials\" as a source of information?"
data[, 190] <- factor(data[, 190], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[190] <- "InformationTrust_off_mcros"

data[, 191] <- as.numeric(data[, 191])
attributes(data)$variable.labels[191] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Jordanian Government Officials\" as a source of information?"
data[, 191] <- factor(data[, 191], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[191] <- "InformationTrust_off_ninde"

data[, 192] <- as.numeric(data[, 192])
attributes(data)$variable.labels[192] <- "[ Not at all because it\'s not an official source] How much do you trust \"Jordanian Government Officials\" as a source of information?"
data[, 192] <- factor(data[, 192], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[192] <- "InformationTrust_off_noffi"

data[, 193] <- as.numeric(data[, 193])
attributes(data)$variable.labels[193] <- "[ Not at all because I can not verify it] How much do you trust \"Jordanian Government Officials\" as a source of information?"
data[, 193] <- factor(data[, 193], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[193] <- "InformationTrust_off_ncros"

data[, 194] <- as.numeric(data[, 194])
attributes(data)$variable.labels[194] <- "[Info Line] Which UNHCR source of information do you use?"
data[, 194] <- factor(data[, 194], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[194] <- "Ac_Unhcr_Infoline"

data[, 195] <- as.numeric(data[, 195])
attributes(data)$variable.labels[195] <- "[Help desk] Which UNHCR source of information do you use?"
data[, 195] <- factor(data[, 195], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[195] <- "Ac_Unhcr_Helpdesk"

data[, 196] <- as.numeric(data[, 196])
attributes(data)$variable.labels[196] <- "[Town Hall meeting] Which UNHCR source of information do you use?"
data[, 196] <- factor(data[, 196], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[196] <- "Ac_Unhcr_Townhall"

data[, 197] <- as.numeric(data[, 197])
attributes(data)$variable.labels[197] <- "[UNHCR service guide] Which UNHCR source of information do you use?"
data[, 197] <- factor(data[, 197], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[197] <- "Ac_Unhcr_servicguide"

data[, 198] <- as.numeric(data[, 198])
attributes(data)$variable.labels[198] <- "[Counselling booth] Which UNHCR source of information do you use?"
data[, 198] <- factor(data[, 198], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[198] <- "Ac_Unhcr_counselling"

data[, 199] <- as.numeric(data[, 199])
attributes(data)$variable.labels[199] <- "[Posters] Which UNHCR source of information do you use?"
data[, 199] <- factor(data[, 199], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[199] <- "Ac_Unhcr_Posters"

data[, 200] <- as.numeric(data[, 200])
attributes(data)$variable.labels[200] <- "[Mass Information SMS] Which UNHCR source of information do you use?"
data[, 200] <- factor(data[, 200], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[200] <- "Ac_Unhcr_MISMS"

data[, 201] <- as.numeric(data[, 201])
attributes(data)$variable.labels[201] <- "[Irbid] To which counselling booth do you go?"
data[, 201] <- factor(data[, 201], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[201] <- "Whichcounsel_Irbid"

data[, 202] <- as.numeric(data[, 202])
attributes(data)$variable.labels[202] <- "[Khalda] To which counselling booth do you go?"
data[, 202] <- factor(data[, 202], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[202] <- "Whichcounsel_Khalda"

data[, 203] <- as.numeric(data[, 203])
attributes(data)$variable.labels[203] <- "[More than once a day] How often do you consult \"UNHCR\" as a source of information?"
data[, 203] <- factor(data[, 203], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[203] <- "InformationSpend_uns_hourl"

data[, 204] <- as.numeric(data[, 204])
attributes(data)$variable.labels[204] <- "[Once day] How often do you consult \"UNHCR\" as a source of information?"
data[, 204] <- factor(data[, 204], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[204] <- "InformationSpend_uns_daily"

data[, 205] <- as.numeric(data[, 205])
attributes(data)$variable.labels[205] <- "[Once a week] How often do you consult \"UNHCR\" as a source of information?"
data[, 205] <- factor(data[, 205], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[205] <- "InformationSpend_uns_weekl"

data[, 206] <- as.numeric(data[, 206])
attributes(data)$variable.labels[206] <- "[Not more than once a month] How often do you consult \"UNHCR\" as a source of information?"
data[, 206] <- factor(data[, 206], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[206] <- "InformationSpend_uns_month"

data[, 207] <- as.numeric(data[, 207])
attributes(data)$variable.labels[207] <- "[Fully] How much do you trust \"UNHCR\" as a source of information?"
data[, 207] <- factor(data[, 207], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[207] <- "InformationTrust_uns_full"

data[, 208] <- as.numeric(data[, 208])
attributes(data)$variable.labels[208] <- "[ Moderately because it\'s not an independant source] How much do you trust \"UNHCR\" as a source of information?"
data[, 208] <- factor(data[, 208], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[208] <- "InformationTrust_uns_mind"

data[, 209] <- as.numeric(data[, 209])
attributes(data)$variable.labels[209] <- "[ Moderately because it\'s not an official source] How much do you trust \"UNHCR\" as a source of information?"
data[, 209] <- factor(data[, 209], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[209] <- "InformationTrust_uns_moffi"

data[, 210] <- as.numeric(data[, 210])
attributes(data)$variable.labels[210] <- "[ Moderately because I can not verify it] How much do you trust \"UNHCR\" as a source of information?"
data[, 210] <- factor(data[, 210], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[210] <- "InformationTrust_uns_mcros"

data[, 211] <- as.numeric(data[, 211])
attributes(data)$variable.labels[211] <- "[ Not at all because it\'s not an independant source] How much do you trust \"UNHCR\" as a source of information?"
data[, 211] <- factor(data[, 211], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[211] <- "InformationTrust_uns_ninde"

data[, 212] <- as.numeric(data[, 212])
attributes(data)$variable.labels[212] <- "[ Not at all because it\'s not an official source] How much do you trust \"UNHCR\" as a source of information?"
data[, 212] <- factor(data[, 212], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[212] <- "InformationTrust_uns_noffi"

data[, 213] <- as.numeric(data[, 213])
attributes(data)$variable.labels[213] <- "[ Not at all because I can not verify it] How much do you trust \"UNHCR\" as a source of information?"
data[, 213] <- factor(data[, 213], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[213] <- "InformationTrust_uns_ncros"

data[, 214] <- as.numeric(data[, 214])
attributes(data)$variable.labels[214] <- "[More than once a day] How often do you consult \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 214] <- factor(data[, 214], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[214] <- "InformationSpend_NGO_hourl"

data[, 215] <- as.numeric(data[, 215])
attributes(data)$variable.labels[215] <- "[Once day] How often do you consult \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 215] <- factor(data[, 215], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[215] <- "InformationSpend_NGO_daily"

data[, 216] <- as.numeric(data[, 216])
attributes(data)$variable.labels[216] <- "[Once a week] How often do you consult \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 216] <- factor(data[, 216], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[216] <- "InformationSpend_NGO_weekl"

data[, 217] <- as.numeric(data[, 217])
attributes(data)$variable.labels[217] <- "[Not more than once a month] How often do you consult \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 217] <- factor(data[, 217], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[217] <- "InformationSpend_NGO_month"

data[, 218] <- as.numeric(data[, 218])
attributes(data)$variable.labels[218] <- "[Fully] How much do you trust \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 218] <- factor(data[, 218], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[218] <- "InformationTrust_NGO_full"

data[, 219] <- as.numeric(data[, 219])
attributes(data)$variable.labels[219] <- "[ Moderately because it\'s not an independant source] How much do you trust \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 219] <- factor(data[, 219], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[219] <- "InformationTrust_NGO_mind"

data[, 220] <- as.numeric(data[, 220])
attributes(data)$variable.labels[220] <- "[ Moderately because it\'s not an official source] How much do you trust \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 220] <- factor(data[, 220], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[220] <- "InformationTrust_NGO_moffi"

data[, 221] <- as.numeric(data[, 221])
attributes(data)$variable.labels[221] <- "[ Moderately because I can not verify it] How much do you trust \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 221] <- factor(data[, 221], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[221] <- "InformationTrust_NGO_mcros"

data[, 222] <- as.numeric(data[, 222])
attributes(data)$variable.labels[222] <- "[ Not at all because it\'s not an independant source] How much do you trust \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 222] <- factor(data[, 222], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[222] <- "InformationTrust_NGO_ninde"

data[, 223] <- as.numeric(data[, 223])
attributes(data)$variable.labels[223] <- "[ Not at all because it\'s not an official source] How much do you trust \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 223] <- factor(data[, 223], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[223] <- "InformationTrust_NGO_noffi"

data[, 224] <- as.numeric(data[, 224])
attributes(data)$variable.labels[224] <- "[ Not at all because I can not verify it] How much do you trust \"other Humanitarian Workers/NGOs/CBOs\" as a source of information?"
data[, 224] <- factor(data[, 224], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[224] <- "InformationTrust_NGO_ncros"

data[, 225] <- as.numeric(data[, 225])
attributes(data)$variable.labels[225] <- "[More than once a day] How often do you consult \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 225] <- factor(data[, 225], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[225] <- "InformationSpend_cen_hourl"

data[, 226] <- as.numeric(data[, 226])
attributes(data)$variable.labels[226] <- "[Once day] How often do you consult \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 226] <- factor(data[, 226], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[226] <- "InformationSpend_cen_daily"

data[, 227] <- as.numeric(data[, 227])
attributes(data)$variable.labels[227] <- "[Once a week] How often do you consult \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 227] <- factor(data[, 227], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[227] <- "InformationSpend_cen_weekl"

data[, 228] <- as.numeric(data[, 228])
attributes(data)$variable.labels[228] <- "[Not more than once a month] How often do you consult \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 228] <- factor(data[, 228], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[228] <- "InformationSpend_cen_month"

data[, 229] <- as.numeric(data[, 229])
attributes(data)$variable.labels[229] <- "[Fully] How much do you trust \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 229] <- factor(data[, 229], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[229] <- "InformationTrust_Cen_full"

data[, 230] <- as.numeric(data[, 230])
attributes(data)$variable.labels[230] <- "[ Moderately because it\'s not an independant source] How much do you trust \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 230] <- factor(data[, 230], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[230] <- "InformationTrust_Cen_mind"

data[, 231] <- as.numeric(data[, 231])
attributes(data)$variable.labels[231] <- "[ Moderately because it\'s not an official source] How much do you trust \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 231] <- factor(data[, 231], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[231] <- "InformationTrust_Cen_moffi"

data[, 232] <- as.numeric(data[, 232])
attributes(data)$variable.labels[232] <- "[ Moderately because I can not verify it] How much do you trust \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 232] <- factor(data[, 232], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[232] <- "InformationTrust_Cen_mcros"

data[, 233] <- as.numeric(data[, 233])
attributes(data)$variable.labels[233] <- "[ Not at all because it\'s not an independant source] How much do you trust \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 233] <- factor(data[, 233], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[233] <- "InformationTrust_Cen_ninde"

data[, 234] <- as.numeric(data[, 234])
attributes(data)$variable.labels[234] <- "[ Not at all because it\'s not an official source] How much do you trust \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 234] <- factor(data[, 234], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[234] <- "InformationTrust_Cen_noffi"

data[, 235] <- as.numeric(data[, 235])
attributes(data)$variable.labels[235] <- "[ Not at all because I can not verify it] How much do you trust \"Health centres, Schools, Community-Centres\" as a source of information?"
data[, 235] <- factor(data[, 235], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[235] <- "InformationTrust_Cen_ncros"

data[, 236] <- as.numeric(data[, 236])
attributes(data)$variable.labels[236] <- "[More than once a day] How often do you consult \"short films/video clips\" as a source of information?"
data[, 236] <- factor(data[, 236], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[236] <- "Informationspend_fil_hourl"

data[, 237] <- as.numeric(data[, 237])
attributes(data)$variable.labels[237] <- "[Once day] How often do you consult \"short films/video clips\" as a source of information?"
data[, 237] <- factor(data[, 237], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[237] <- "Informationspend_fil_daily"

data[, 238] <- as.numeric(data[, 238])
attributes(data)$variable.labels[238] <- "[Once a week] How often do you consult \"short films/video clips\" as a source of information?"
data[, 238] <- factor(data[, 238], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[238] <- "Informationspend_fil_weekl"

data[, 239] <- as.numeric(data[, 239])
attributes(data)$variable.labels[239] <- "[Not more than once a month] How often do you consult \"short films/video clips\" as a source of information?"
data[, 239] <- factor(data[, 239], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[239] <- "Informationspend_fil_month"

data[, 240] <- as.numeric(data[, 240])
attributes(data)$variable.labels[240] <- "[Fully] How much do you trust \"short films/videoclips\" as a source of information?"
data[, 240] <- factor(data[, 240], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[240] <- "Informationtrust_fil_full"

data[, 241] <- as.numeric(data[, 241])
attributes(data)$variable.labels[241] <- "[ Moderately because it\'s not an independant source] How much do you trust \"short films/videoclips\" as a source of information?"
data[, 241] <- factor(data[, 241], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[241] <- "Informationtrust_fil_mind"

data[, 242] <- as.numeric(data[, 242])
attributes(data)$variable.labels[242] <- "[ Moderately because it\'s not an official source] How much do you trust \"short films/videoclips\" as a source of information?"
data[, 242] <- factor(data[, 242], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[242] <- "Informationtrust_fil_moffi"

data[, 243] <- as.numeric(data[, 243])
attributes(data)$variable.labels[243] <- "[ Moderately because I can not cross reference it] How much do you trust \"short films/videoclips\" as a source of information?"
data[, 243] <- factor(data[, 243], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[243] <- "Informationtrust_fil_mcros"

data[, 244] <- as.numeric(data[, 244])
attributes(data)$variable.labels[244] <- "[ Not at all because it\'s not an independant source] How much do you trust \"short films/videoclips\" as a source of information?"
data[, 244] <- factor(data[, 244], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[244] <- "Informationtrust_fil_ninde"

data[, 245] <- as.numeric(data[, 245])
attributes(data)$variable.labels[245] <- "[ Not at all because it\'s not an official source] How much do you trust \"short films/videoclips\" as a source of information?"
data[, 245] <- factor(data[, 245], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[245] <- "Informationtrust_fil_noffi"

data[, 246] <- as.numeric(data[, 246])
attributes(data)$variable.labels[246] <- "[ Not at all because I can not cross reference it] How much do you trust \"short films/videoclips\" as a source of information?"
data[, 246] <- factor(data[, 246], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[246] <- "Informationtrust_fil_ncros"

data[, 247] <- as.numeric(data[, 247])
attributes(data)$variable.labels[247] <- "[More than once a day] How often do you consult the other source you mentioned as a source of information?"
data[, 247] <- factor(data[, 247], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[247] <- "InformationSpend_oth_hourl"

data[, 248] <- as.numeric(data[, 248])
attributes(data)$variable.labels[248] <- "[Once day] How often do you consult the other source you mentioned as a source of information?"
data[, 248] <- factor(data[, 248], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[248] <- "InformationSpend_oth_daily"

data[, 249] <- as.numeric(data[, 249])
attributes(data)$variable.labels[249] <- "[Once a week] How often do you consult the other source you mentioned as a source of information?"
data[, 249] <- factor(data[, 249], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[249] <- "InformationSpend_oth_weekl"

data[, 250] <- as.numeric(data[, 250])
attributes(data)$variable.labels[250] <- "[Not more than once a month] How often do you consult the other source you mentioned as a source of information?"
data[, 250] <- factor(data[, 250], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[250] <- "InformationSpend_oth_month"

data[, 251] <- as.numeric(data[, 251])
attributes(data)$variable.labels[251] <- "[Fully] How much do you trust the other source you mentioned as a source of information?"
data[, 251] <- factor(data[, 251], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[251] <- "InformationTrust_oth_full"

data[, 252] <- as.numeric(data[, 252])
attributes(data)$variable.labels[252] <- "[ Moderately because it\'s not an independant source] How much do you trust the other source you mentioned as a source of information?"
data[, 252] <- factor(data[, 252], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[252] <- "InformationTrust_oth_mind"

data[, 253] <- as.numeric(data[, 253])
attributes(data)$variable.labels[253] <- "[ Moderately because it\'s not an official source] How much do you trust the other source you mentioned as a source of information?"
data[, 253] <- factor(data[, 253], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[253] <- "InformationTrust_oth_moffi"

data[, 254] <- as.numeric(data[, 254])
attributes(data)$variable.labels[254] <- "[ Moderately because I can verify it] How much do you trust the other source you mentioned as a source of information?"
data[, 254] <- factor(data[, 254], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[254] <- "InformationTrust_oth_mcros"

data[, 255] <- as.numeric(data[, 255])
attributes(data)$variable.labels[255] <- "[ Not at all because it\'s not an independant source] How much do you trust the other source you mentioned as a source of information?"
data[, 255] <- factor(data[, 255], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[255] <- "InformationTrust_oth_ninde"

data[, 256] <- as.numeric(data[, 256])
attributes(data)$variable.labels[256] <- "[ Not at all because it\'s not an official source] How much do you trust the other source you mentioned as a source of information?"
data[, 256] <- factor(data[, 256], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[256] <- "InformationTrust_oth_noffi"

data[, 257] <- as.numeric(data[, 257])
attributes(data)$variable.labels[257] <- "[ Not at all because I can verify it] How much do you trust the other source you mentioned as a source of information?"
data[, 257] <- factor(data[, 257], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[257] <- "InformationTrust_oth_ncros"

data[, 258] <- as.numeric(data[, 258])
attributes(data)$variable.labels[258] <- "[ REGISTRATION UNHCR registration] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 258] <- factor(data[, 258], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[258] <- "Issues_aidregistration"

data[, 259] <- as.numeric(data[, 259])
attributes(data)$variable.labels[259] <- "[ Issuance of MoI cards] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 259] <- factor(data[, 259], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[259] <- "Issues_MoIcards"

data[, 260] <- as.numeric(data[, 260])
attributes(data)$variable.labels[260] <- "[ PROTECTION Information on missing family members ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 260] <- factor(data[, 260], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[260] <- "Issues_missingmember"

data[, 261] <- as.numeric(data[, 261])
attributes(data)$variable.labels[261] <- "[ FOOD How to benefit from existing food assistance programs (such as WFP Vouchers)] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 261] <- factor(data[, 261], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[261] <- "Issues_foodassist"

data[, 262] <- as.numeric(data[, 262])
attributes(data)$variable.labels[262] <- "[ WASH How to benefit from WASH assistance ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 262] <- factor(data[, 262], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[262] <- "Issues_waterassist"

data[, 263] <- as.numeric(data[, 263])
attributes(data)$variable.labels[263] <- "[ SHELTER How to benefit from caravans or shelter maintenance programs ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 263] <- factor(data[, 263], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[263] <- "Issues_shelter"

data[, 264] <- as.numeric(data[, 264])
attributes(data)$variable.labels[264] <- "[ SHELTER Information on winterization ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 264] <- factor(data[, 264], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[264] <- "Issues_winter"

data[, 265] <- as.numeric(data[, 265])
attributes(data)$variable.labels[265] <- "[ HEALTH Where to access existing health services] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 265] <- factor(data[, 265], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[265] <- "Issues_health"

data[, 266] <- as.numeric(data[, 266])
attributes(data)$variable.labels[266] <- "[ How to retrieve official country of origin documents (ID, Passports, etc) ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 266] <- factor(data[, 266], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[266] <- "Issues_document"

data[, 267] <- as.numeric(data[, 267])
attributes(data)$variable.labels[267] <- "[ How to contact aid providers ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 267] <- factor(data[, 267], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[267] <- "Issues_aidcontact"

data[, 268] <- as.numeric(data[, 268])
attributes(data)$variable.labels[268] <- "[ How to benefit from income-generating activities ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 268] <- factor(data[, 268], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[268] <- "Issues_income"

data[, 269] <- as.numeric(data[, 269])
attributes(data)$variable.labels[269] <- "[ PROTECTION How to communicate with family members outside of the camp ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 269] <- factor(data[, 269], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[269] <- "Issues_membercomm"

data[, 270] <- as.numeric(data[, 270])
attributes(data)$variable.labels[270] <- "[ Services for your child (Education, Child-friendly spaces, or other activities)] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 270] <- factor(data[, 270], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[270] <- "Issues_servicesforchild"

data[, 271] <- as.numeric(data[, 271])
attributes(data)$variable.labels[271] <- "[ How to report insecurity or crime ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 271] <- factor(data[, 271], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[271] <- "Issues_insecurity"

data[, 272] <- as.numeric(data[, 272])
attributes(data)$variable.labels[272] <- "[ PROTECTION Information on Voluntary Returns  ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 272] <- factor(data[, 272], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[272] <- "Issues_return"

data[, 273] <- as.numeric(data[, 273])
attributes(data)$variable.labels[273] <- "[ How to leave the camp ] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 273] <- factor(data[, 273], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[273] <- "Issues_leavecamp"

data[, 274] <- as.numeric(data[, 274])
attributes(data)$variable.labels[274] <- "[ How to issue civil status documents in Jordan (Birth Certificates, Marriage Certificates etc.)] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 274] <- factor(data[, 274], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[274] <- "Issues_civil"

data[, 275] <- as.numeric(data[, 275])
attributes(data)$variable.labels[275] <- "[ Services for persons with disabilities] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 275] <- factor(data[, 275], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[275] <- "Issues_disabilities"

data[, 276] <- as.numeric(data[, 276])
attributes(data)$variable.labels[276] <- "[ News on your country of origin] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 276] <- factor(data[, 276], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[276] <- "Issues_news"

data[, 277] <- as.numeric(data[, 277])
attributes(data)$variable.labels[277] <- "[ How to obtain a work permit] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 277] <- factor(data[, 277], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[277] <- "Issues_work"

data[, 278] <- as.numeric(data[, 278])
attributes(data)$variable.labels[278] <- "[ CASH Services on cash assistance] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 278] <- factor(data[, 278], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[278] <- "Issues_cash"

data[, 279] <- as.numeric(data[, 279])
attributes(data)$variable.labels[279] <- "[ Resettlement] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
data[, 279] <- factor(data[, 279], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[279] <- "Issues_resettlement"

data[, 280] <- as.character(data[, 280])
attributes(data)$variable.labels[280] <- "[Other] 
	Which important issues does your household need information on?

	For the multiple choice questions, do not read out the options but wait until the interviewee responds.

	 

	When the interviewee has said one of the options, ask the interviewee the follow-up questions before he/she mentions another issue."
names(data)[280] <- "Issues_other"

data[, 281] <- as.numeric(data[, 281])
attributes(data)$variable.labels[281] <- "For the \"UNHCR Registration\" topic, Does your household experience problems accessing information?"
data[, 281] <- factor(data[, 281], levels=c(1,2),labels=c("Yes","No"))
names(data)[281] <- "Ac_aidregistrati"

data[, 282] <- as.numeric(data[, 282])
attributes(data)$variable.labels[282] <- "[I can not find the information] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 282] <- factor(data[, 282], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[282] <- "Pb_aidregistration_notfi"

data[, 283] <- as.numeric(data[, 283])
attributes(data)$variable.labels[283] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 283] <- factor(data[, 283], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[283] <- "Pb_aidregistration_notse"

data[, 284] <- as.numeric(data[, 284])
attributes(data)$variable.labels[284] <- "[Information is not available] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 284] <- factor(data[, 284], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[284] <- "Pb_aidregistration_notav"

data[, 285] <- as.numeric(data[, 285])
attributes(data)$variable.labels[285] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 285] <- factor(data[, 285], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[285] <- "Pb_aidregistration_notar"

data[, 286] <- as.numeric(data[, 286])
attributes(data)$variable.labels[286] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 286] <- factor(data[, 286], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[286] <- "Pb_aidregistration_restr"

data[, 287] <- as.numeric(data[, 287])
attributes(data)$variable.labels[287] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 287] <- factor(data[, 287], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[287] <- "Pb_aidregistration_needp"

data[, 288] <- as.numeric(data[, 288])
attributes(data)$variable.labels[288] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 288] <- factor(data[, 288], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[288] <- "Pb_aidregistration_notre"

data[, 289] <- as.numeric(data[, 289])
attributes(data)$variable.labels[289] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 289] <- factor(data[, 289], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[289] <- "Pb_aidregistration_infobusy"

data[, 290] <- as.numeric(data[, 290])
attributes(data)$variable.labels[290] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
data[, 290] <- factor(data[, 290], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[290] <- "Pb_aidregistration_helpdesk"

data[, 291] <- as.character(data[, 291])
attributes(data)$variable.labels[291] <- "[Other] What are the main problems you face in accessing information related to \"UNHCR Registration\"? (tick all applicable options)"
names(data)[291] <- "Pb_aidregistration_other"

data[, 292] <- as.numeric(data[, 292])
attributes(data)$variable.labels[292] <- "For the \"issuance of MoI cards\" topic, Does your household experience problems accessing information?"
data[, 292] <- factor(data[, 292], levels=c(1,2),labels=c("Yes","No"))
names(data)[292] <- "Ac_ MoIcards"

data[, 293] <- as.numeric(data[, 293])
attributes(data)$variable.labels[293] <- "[I can not find the information] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 293] <- factor(data[, 293], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[293] <- "Pb_MoIcards_notfi"

data[, 294] <- as.numeric(data[, 294])
attributes(data)$variable.labels[294] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 294] <- factor(data[, 294], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[294] <- "Pb_MoIcards_notse"

data[, 295] <- as.numeric(data[, 295])
attributes(data)$variable.labels[295] <- "[Information is not available] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 295] <- factor(data[, 295], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[295] <- "Pb_MoIcards_notav"

data[, 296] <- as.numeric(data[, 296])
attributes(data)$variable.labels[296] <- "[Information is not translated in Arabic] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 296] <- factor(data[, 296], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[296] <- "Pb_MoIcards_notar"

data[, 297] <- as.numeric(data[, 297])
attributes(data)$variable.labels[297] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 297] <- factor(data[, 297], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[297] <- "Pb_MoIcards_restr"

data[, 298] <- as.numeric(data[, 298])
attributes(data)$variable.labels[298] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 298] <- factor(data[, 298], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[298] <- "Pb_MoIcards_needp"

data[, 299] <- as.numeric(data[, 299])
attributes(data)$variable.labels[299] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 299] <- factor(data[, 299], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[299] <- "Pb_MoIcards_notre"

data[, 300] <- as.numeric(data[, 300])
attributes(data)$variable.labels[300] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 300] <- factor(data[, 300], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[300] <- "Pb_MoIcards_infobusy"

data[, 301] <- as.numeric(data[, 301])
attributes(data)$variable.labels[301] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"issuance of MoI cards\"? (tick all applicable options)"
data[, 301] <- factor(data[, 301], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[301] <- "Pb_MoIcards_helpdesk"

data[, 302] <- as.numeric(data[, 302])
attributes(data)$variable.labels[302] <- "For the \"Information on missing family members\" topic, Does your household experience problems accessing information?"
data[, 302] <- factor(data[, 302], levels=c(1,2),labels=c("Yes","No"))
names(data)[302] <- "Ac_missingmember"

data[, 303] <- as.numeric(data[, 303])
attributes(data)$variable.labels[303] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 303] <- factor(data[, 303], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[303] <- "Pb_missingmember_notfi"

data[, 304] <- as.numeric(data[, 304])
attributes(data)$variable.labels[304] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 304] <- factor(data[, 304], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[304] <- "Pb_missingmember_notse"

data[, 305] <- as.numeric(data[, 305])
attributes(data)$variable.labels[305] <- "[Information is not available] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 305] <- factor(data[, 305], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[305] <- "Pb_missingmember_notav"

data[, 306] <- as.numeric(data[, 306])
attributes(data)$variable.labels[306] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 306] <- factor(data[, 306], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[306] <- "Pb_missingmember_notar"

data[, 307] <- as.numeric(data[, 307])
attributes(data)$variable.labels[307] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 307] <- factor(data[, 307], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[307] <- "Pb_missingmember_restr"

data[, 308] <- as.numeric(data[, 308])
attributes(data)$variable.labels[308] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 308] <- factor(data[, 308], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[308] <- "Pb_missingmember_needp"

data[, 309] <- as.numeric(data[, 309])
attributes(data)$variable.labels[309] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 309] <- factor(data[, 309], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[309] <- "Pb_missingmember_notre"

data[, 310] <- as.numeric(data[, 310])
attributes(data)$variable.labels[310] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 310] <- factor(data[, 310], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[310] <- "Pb_missingmember_infobusy"

data[, 311] <- as.numeric(data[, 311])
attributes(data)$variable.labels[311] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
data[, 311] <- factor(data[, 311], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[311] <- "Pb_missingmember_helpdesk"

data[, 312] <- as.numeric(data[, 312])
attributes(data)$variable.labels[312] <- "[Other] What are the main problems you face in accessing information related to \"Information on missing family members\"? (tick all applicable options)"
names(data)[312] <- "Pb_missingmember_other"

data[, 313] <- as.numeric(data[, 313])
attributes(data)$variable.labels[313] <- "For the \"Food assistance programmes\" topic, Does your household experience problems accessing information?"
data[, 313] <- factor(data[, 313], levels=c(1,2),labels=c("Yes","No"))
names(data)[313] <- "Ac_foodassist"

data[, 314] <- as.numeric(data[, 314])
attributes(data)$variable.labels[314] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 314] <- factor(data[, 314], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[314] <- "Pb_foodassist_notfi"

data[, 315] <- as.numeric(data[, 315])
attributes(data)$variable.labels[315] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 315] <- factor(data[, 315], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[315] <- "Pb_foodassist_notse"

data[, 316] <- as.numeric(data[, 316])
attributes(data)$variable.labels[316] <- "[Information is not available] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 316] <- factor(data[, 316], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[316] <- "Pb_foodassist_notav"

data[, 317] <- as.numeric(data[, 317])
attributes(data)$variable.labels[317] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 317] <- factor(data[, 317], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[317] <- "Pb_foodassist_notar"

data[, 318] <- as.numeric(data[, 318])
attributes(data)$variable.labels[318] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 318] <- factor(data[, 318], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[318] <- "Pb_foodassist_restr"

data[, 319] <- as.numeric(data[, 319])
attributes(data)$variable.labels[319] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 319] <- factor(data[, 319], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[319] <- "Pb_foodassist_needp"

data[, 320] <- as.numeric(data[, 320])
attributes(data)$variable.labels[320] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 320] <- factor(data[, 320], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[320] <- "Pb_foodassist_notre"

data[, 321] <- as.numeric(data[, 321])
attributes(data)$variable.labels[321] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 321] <- factor(data[, 321], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[321] <- "Pb_foodassist_infobusy"

data[, 322] <- as.numeric(data[, 322])
attributes(data)$variable.labels[322] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
data[, 322] <- factor(data[, 322], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[322] <- "Pb_foodassist_helpdesk"

data[, 323] <- as.character(data[, 323])
attributes(data)$variable.labels[323] <- "[Other] What are the main problems you face in accessing information related to \"Food assistance programmes\"?"
names(data)[323] <- "Pb_foodassist_other"

data[, 324] <- as.numeric(data[, 324])
attributes(data)$variable.labels[324] <- "For the \"WASH assistance \" topic, Does your household experience problems accessing information?"
data[, 324] <- factor(data[, 324], levels=c(1,2),labels=c("Yes","No"))
names(data)[324] <- "Ac_waterassist"

data[, 325] <- as.numeric(data[, 325])
attributes(data)$variable.labels[325] <- "[I can not find the information] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 325] <- factor(data[, 325], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[325] <- "Pb_waterassist_notfi"

data[, 326] <- as.numeric(data[, 326])
attributes(data)$variable.labels[326] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 326] <- factor(data[, 326], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[326] <- "Pb_waterassist_notse"

data[, 327] <- as.numeric(data[, 327])
attributes(data)$variable.labels[327] <- "[Information is not available] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 327] <- factor(data[, 327], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[327] <- "Pb_waterassist_notav"

data[, 328] <- as.numeric(data[, 328])
attributes(data)$variable.labels[328] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 328] <- factor(data[, 328], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[328] <- "Pb_waterassist_notar"

data[, 329] <- as.numeric(data[, 329])
attributes(data)$variable.labels[329] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 329] <- factor(data[, 329], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[329] <- "Pb_waterassist_restr"

data[, 330] <- as.numeric(data[, 330])
attributes(data)$variable.labels[330] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 330] <- factor(data[, 330], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[330] <- "Pb_waterassist_needp"

data[, 331] <- as.numeric(data[, 331])
attributes(data)$variable.labels[331] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 331] <- factor(data[, 331], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[331] <- "Pb_waterassist_notre"

data[, 332] <- as.numeric(data[, 332])
attributes(data)$variable.labels[332] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 332] <- factor(data[, 332], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[332] <- "Pb_waterassist_infobusy"

data[, 333] <- as.numeric(data[, 333])
attributes(data)$variable.labels[333] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
data[, 333] <- factor(data[, 333], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[333] <- "Pb_waterassist_helpdesk"

data[, 334] <- as.numeric(data[, 334])
attributes(data)$variable.labels[334] <- "[Other] What are the main problems you face in accessing information related to \"WASH assistance\"? (tick all applicable options)"
names(data)[334] <- "Pb_waterassist_other"

data[, 335] <- as.numeric(data[, 335])
attributes(data)$variable.labels[335] <- "For the \"Shelter maintenance programmes\" topic, Does your household experience problems accessing information?"
data[, 335] <- factor(data[, 335], levels=c(1,2),labels=c("Yes","No"))
names(data)[335] <- "Ac_shelter"

data[, 336] <- as.numeric(data[, 336])
attributes(data)$variable.labels[336] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 336] <- factor(data[, 336], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[336] <- "Pb_shelter_notfi"

data[, 337] <- as.numeric(data[, 337])
attributes(data)$variable.labels[337] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 337] <- factor(data[, 337], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[337] <- "Pb_shelter_notse"

data[, 338] <- as.numeric(data[, 338])
attributes(data)$variable.labels[338] <- "[Information is not available] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 338] <- factor(data[, 338], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[338] <- "Pb_shelter_notav"

data[, 339] <- as.numeric(data[, 339])
attributes(data)$variable.labels[339] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 339] <- factor(data[, 339], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[339] <- "Pb_shelter_notar"

data[, 340] <- as.numeric(data[, 340])
attributes(data)$variable.labels[340] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 340] <- factor(data[, 340], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[340] <- "Pb_shelter_restr"

data[, 341] <- as.numeric(data[, 341])
attributes(data)$variable.labels[341] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 341] <- factor(data[, 341], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[341] <- "Pb_shelter_needp"

data[, 342] <- as.numeric(data[, 342])
attributes(data)$variable.labels[342] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 342] <- factor(data[, 342], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[342] <- "Pb_shelter_notre"

data[, 343] <- as.numeric(data[, 343])
attributes(data)$variable.labels[343] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 343] <- factor(data[, 343], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[343] <- "Pb_shelter_infobusy"

data[, 344] <- as.numeric(data[, 344])
attributes(data)$variable.labels[344] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
data[, 344] <- factor(data[, 344], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[344] <- "Pb_shelter_helpdesk"

data[, 345] <- as.numeric(data[, 345])
attributes(data)$variable.labels[345] <- "[Other] What are the main problems you face in accessing information related to \"Shelter maintenance programmes\"? (tick all applicable options)"
names(data)[345] <- "Pb_shelter_other"

data[, 346] <- as.numeric(data[, 346])
attributes(data)$variable.labels[346] <- "For the \"winterization\" topic, Does your household experience problems accessing information?"
data[, 346] <- factor(data[, 346], levels=c(1,2),labels=c("Yes","No"))
names(data)[346] <- "Ac_winter"

data[, 347] <- as.numeric(data[, 347])
attributes(data)$variable.labels[347] <- "[I can not find the information] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 347] <- factor(data[, 347], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[347] <- "Pb_winter_notfi"

data[, 348] <- as.numeric(data[, 348])
attributes(data)$variable.labels[348] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 348] <- factor(data[, 348], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[348] <- "Pb_winter_notse"

data[, 349] <- as.numeric(data[, 349])
attributes(data)$variable.labels[349] <- "[Information is not available] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 349] <- factor(data[, 349], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[349] <- "Pb_winter_notav"

data[, 350] <- as.numeric(data[, 350])
attributes(data)$variable.labels[350] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 350] <- factor(data[, 350], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[350] <- "Pb_winter_notar"

data[, 351] <- as.numeric(data[, 351])
attributes(data)$variable.labels[351] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 351] <- factor(data[, 351], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[351] <- "Pb_winter_restr"

data[, 352] <- as.numeric(data[, 352])
attributes(data)$variable.labels[352] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 352] <- factor(data[, 352], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[352] <- "Pb_winter_needp"

data[, 353] <- as.numeric(data[, 353])
attributes(data)$variable.labels[353] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 353] <- factor(data[, 353], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[353] <- "Pb_winter_notre"

data[, 354] <- as.numeric(data[, 354])
attributes(data)$variable.labels[354] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 354] <- factor(data[, 354], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[354] <- "Pb_winter_infobusy"

data[, 355] <- as.numeric(data[, 355])
attributes(data)$variable.labels[355] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
data[, 355] <- factor(data[, 355], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[355] <- "Pb_winter_helpdesk"

data[, 356] <- as.numeric(data[, 356])
attributes(data)$variable.labels[356] <- "[Other] What are the main problems you face in accessing information related to \"winterization\"? (tick all applicable options)"
names(data)[356] <- "Pb_winter_other"

data[, 357] <- as.numeric(data[, 357])
attributes(data)$variable.labels[357] <- "For the \"Access to health services\" topic, Does your household experience problems accessing information?"
data[, 357] <- factor(data[, 357], levels=c(1,2),labels=c("Yes","No"))
names(data)[357] <- "Ac_health"

data[, 358] <- as.numeric(data[, 358])
attributes(data)$variable.labels[358] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 358] <- factor(data[, 358], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[358] <- "Pb_health_notfi"

data[, 359] <- as.numeric(data[, 359])
attributes(data)$variable.labels[359] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 359] <- factor(data[, 359], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[359] <- "Pb_health_notse"

data[, 360] <- as.numeric(data[, 360])
attributes(data)$variable.labels[360] <- "[Information is not available] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 360] <- factor(data[, 360], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[360] <- "Pb_health_notav"

data[, 361] <- as.numeric(data[, 361])
attributes(data)$variable.labels[361] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 361] <- factor(data[, 361], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[361] <- "Pb_health_notar"

data[, 362] <- as.numeric(data[, 362])
attributes(data)$variable.labels[362] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 362] <- factor(data[, 362], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[362] <- "Pb_health_restr"

data[, 363] <- as.numeric(data[, 363])
attributes(data)$variable.labels[363] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 363] <- factor(data[, 363], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[363] <- "Pb_health_needp"

data[, 364] <- as.numeric(data[, 364])
attributes(data)$variable.labels[364] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 364] <- factor(data[, 364], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[364] <- "Pb_health_notre"

data[, 365] <- as.numeric(data[, 365])
attributes(data)$variable.labels[365] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 365] <- factor(data[, 365], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[365] <- "Pb_health_infobusy"

data[, 366] <- as.numeric(data[, 366])
attributes(data)$variable.labels[366] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Access to health services\"?"
data[, 366] <- factor(data[, 366], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[366] <- "Pb_health_helpdesk"

data[, 367] <- as.character(data[, 367])
attributes(data)$variable.labels[367] <- "[Other] What are the main problems you face in accessing information related to \"Access to health services\"?"
names(data)[367] <- "Pb_health_other"

data[, 368] <- as.numeric(data[, 368])
attributes(data)$variable.labels[368] <- "For the \"official country of origin documents\" topic, Does your household experience problems accessing information?"
data[, 368] <- factor(data[, 368], levels=c(1,2),labels=c("Yes","No"))
names(data)[368] <- "Ac_document"

data[, 369] <- as.numeric(data[, 369])
attributes(data)$variable.labels[369] <- "[I can not find the information] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 369] <- factor(data[, 369], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[369] <- "Pb_document_notfi"

data[, 370] <- as.numeric(data[, 370])
attributes(data)$variable.labels[370] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 370] <- factor(data[, 370], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[370] <- "Pb_document_notse"

data[, 371] <- as.numeric(data[, 371])
attributes(data)$variable.labels[371] <- "[Information is not available] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 371] <- factor(data[, 371], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[371] <- "Pb_document_notav"

data[, 372] <- as.numeric(data[, 372])
attributes(data)$variable.labels[372] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 372] <- factor(data[, 372], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[372] <- "Pb_document_notar"

data[, 373] <- as.numeric(data[, 373])
attributes(data)$variable.labels[373] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 373] <- factor(data[, 373], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[373] <- "Pb_document_restr"

data[, 374] <- as.numeric(data[, 374])
attributes(data)$variable.labels[374] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 374] <- factor(data[, 374], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[374] <- "Pb_document_needp"

data[, 375] <- as.numeric(data[, 375])
attributes(data)$variable.labels[375] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 375] <- factor(data[, 375], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[375] <- "Pb_document_notre"

data[, 376] <- as.numeric(data[, 376])
attributes(data)$variable.labels[376] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 376] <- factor(data[, 376], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[376] <- "Pb_document_infobusy"

data[, 377] <- as.numeric(data[, 377])
attributes(data)$variable.labels[377] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
data[, 377] <- factor(data[, 377], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[377] <- "Pb_document_helpdesk"

data[, 378] <- as.character(data[, 378])
attributes(data)$variable.labels[378] <- "[Other] What are the main problems you face in accessing information related to \"official country of origin documents\"? (tick all applicable options)"
names(data)[378] <- "Pb_document_other"

data[, 379] <- as.numeric(data[, 379])
attributes(data)$variable.labels[379] <- "For the \"contact aid providers\" topic, Does your household experience problems accessing information?"
data[, 379] <- factor(data[, 379], levels=c(1,2),labels=c("Yes","No"))
names(data)[379] <- "Ac_aidcontact"

data[, 380] <- as.numeric(data[, 380])
attributes(data)$variable.labels[380] <- "[I can not find the information] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 380] <- factor(data[, 380], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[380] <- "Pb_aidcontact_notfi"

data[, 381] <- as.numeric(data[, 381])
attributes(data)$variable.labels[381] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 381] <- factor(data[, 381], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[381] <- "Pb_aidcontact_notse"

data[, 382] <- as.numeric(data[, 382])
attributes(data)$variable.labels[382] <- "[Information is not available] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 382] <- factor(data[, 382], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[382] <- "Pb_aidcontact_notav"

data[, 383] <- as.numeric(data[, 383])
attributes(data)$variable.labels[383] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 383] <- factor(data[, 383], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[383] <- "Pb_aidcontact_notar"

data[, 384] <- as.numeric(data[, 384])
attributes(data)$variable.labels[384] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 384] <- factor(data[, 384], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[384] <- "Pb_aidcontact_restr"

data[, 385] <- as.numeric(data[, 385])
attributes(data)$variable.labels[385] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 385] <- factor(data[, 385], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[385] <- "Pb_aidcontact_needp"

data[, 386] <- as.numeric(data[, 386])
attributes(data)$variable.labels[386] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 386] <- factor(data[, 386], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[386] <- "Pb_aidcontact_notre"

data[, 387] <- as.numeric(data[, 387])
attributes(data)$variable.labels[387] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 387] <- factor(data[, 387], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[387] <- "Pb_aidcontact_infobusy"

data[, 388] <- as.numeric(data[, 388])
attributes(data)$variable.labels[388] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
data[, 388] <- factor(data[, 388], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[388] <- "Pb_aidcontact_helpdesk"

data[, 389] <- as.character(data[, 389])
attributes(data)$variable.labels[389] <- "[Other] What are the main problems you face in accessing information related to \"contact aid providers\"? (tick all applicable options)"
names(data)[389] <- "Pb_aidcontact_other"

data[, 390] <- as.numeric(data[, 390])
attributes(data)$variable.labels[390] <- "For the \"income-generating activities\" topic, Does your household experience problems accessing information?"
data[, 390] <- factor(data[, 390], levels=c(1,2),labels=c("Yes","No"))
names(data)[390] <- "Ac_income"

data[, 391] <- as.numeric(data[, 391])
attributes(data)$variable.labels[391] <- "[I can not find the information] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 391] <- factor(data[, 391], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[391] <- "Pb_income_notfi"

data[, 392] <- as.numeric(data[, 392])
attributes(data)$variable.labels[392] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 392] <- factor(data[, 392], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[392] <- "Pb_income_notse"

data[, 393] <- as.numeric(data[, 393])
attributes(data)$variable.labels[393] <- "[Information is not available] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 393] <- factor(data[, 393], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[393] <- "Pb_income_notav"

data[, 394] <- as.numeric(data[, 394])
attributes(data)$variable.labels[394] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 394] <- factor(data[, 394], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[394] <- "Pb_income_notar"

data[, 395] <- as.numeric(data[, 395])
attributes(data)$variable.labels[395] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 395] <- factor(data[, 395], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[395] <- "Pb_income_restr"

data[, 396] <- as.numeric(data[, 396])
attributes(data)$variable.labels[396] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 396] <- factor(data[, 396], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[396] <- "Pb_income_needp"

data[, 397] <- as.numeric(data[, 397])
attributes(data)$variable.labels[397] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 397] <- factor(data[, 397], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[397] <- "Pb_income_notre"

data[, 398] <- as.numeric(data[, 398])
attributes(data)$variable.labels[398] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 398] <- factor(data[, 398], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[398] <- "Pb_income_infobusy"

data[, 399] <- as.numeric(data[, 399])
attributes(data)$variable.labels[399] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
data[, 399] <- factor(data[, 399], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[399] <- "Pb_income_helpdesk"

data[, 400] <- as.character(data[, 400])
attributes(data)$variable.labels[400] <- "[Other] What are the main problems you face in accessing information related to \"income-generating activities\"? (tick all applicable options)"
names(data)[400] <- "Pb_income_other"

data[, 401] <- as.numeric(data[, 401])
attributes(data)$variable.labels[401] <- "For the \"Communication with family members outside of the camp\" topic, Does your household experience problems accessing information?"
data[, 401] <- factor(data[, 401], levels=c(1,2),labels=c("Yes","No"))
names(data)[401] <- "Ac_membercomm"

data[, 402] <- as.numeric(data[, 402])
attributes(data)$variable.labels[402] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 402] <- factor(data[, 402], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[402] <- "Pb_membercomm_notfi"

data[, 403] <- as.numeric(data[, 403])
attributes(data)$variable.labels[403] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 403] <- factor(data[, 403], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[403] <- "Pb_membercomm_notse"

data[, 404] <- as.numeric(data[, 404])
attributes(data)$variable.labels[404] <- "[Information is not available] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 404] <- factor(data[, 404], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[404] <- "Pb_membercomm_notav"

data[, 405] <- as.numeric(data[, 405])
attributes(data)$variable.labels[405] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 405] <- factor(data[, 405], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[405] <- "Pb_membercomm_notar"

data[, 406] <- as.numeric(data[, 406])
attributes(data)$variable.labels[406] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 406] <- factor(data[, 406], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[406] <- "Pb_membercomm_restr"

data[, 407] <- as.numeric(data[, 407])
attributes(data)$variable.labels[407] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 407] <- factor(data[, 407], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[407] <- "Pb_membercomm_needp"

data[, 408] <- as.numeric(data[, 408])
attributes(data)$variable.labels[408] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 408] <- factor(data[, 408], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[408] <- "Pb_membercomm_notre"

data[, 409] <- as.numeric(data[, 409])
attributes(data)$variable.labels[409] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 409] <- factor(data[, 409], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[409] <- "Pb_membercomm_infobusyotre"

data[, 410] <- as.numeric(data[, 410])
attributes(data)$variable.labels[410] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
data[, 410] <- factor(data[, 410], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[410] <- "Pb_membercomm_helpdesk"

data[, 411] <- as.numeric(data[, 411])
attributes(data)$variable.labels[411] <- "[Other] What are the main problems you face in accessing information related to \"Communication with family members outside of the camp\"? (tick all applicable options)"
names(data)[411] <- "Pb_membercomm_other"

data[, 412] <- as.numeric(data[, 412])
attributes(data)$variable.labels[412] <- "For the \"Services for children\" topic, Does your household experience problems accessing information?"
data[, 412] <- factor(data[, 412], levels=c(1,2),labels=c("Yes","No"))
names(data)[412] <- "Ac_servicesforyourch"

data[, 413] <- as.numeric(data[, 413])
attributes(data)$variable.labels[413] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 413] <- factor(data[, 413], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[413] <- "Pb_servicesforyourch_notfi"

data[, 414] <- as.numeric(data[, 414])
attributes(data)$variable.labels[414] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 414] <- factor(data[, 414], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[414] <- "Pb_servicesforyourch_notse"

data[, 415] <- as.numeric(data[, 415])
attributes(data)$variable.labels[415] <- "[Information is not available] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 415] <- factor(data[, 415], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[415] <- "Pb_servicesforyourch_notav"

data[, 416] <- as.numeric(data[, 416])
attributes(data)$variable.labels[416] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 416] <- factor(data[, 416], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[416] <- "Pb_servicesforyourch_notar"

data[, 417] <- as.numeric(data[, 417])
attributes(data)$variable.labels[417] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 417] <- factor(data[, 417], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[417] <- "Pb_servicesforyourch_restr"

data[, 418] <- as.numeric(data[, 418])
attributes(data)$variable.labels[418] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 418] <- factor(data[, 418], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[418] <- "Pb_servicesforyourch_needp"

data[, 419] <- as.numeric(data[, 419])
attributes(data)$variable.labels[419] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 419] <- factor(data[, 419], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[419] <- "Pb_servicesforyourch_notre"

data[, 420] <- as.numeric(data[, 420])
attributes(data)$variable.labels[420] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 420] <- factor(data[, 420], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[420] <- "Pb_servicesforyourch_infobusy"

data[, 421] <- as.numeric(data[, 421])
attributes(data)$variable.labels[421] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
data[, 421] <- factor(data[, 421], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[421] <- "Pb_servicesforyourch_helpdesk"

data[, 422] <- as.character(data[, 422])
attributes(data)$variable.labels[422] <- "[Other] What are the main problems you face in accessing information related to \"Services for your child\"? (tick all applicable options)"
names(data)[422] <- "Pb_servicesforyourch_other"

data[, 423] <- as.numeric(data[, 423])
attributes(data)$variable.labels[423] <- "For the \"Insecurity or crime\" topic, Does your household experience problems accessing information?"
data[, 423] <- factor(data[, 423], levels=c(1,2),labels=c("Yes","No"))
names(data)[423] <- "Ac_insecurity"

data[, 424] <- as.numeric(data[, 424])
attributes(data)$variable.labels[424] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 424] <- factor(data[, 424], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[424] <- "Pb_insecurity_notfi"

data[, 425] <- as.numeric(data[, 425])
attributes(data)$variable.labels[425] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 425] <- factor(data[, 425], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[425] <- "Pb_insecurity_notse"

data[, 426] <- as.numeric(data[, 426])
attributes(data)$variable.labels[426] <- "[Information is not available] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 426] <- factor(data[, 426], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[426] <- "Pb_insecurity_notav"

data[, 427] <- as.numeric(data[, 427])
attributes(data)$variable.labels[427] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 427] <- factor(data[, 427], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[427] <- "Pb_insecurity_notar"

data[, 428] <- as.numeric(data[, 428])
attributes(data)$variable.labels[428] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 428] <- factor(data[, 428], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[428] <- "Pb_insecurity_restr"

data[, 429] <- as.numeric(data[, 429])
attributes(data)$variable.labels[429] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 429] <- factor(data[, 429], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[429] <- "Pb_insecurity_needp"

data[, 430] <- as.numeric(data[, 430])
attributes(data)$variable.labels[430] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 430] <- factor(data[, 430], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[430] <- "Pb_insecurity_notre"

data[, 431] <- as.numeric(data[, 431])
attributes(data)$variable.labels[431] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 431] <- factor(data[, 431], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[431] <- "Pb_insecurity_infobusy"

data[, 432] <- as.numeric(data[, 432])
attributes(data)$variable.labels[432] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
data[, 432] <- factor(data[, 432], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[432] <- "Pb_insecurity_helpdesk"

data[, 433] <- as.numeric(data[, 433])
attributes(data)$variable.labels[433] <- "[Other] What are the main problems you face in accessing information related to \"Insecurity or crime\"? (tick all applicable options)"
names(data)[433] <- "Pb_insecurity_other"

data[, 434] <- as.numeric(data[, 434])
attributes(data)$variable.labels[434] <- "For the \"Voluntary Returns\" topic, Does your household experience problems accessing information?"
data[, 434] <- factor(data[, 434], levels=c(1,2),labels=c("Yes","No"))
names(data)[434] <- "Ac_return"

data[, 435] <- as.numeric(data[, 435])
attributes(data)$variable.labels[435] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 435] <- factor(data[, 435], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[435] <- "Pb_return_notfi"

data[, 436] <- as.numeric(data[, 436])
attributes(data)$variable.labels[436] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 436] <- factor(data[, 436], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[436] <- "Pb_return_notse"

data[, 437] <- as.numeric(data[, 437])
attributes(data)$variable.labels[437] <- "[Information is not available] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 437] <- factor(data[, 437], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[437] <- "Pb_return_notav"

data[, 438] <- as.numeric(data[, 438])
attributes(data)$variable.labels[438] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 438] <- factor(data[, 438], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[438] <- "Pb_return_notar"

data[, 439] <- as.numeric(data[, 439])
attributes(data)$variable.labels[439] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 439] <- factor(data[, 439], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[439] <- "Pb_return_restr"

data[, 440] <- as.numeric(data[, 440])
attributes(data)$variable.labels[440] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 440] <- factor(data[, 440], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[440] <- "Pb_return_needp"

data[, 441] <- as.numeric(data[, 441])
attributes(data)$variable.labels[441] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 441] <- factor(data[, 441], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[441] <- "Pb_return_notre"

data[, 442] <- as.numeric(data[, 442])
attributes(data)$variable.labels[442] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 442] <- factor(data[, 442], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[442] <- "Pb_return_infobusy"

data[, 443] <- as.numeric(data[, 443])
attributes(data)$variable.labels[443] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
data[, 443] <- factor(data[, 443], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[443] <- "Pb_return_helpdesk"

data[, 444] <- as.numeric(data[, 444])
attributes(data)$variable.labels[444] <- "[Other] What are the main problems you face in accessing information related to \"Voluntary Returns\"? (tick all applicable options)"
names(data)[444] <- "Pb_return_other"

data[, 445] <- as.numeric(data[, 445])
attributes(data)$variable.labels[445] <- "For the \"How to leave the camp\" topic, Does your household experience problems accessing information?"
data[, 445] <- factor(data[, 445], levels=c(1,2),labels=c("Yes","No"))
names(data)[445] <- "Ac_ leavecamp"

data[, 446] <- as.numeric(data[, 446])
attributes(data)$variable.labels[446] <- "[I can not find the information] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 446] <- factor(data[, 446], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[446] <- "Pb_leavecamp_notfi"

data[, 447] <- as.numeric(data[, 447])
attributes(data)$variable.labels[447] <- "[I do not know where to search] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 447] <- factor(data[, 447], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[447] <- "Pb_leavecamp_notse"

data[, 448] <- as.numeric(data[, 448])
attributes(data)$variable.labels[448] <- "[Information is not available] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 448] <- factor(data[, 448], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[448] <- "Pb_leavecamp_notav"

data[, 449] <- as.numeric(data[, 449])
attributes(data)$variable.labels[449] <- "[Information is not translated in Arabic] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 449] <- factor(data[, 449], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[449] <- "Pb_leavecamp_notar"

data[, 450] <- as.numeric(data[, 450])
attributes(data)$variable.labels[450] <- "[Access to information is restricted] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 450] <- factor(data[, 450], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[450] <- "Pb_leavecamp_restr"

data[, 451] <- as.numeric(data[, 451])
attributes(data)$variable.labels[451] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 451] <- factor(data[, 451], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[451] <- "Pb_leavecamp_needp"

data[, 452] <- as.numeric(data[, 452])
attributes(data)$variable.labels[452] <- "[I requested the information but never received it] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 452] <- factor(data[, 452], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[452] <- "Pb_leavecamp_notre"

data[, 453] <- as.numeric(data[, 453])
attributes(data)$variable.labels[453] <- "[I tried to call the info line but it was busy] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 453] <- factor(data[, 453], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[453] <- "Pb_leavecamp_infobusy"

data[, 454] <- as.numeric(data[, 454])
attributes(data)$variable.labels[454] <- "[I approached the help desk but it was too crowded and I could not wait] 
	What are the main problems you face in accessing information related to \"How to leave the camp\"? (tick all applicable options)"
data[, 454] <- factor(data[, 454], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[454] <- "Pb_leavecamp_helpdesk"

data[, 455] <- as.numeric(data[, 455])
attributes(data)$variable.labels[455] <- "For the \"Civil Status Document\" topic, Does your household experience problems accessing information?"
data[, 455] <- factor(data[, 455], levels=c(1,2),labels=c("Yes","No"))
names(data)[455] <- "Ac_civil"

data[, 456] <- as.numeric(data[, 456])
attributes(data)$variable.labels[456] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 456] <- factor(data[, 456], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[456] <- "Pb_civil_notfi"

data[, 457] <- as.numeric(data[, 457])
attributes(data)$variable.labels[457] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 457] <- factor(data[, 457], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[457] <- "Pb_civil_notse"

data[, 458] <- as.numeric(data[, 458])
attributes(data)$variable.labels[458] <- "[Information is not available] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 458] <- factor(data[, 458], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[458] <- "Pb_civil_notav"

data[, 459] <- as.numeric(data[, 459])
attributes(data)$variable.labels[459] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 459] <- factor(data[, 459], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[459] <- "Pb_civil_notar"

data[, 460] <- as.numeric(data[, 460])
attributes(data)$variable.labels[460] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 460] <- factor(data[, 460], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[460] <- "Pb_civil_restr"

data[, 461] <- as.numeric(data[, 461])
attributes(data)$variable.labels[461] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 461] <- factor(data[, 461], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[461] <- "Pb_civil_needp"

data[, 462] <- as.numeric(data[, 462])
attributes(data)$variable.labels[462] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 462] <- factor(data[, 462], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[462] <- "Pb_civil_notre"

data[, 463] <- as.numeric(data[, 463])
attributes(data)$variable.labels[463] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 463] <- factor(data[, 463], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[463] <- "Pb_civil_infobusy"

data[, 464] <- as.numeric(data[, 464])
attributes(data)$variable.labels[464] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
data[, 464] <- factor(data[, 464], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[464] <- "Pb_civil_helpdesk"

data[, 465] <- as.numeric(data[, 465])
attributes(data)$variable.labels[465] <- "[Other] What are the main problems you face in accessing information related to \"Civil Status documents\"? (tick all applicable options)"
names(data)[465] <- "Pb_civil_other"

data[, 466] <- as.numeric(data[, 466])
attributes(data)$variable.labels[466] <- "For the \"Services for persons with disabilities\" topic, Does your household experience problems accessing information?"
data[, 466] <- factor(data[, 466], levels=c(1,2),labels=c("Yes","No"))
names(data)[466] <- "Ac_servicesdisabilit"

data[, 467] <- as.numeric(data[, 467])
attributes(data)$variable.labels[467] <- "[I can not find the information] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 467] <- factor(data[, 467], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[467] <- "Pb_servicesdisabilit_notfi"

data[, 468] <- as.numeric(data[, 468])
attributes(data)$variable.labels[468] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 468] <- factor(data[, 468], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[468] <- "Pb_servicesdisabilit_notse"

data[, 469] <- as.numeric(data[, 469])
attributes(data)$variable.labels[469] <- "[Information is not available] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 469] <- factor(data[, 469], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[469] <- "Pb_servicesdisabilit_notav"

data[, 470] <- as.numeric(data[, 470])
attributes(data)$variable.labels[470] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 470] <- factor(data[, 470], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[470] <- "Pb_servicesdisabilit_notar"

data[, 471] <- as.numeric(data[, 471])
attributes(data)$variable.labels[471] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 471] <- factor(data[, 471], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[471] <- "Pb_servicesdisabilit_restr"

data[, 472] <- as.numeric(data[, 472])
attributes(data)$variable.labels[472] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 472] <- factor(data[, 472], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[472] <- "Pb_servicesdisabilit_needp"

data[, 473] <- as.numeric(data[, 473])
attributes(data)$variable.labels[473] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 473] <- factor(data[, 473], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[473] <- "Pb_servicesdisabilit_notre"

data[, 474] <- as.numeric(data[, 474])
attributes(data)$variable.labels[474] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 474] <- factor(data[, 474], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[474] <- "Pb_servicesdisabilit_infobusy"

data[, 475] <- as.numeric(data[, 475])
attributes(data)$variable.labels[475] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
data[, 475] <- factor(data[, 475], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[475] <- "Pb_servicesdisabilit_helpdesk"

data[, 476] <- as.numeric(data[, 476])
attributes(data)$variable.labels[476] <- "[Other] What are the main problems you face in accessing information related to \"Services for persons with disabilities\"? (tick all applicable options)"
names(data)[476] <- "Pb_servicesdisabilit_other"

data[, 477] <- as.numeric(data[, 477])
attributes(data)$variable.labels[477] <- "For the \"news on your country of origin\" topic, Does your household experience problems accessing information?"
data[, 477] <- factor(data[, 477], levels=c(1,2),labels=c("Yes","No"))
names(data)[477] <- "Ac_news"

data[, 478] <- as.numeric(data[, 478])
attributes(data)$variable.labels[478] <- "[I can not find the information] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 478] <- factor(data[, 478], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[478] <- "Pb_news_notfi"

data[, 479] <- as.numeric(data[, 479])
attributes(data)$variable.labels[479] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 479] <- factor(data[, 479], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[479] <- "Pb_news_notse"

data[, 480] <- as.numeric(data[, 480])
attributes(data)$variable.labels[480] <- "[Information is not available] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 480] <- factor(data[, 480], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[480] <- "Pb_news_notav"

data[, 481] <- as.numeric(data[, 481])
attributes(data)$variable.labels[481] <- "[Information is not translated into Arabic] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 481] <- factor(data[, 481], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[481] <- "Pb_news_notar"

data[, 482] <- as.numeric(data[, 482])
attributes(data)$variable.labels[482] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 482] <- factor(data[, 482], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[482] <- "Pb_news_restr"

data[, 483] <- as.numeric(data[, 483])
attributes(data)$variable.labels[483] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 483] <- factor(data[, 483], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[483] <- "Pb_news_needp"

data[, 484] <- as.numeric(data[, 484])
attributes(data)$variable.labels[484] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 484] <- factor(data[, 484], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[484] <- "Pb_news_notre"

data[, 485] <- as.numeric(data[, 485])
attributes(data)$variable.labels[485] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 485] <- factor(data[, 485], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[485] <- "Pb_news_infobusy"

data[, 486] <- as.numeric(data[, 486])
attributes(data)$variable.labels[486] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"news on your country of origin\"? (tick all applicable options)"
data[, 486] <- factor(data[, 486], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[486] <- "Pb_news_helpdesk"

data[, 487] <- as.numeric(data[, 487])
attributes(data)$variable.labels[487] <- "For the \"How to obtain a work permit\" topic, Dos your household experience problems accessing information?"
data[, 487] <- factor(data[, 487], levels=c(1,2),labels=c("Yes","No"))
names(data)[487] <- "Ac_work"

data[, 488] <- as.numeric(data[, 488])
attributes(data)$variable.labels[488] <- "[I can not find the information] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 488] <- factor(data[, 488], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[488] <- "Pb_work_notfi"

data[, 489] <- as.numeric(data[, 489])
attributes(data)$variable.labels[489] <- "[I do not know where to search] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 489] <- factor(data[, 489], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[489] <- "Pb_work_notse"

data[, 490] <- as.numeric(data[, 490])
attributes(data)$variable.labels[490] <- "[Information is not available] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 490] <- factor(data[, 490], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[490] <- "Pb_work_notav"

data[, 491] <- as.numeric(data[, 491])
attributes(data)$variable.labels[491] <- "[Information is not translated into Arabic] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 491] <- factor(data[, 491], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[491] <- "Pb_work_notar"

data[, 492] <- as.numeric(data[, 492])
attributes(data)$variable.labels[492] <- "[Access to information is restricted] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 492] <- factor(data[, 492], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[492] <- "Pb_work_restr"

data[, 493] <- as.numeric(data[, 493])
attributes(data)$variable.labels[493] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 493] <- factor(data[, 493], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[493] <- "Pb_work_needp"

data[, 494] <- as.numeric(data[, 494])
attributes(data)$variable.labels[494] <- "[I requested the information but never received it] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 494] <- factor(data[, 494], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[494] <- "Pb_work_notre"

data[, 495] <- as.numeric(data[, 495])
attributes(data)$variable.labels[495] <- "[I tried to call the info line but it was busy] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 495] <- factor(data[, 495], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[495] <- "Pb_work_infobusy"

data[, 496] <- as.numeric(data[, 496])
attributes(data)$variable.labels[496] <- "[I approached the help desk but it was too crowded and I could not wait] 
	What are the main problems you face in accessing information related to \"how to obtain a work permit\"? (tick all applicable options)

	 "
data[, 496] <- factor(data[, 496], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[496] <- "Pb_work_helpdesk"

data[, 497] <- as.numeric(data[, 497])
attributes(data)$variable.labels[497] <- "For the \'Services on cash assistance\' topic, does your household experience problems accessing information?"
data[, 497] <- factor(data[, 497], levels=c(1,2),labels=c("Yes","No"))
names(data)[497] <- "Ac_cashassistance"

data[, 498] <- as.numeric(data[, 498])
attributes(data)$variable.labels[498] <- "[I can not find the information] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 498] <- factor(data[, 498], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[498] <- "Pb_cashassistance_notfi"

data[, 499] <- as.numeric(data[, 499])
attributes(data)$variable.labels[499] <- "[I do not know where to search] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 499] <- factor(data[, 499], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[499] <- "Pb_cashassistance_notse"

data[, 500] <- as.numeric(data[, 500])
attributes(data)$variable.labels[500] <- "[Information is not available] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 500] <- factor(data[, 500], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[500] <- "Pb_cashassistance_notav"

data[, 501] <- as.numeric(data[, 501])
attributes(data)$variable.labels[501] <- "[Information is not translated in Arabic] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 501] <- factor(data[, 501], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[501] <- "Pb_cashassistance_notar"

data[, 502] <- as.numeric(data[, 502])
attributes(data)$variable.labels[502] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 502] <- factor(data[, 502], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[502] <- "Pb_cashassistance_restr"

data[, 503] <- as.numeric(data[, 503])
attributes(data)$variable.labels[503] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 503] <- factor(data[, 503], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[503] <- "Pb_cashassistance_needp"

data[, 504] <- as.numeric(data[, 504])
attributes(data)$variable.labels[504] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 504] <- factor(data[, 504], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[504] <- "Pb_cashassistance_notre"

data[, 505] <- as.numeric(data[, 505])
attributes(data)$variable.labels[505] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 505] <- factor(data[, 505], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[505] <- "Pb_cashassistance_infobusy"

data[, 506] <- as.numeric(data[, 506])
attributes(data)$variable.labels[506] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \'services on cash assistance\'? (tick all applicable options)"
data[, 506] <- factor(data[, 506], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[506] <- "Pb_cashassistance_helpdesk"

data[, 507] <- as.numeric(data[, 507])
attributes(data)$variable.labels[507] <- "For the \"resettlement\" topic, Does your household experience problems accessing information?"
data[, 507] <- factor(data[, 507], levels=c(1,2),labels=c("Yes","No"))
names(data)[507] <- "Ac_Resettlement"

data[, 508] <- as.numeric(data[, 508])
attributes(data)$variable.labels[508] <- "[I can not find the information] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 508] <- factor(data[, 508], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[508] <- "Pb_resettlement_notfi"

data[, 509] <- as.numeric(data[, 509])
attributes(data)$variable.labels[509] <- "[I do not know where to search] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 509] <- factor(data[, 509], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[509] <- "Pb_resettlement_notse"

data[, 510] <- as.numeric(data[, 510])
attributes(data)$variable.labels[510] <- "[Information is not available] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 510] <- factor(data[, 510], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[510] <- "Pb_resettlement_notav"

data[, 511] <- as.numeric(data[, 511])
attributes(data)$variable.labels[511] <- "[Information is not translated in Arabic] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 511] <- factor(data[, 511], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[511] <- "Pb_resettlement_notar"

data[, 512] <- as.numeric(data[, 512])
attributes(data)$variable.labels[512] <- "[Access to information is restricted] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 512] <- factor(data[, 512], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[512] <- "Pb_resettlement_restr"

data[, 513] <- as.numeric(data[, 513])
attributes(data)$variable.labels[513] <- "[I need to pay to access the internet in order to get information, and I lack the money to do so] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 513] <- factor(data[, 513], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[513] <- "Pb_resettlement_needp"

data[, 514] <- as.numeric(data[, 514])
attributes(data)$variable.labels[514] <- "[I requested the information but never received it] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 514] <- factor(data[, 514], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[514] <- "Pb_resettlement_notre"

data[, 515] <- as.numeric(data[, 515])
attributes(data)$variable.labels[515] <- "[I tried to call the info line but it was busy] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 515] <- factor(data[, 515], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[515] <- "Pb_resettlement_infobusy"

data[, 516] <- as.numeric(data[, 516])
attributes(data)$variable.labels[516] <- "[I approached the help desk but it was too crowded and I could not wait] What are the main problems you face in accessing information related to \"resettlement\"?"
data[, 516] <- factor(data[, 516], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[516] <- "Pb_resettlement_helpdesk"

data[, 517] <- as.numeric(data[, 517])
attributes(data)$variable.labels[517] <- "[Television] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 517] <- factor(data[, 517], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[517] <- "InfoChannel_television"

data[, 518] <- as.numeric(data[, 518])
attributes(data)$variable.labels[518] <- "[Mobile] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 518] <- factor(data[, 518], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[518] <- "InfoChannel_mobile"

data[, 519] <- as.numeric(data[, 519])
attributes(data)$variable.labels[519] <- "[Internet (news)] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 519] <- factor(data[, 519], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[519] <- "InfoChannel_internet"

data[, 520] <- as.numeric(data[, 520])
attributes(data)$variable.labels[520] <- "[Facebook] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 520] <- factor(data[, 520], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[520] <- "InfoChannel_facebook"

data[, 521] <- as.numeric(data[, 521])
attributes(data)$variable.labels[521] <- "[Twitter] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 521] <- factor(data[, 521], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[521] <- "InfoChannel_twitter"

data[, 522] <- as.numeric(data[, 522])
attributes(data)$variable.labels[522] <- "[Notice Board or Poster] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 522] <- factor(data[, 522], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[522] <- "InfoChannel_notice"

data[, 523] <- as.numeric(data[, 523])
attributes(data)$variable.labels[523] <- "[Newspapers or Magazines] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 523] <- factor(data[, 523], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[523] <- "InfoChannel_newspaper"

data[, 524] <- as.numeric(data[, 524])
attributes(data)$variable.labels[524] <- "[Leaflets] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 524] <- factor(data[, 524], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[524] <- "InfoChannel_leaflet"

data[, 525] <- as.numeric(data[, 525])
attributes(data)$variable.labels[525] <- "[Radio] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 525] <- factor(data[, 525], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[525] <- "InfoChannel_radio"

data[, 526] <- as.numeric(data[, 526])
attributes(data)$variable.labels[526] <- "[Friends and Family] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 526] <- factor(data[, 526], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[526] <- "InfoChannel_friends"

data[, 527] <- as.numeric(data[, 527])
attributes(data)$variable.labels[527] <- "[Community Leaders] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 527] <- factor(data[, 527], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[527] <- "InfoChannel_community"

data[, 528] <- as.numeric(data[, 528])
attributes(data)$variable.labels[528] <- "[Religious Institutions (Mosque, Church etc.)] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 528] <- factor(data[, 528], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[528] <- "InfoChannel_religious"

data[, 529] <- as.numeric(data[, 529])
attributes(data)$variable.labels[529] <- "[Jordanian Government Officials] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 529] <- factor(data[, 529], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[529] <- "InfoChannel_official"

data[, 530] <- as.numeric(data[, 530])
attributes(data)$variable.labels[530] <- "[UNHCR ] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 530] <- factor(data[, 530], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[530] <- "InfoChannel_unstaff"

data[, 531] <- as.numeric(data[, 531])
attributes(data)$variable.labels[531] <- "[Other Humanitarian Workers/NGOs/CBOs] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 531] <- factor(data[, 531], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[531] <- "InfoChannel_NGO"

data[, 532] <- as.numeric(data[, 532])
attributes(data)$variable.labels[532] <- "[Health Centres, Schools, Community Centres] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 532] <- factor(data[, 532], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[532] <- "InfoChannel_Centres"

data[, 533] <- as.numeric(data[, 533])
attributes(data)$variable.labels[533] <- "[Short film/video clip] What would be your preferred communication channel/media (convenient and accessible)?"
data[, 533] <- factor(data[, 533], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[533] <- "InfoChannel_Film"

data[, 534] <- as.character(data[, 534])
attributes(data)$variable.labels[534] <- "[Other] What would be your preferred communication channel/media (convenient and accessible)?"
names(data)[534] <- "InfoChannel_other"

data[, 535] <- as.character(data[, 535])
attributes(data)$variable.labels[535] <- "Are you able to ask questions or raise concerns or complaints with other aid organisations about your needs? (tick one option)"
data[, 535] <- factor(data[, 535], levels=c("frequ","somet","rarel","nonee","dontk"),labels=c("Yes, frequently","Yes, but only sometimes","Rarely","No, never needed it","No, I do not know how to do it"))
names(data)[535] <- "Complaint"

data[, 536] <- as.numeric(data[, 536])
attributes(data)$variable.labels[536] <- "[Cash assistance] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 536] <- factor(data[, 536], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[536] <- "ComplaintMecanism_cashassistance"

data[, 537] <- as.numeric(data[, 537])
attributes(data)$variable.labels[537] <- "[Health services] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 537] <- factor(data[, 537], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[537] <- "ComplaintMecanism_healthservices"

data[, 538] <- as.numeric(data[, 538])
attributes(data)$variable.labels[538] <- "[Education services] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 538] <- factor(data[, 538], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[538] <- "ComplaintMecanism_educationservices"

data[, 539] <- as.numeric(data[, 539])
attributes(data)$variable.labels[539] <- "[Disability services] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 539] <- factor(data[, 539], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[539] <- "ComplaintMecanism_disabilityservices"

data[, 540] <- as.numeric(data[, 540])
attributes(data)$variable.labels[540] <- "[Shelter problems] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 540] <- factor(data[, 540], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[540] <- "ComplaintMecanism_shelterproblems"

data[, 541] <- as.numeric(data[, 541])
attributes(data)$variable.labels[541] <- "[Risk of eviction] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 541] <- factor(data[, 541], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[541] <- "ComplaintMecanism_riskeviction"

data[, 542] <- as.numeric(data[, 542])
attributes(data)$variable.labels[542] <- "[Registration/ renewal procedures] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 542] <- factor(data[, 542], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[542] <- "ComplaintMecanism_registrationrenewal"

data[, 543] <- as.numeric(data[, 543])
attributes(data)$variable.labels[543] <- "[Retrieving documents from your country of origin (Passports, ID’s, Family booklets etc.)] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 543] <- factor(data[, 543], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[543] <- "ComplaintMecanism_Syriadocuments"

data[, 544] <- as.numeric(data[, 544])
attributes(data)$variable.labels[544] <- "[Security and safety] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 544] <- factor(data[, 544], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[544] <- "ComplaintMecanism_securitysafety"

data[, 545] <- as.numeric(data[, 545])
attributes(data)$variable.labels[545] <- "[Food (including ration cards for camp settings)] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 545] <- factor(data[, 545], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[545] <- "ComplaintMecanism_food"

data[, 546] <- as.numeric(data[, 546])
attributes(data)$variable.labels[546] <- "[Obtaining civil status documents (Birth Certificates, Marriage Certificates, Death Certificates etc.)] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 546] <- factor(data[, 546], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[546] <- "ComplaintMecanism_civildocuments"

data[, 547] <- as.numeric(data[, 547])
attributes(data)$variable.labels[547] <- "[Water and Sanitation] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 547] <- factor(data[, 547], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[547] <- "ComplaintMecanism_Water"

data[, 548] <- as.numeric(data[, 548])
attributes(data)$variable.labels[548] <- "[Conduct of organisations] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 548] <- factor(data[, 548], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[548] <- "ComplaintMecanism_Conduct"

data[, 549] <- as.numeric(data[, 549])
attributes(data)$variable.labels[549] <- "[Exploitation] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 549] <- factor(data[, 549], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[549] <- "ComplaintMecanism_exploitation"

data[, 550] <- as.numeric(data[, 550])
attributes(data)$variable.labels[550] <- "[Resettlement] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
data[, 550] <- factor(data[, 550], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[550] <- "ComplaintMecanism_resettlement"

data[, 551] <- as.character(data[, 551])
attributes(data)$variable.labels[551] <- "[Other] If you have raised concerns or registered complaints in the past, then which specific issues/services did you do this for? (tick all applicable options)"
names(data)[551] <- "ComplaintMecanism_other"

data[, 552] <- as.numeric(data[, 552])
attributes(data)$variable.labels[552] <- "[UNHCR Info Line] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 552] <- factor(data[, 552], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[552] <- "ComplaintIssues_infoline"

data[, 553] <- as.numeric(data[, 553])
attributes(data)$variable.labels[553] <- "[Telephone call for UNHCR’s implementing partners or other NGOs] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 553] <- factor(data[, 553], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[553] <- "ComplaintIssues_ngoTelephonecalls"

data[, 554] <- as.numeric(data[, 554])
attributes(data)$variable.labels[554] <- "[SMS or Whatsapp] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 554] <- factor(data[, 554], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[554] <- "ComplaintIssues_sms"

data[, 555] <- as.numeric(data[, 555])
attributes(data)$variable.labels[555] <- "[UNHCR offices or help desks] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 555] <- factor(data[, 555], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[555] <- "ComplaintIssues_helpdesks"

data[, 556] <- as.numeric(data[, 556])
attributes(data)$variable.labels[556] <- "[Call into a Radio/TV Program] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 556] <- factor(data[, 556], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[556] <- "ComplaintIssues_callradiotv"

data[, 557] <- as.numeric(data[, 557])
attributes(data)$variable.labels[557] <- "[Email] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 557] <- factor(data[, 557], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[557] <- "ComplaintIssues_email"

data[, 558] <- as.numeric(data[, 558])
attributes(data)$variable.labels[558] <- "[Social networks] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 558] <- factor(data[, 558], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[558] <- "ComplaintIssues_socialnetwork"

data[, 559] <- as.numeric(data[, 559])
attributes(data)$variable.labels[559] <- "[Suggestion/Application box] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 559] <- factor(data[, 559], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[559] <- "ComplaintIssues_suggestionbox"

data[, 560] <- as.numeric(data[, 560])
attributes(data)$variable.labels[560] <- "[Complaint box] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 560] <- factor(data[, 560], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[560] <- "ComplaintIssues_complaint"

data[, 561] <- as.numeric(data[, 561])
attributes(data)$variable.labels[561] <- "[Face-to-face meeting with aid organisation employee(s)] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 561] <- factor(data[, 561], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[561] <- "ComplaintIssues_ngofacetoface"

data[, 562] <- as.numeric(data[, 562])
attributes(data)$variable.labels[562] <- "[Face-to-face meeting with a government official] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 562] <- factor(data[, 562], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[562] <- "ComplaintIssues_gvtfacetoface"

data[, 563] <- as.numeric(data[, 563])
attributes(data)$variable.labels[563] <- "[Through community gatherings and community leaders] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 563] <- factor(data[, 563], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[563] <- "ComplaintIssues_communitymeetings"

data[, 564] <- as.numeric(data[, 564])
attributes(data)$variable.labels[564] <- "[Through a religious leader or institution] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
data[, 564] <- factor(data[, 564], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[564] <- "ComplaintIssues_religiousleader"

data[, 565] <- as.character(data[, 565])
attributes(data)$variable.labels[565] <- "[Other] If you have asked questions, complained or raised concerns in the past, then how did you do this?"
names(data)[565] <- "ComplaintIssues_other"

data[, 566] <- as.numeric(data[, 566])
attributes(data)$variable.labels[566] <- "If you have raised concerns or registered complaints in the past, then were these complaints taken into account and followed-up on by the agency to which you complained?"
data[, 566] <- factor(data[, 566], levels=c(1,2),labels=c("Yes","No"))
names(data)[566] <- "ComplaintFollow"

data[, 567] <- as.character(data[, 567])
attributes(data)$variable.labels[567] <- "If not, do you have an idea why the follow up did not happened?"
names(data)[567] <- "NoFollow"

data[, 568] <- as.character(data[, 568])
attributes(data)$variable.labels[568] <- "Which Social Network(s) did you use?"
names(data)[568] <- "Ac_SocialNetwork"

data[, 569] <- as.numeric(data[, 569])
attributes(data)$variable.labels[569] <- "[Cash assistance] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 569] <- factor(data[, 569], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[569] <- "ComplaintMechanismIf_cashassistance"

data[, 570] <- as.numeric(data[, 570])
attributes(data)$variable.labels[570] <- "[Health services] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 570] <- factor(data[, 570], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[570] <- "ComplaintMechanismIf_healthservices"

data[, 571] <- as.numeric(data[, 571])
attributes(data)$variable.labels[571] <- "[Education services] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 571] <- factor(data[, 571], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[571] <- "ComplaintMechanismIf_educationservices"

data[, 572] <- as.numeric(data[, 572])
attributes(data)$variable.labels[572] <- "[Disability services] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 572] <- factor(data[, 572], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[572] <- "ComplaintMechanismIf_disabilityservices"

data[, 573] <- as.numeric(data[, 573])
attributes(data)$variable.labels[573] <- "[Shelter problems] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 573] <- factor(data[, 573], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[573] <- "ComplaintMechanismIf_shelterproblems"

data[, 574] <- as.numeric(data[, 574])
attributes(data)$variable.labels[574] <- "[Risk of eviction] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 574] <- factor(data[, 574], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[574] <- "ComplaintMechanismIf_riskeviction"

data[, 575] <- as.numeric(data[, 575])
attributes(data)$variable.labels[575] <- "[Registration/ renewal procedures] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 575] <- factor(data[, 575], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[575] <- "ComplaintMechanismIf_registrationrenewal"

data[, 576] <- as.numeric(data[, 576])
attributes(data)$variable.labels[576] <- "[Retrieving documents from your country of origin (Passports, ID’s, Family booklets etc.)] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 576] <- factor(data[, 576], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[576] <- "ComplaintMechanismIf_documents"

data[, 577] <- as.numeric(data[, 577])
attributes(data)$variable.labels[577] <- "[Security and safety] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 577] <- factor(data[, 577], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[577] <- "ComplaintMechanismIf_securitysafety"

data[, 578] <- as.numeric(data[, 578])
attributes(data)$variable.labels[578] <- "[Food (including ration cards for camp settings)] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 578] <- factor(data[, 578], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[578] <- "ComplaintMechanismIf_food"

data[, 579] <- as.numeric(data[, 579])
attributes(data)$variable.labels[579] <- "[Obtaining civil status documents (Birth Certificates, Marriage Certificates, Death Certificates etc.)] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 579] <- factor(data[, 579], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[579] <- "ComplaintMechanismIf_civildocuments"

data[, 580] <- as.numeric(data[, 580])
attributes(data)$variable.labels[580] <- "[Water and Sanitation] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 580] <- factor(data[, 580], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[580] <- "ComplaintMechanismIf_Water"

data[, 581] <- as.numeric(data[, 581])
attributes(data)$variable.labels[581] <- "[Conduct of organisations] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 581] <- factor(data[, 581], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[581] <- "ComplaintMechanismIf_Conduct"

data[, 582] <- as.numeric(data[, 582])
attributes(data)$variable.labels[582] <- "[Exploitation] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 582] <- factor(data[, 582], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[582] <- "ComplaintMechanismIf_Exploitation"

data[, 583] <- as.numeric(data[, 583])
attributes(data)$variable.labels[583] <- "[Resettlement] If you had known how to make a complaint, what specific issues/services would you have this for?"
data[, 583] <- factor(data[, 583], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[583] <- "ComplaintMechanismIf_Resettlement"

data[, 584] <- as.numeric(data[, 584])
attributes(data)$variable.labels[584] <- "[UNHCR Info Line] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 584] <- factor(data[, 584], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[584] <- "ComplaintIssuesIf_infoline"

data[, 585] <- as.numeric(data[, 585])
attributes(data)$variable.labels[585] <- "[Telephone call for UNHCR’s implementing partners or other NGOs] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 585] <- factor(data[, 585], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[585] <- "ComplaintIssuesIf_ngoTelephonecalls"

data[, 586] <- as.numeric(data[, 586])
attributes(data)$variable.labels[586] <- "[SMS or Whatsapp] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 586] <- factor(data[, 586], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[586] <- "ComplaintIssuesIf_sms"

data[, 587] <- as.numeric(data[, 587])
attributes(data)$variable.labels[587] <- "[UNHCR offices or help desks] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 587] <- factor(data[, 587], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[587] <- "ComplaintIssuesIf_helpdesks"

data[, 588] <- as.numeric(data[, 588])
attributes(data)$variable.labels[588] <- "[Call into a Radio/TV Program] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 588] <- factor(data[, 588], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[588] <- "ComplaintIssuesIf_callradiotv"

data[, 589] <- as.numeric(data[, 589])
attributes(data)$variable.labels[589] <- "[Email] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 589] <- factor(data[, 589], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[589] <- "ComplaintIssuesIf_email"

data[, 590] <- as.numeric(data[, 590])
attributes(data)$variable.labels[590] <- "[Social Networks] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 590] <- factor(data[, 590], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[590] <- "ComplaintIssuesIf_socialnetwork"

data[, 591] <- as.numeric(data[, 591])
attributes(data)$variable.labels[591] <- "[Suggestion/Application box] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 591] <- factor(data[, 591], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[591] <- "ComplaintIssuesIf_suggestionbox"

data[, 592] <- as.numeric(data[, 592])
attributes(data)$variable.labels[592] <- "[Complaint box] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 592] <- factor(data[, 592], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[592] <- "ComplaintIssuesIf_Complaint"

data[, 593] <- as.numeric(data[, 593])
attributes(data)$variable.labels[593] <- "[Face-to-face meeting with aid organisation employee(s)] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 593] <- factor(data[, 593], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[593] <- "ComplaintIssuesIf_ngofacetoface"

data[, 594] <- as.numeric(data[, 594])
attributes(data)$variable.labels[594] <- "[Face-to-face meeting with a government official] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 594] <- factor(data[, 594], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[594] <- "ComplaintIssuesIf_gvtfacetoface"

data[, 595] <- as.numeric(data[, 595])
attributes(data)$variable.labels[595] <- "[Through community gatherings and community leaders] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 595] <- factor(data[, 595], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[595] <- "ComplaintIssuesIf_communitymeetings"

data[, 596] <- as.numeric(data[, 596])
attributes(data)$variable.labels[596] <- "[Through a religious leader or institution] If you had been able to ask questions, complained or raised concerns, how would you have done this?"
data[, 596] <- factor(data[, 596], levels=c(1,0),labels=c("Yes","Not selected"))
names(data)[596] <- "ComplaintIssuesIf_religiousleader"

data[, 597] <- as.character(data[, 597])
attributes(data)$variable.labels[597] <- "Which Aid Organisations did you contact?"
names(data)[597] <- "Ac_AidOrganisations"

data[, 598] <- as.character(data[, 598])
attributes(data)$variable.labels[598] <- "Which Aid Organisatsions would you have contacted?"
names(data)[598] <- "Ac_AidOrganIf"

data[, 599] <- as.character(data[, 599])
attributes(data)$variable.labels[599] <- "Which Social Network(s) would you have used?"
names(data)[599] <- "Ac_SocialNetworkIf"

