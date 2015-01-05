## R Notes - HERD analysis

# import data into a frame through Rstudio
# organize the data sets so that their have common variable names and definitions

# data definitions are based on information in this document
# http://www.nsf.gov/statistics/herd/data/fy-2012-herd-dug-text-file-format.pdf

# set the working directory for data import
setwd("~/Box Sync/_RSP/_Budget/HERD Survey/other HERD data/")

exp2012.csv <- read.csv("exp2012.csv.txt", header=TRUE)
exp2011.csv <- read.csv("exp2011.csv.txt", header=TRUE)
exp2010.csv <- read.csv("exp2010.csv.txt", header=TRUE)
exp2010.csv <- read.csv("exp2010.csv.txt", header=TRUE)
exp2009.csv <- read.csv("exp2009.csv.txt", header=TRUE)
exp2008.csv <- read.csv("exp2008.csv.txt", header=TRUE)
exp2007.csv <- read.csv("exp2007.csv.txt", header=TRUE)
exp2006.csv <- read.csv("exp2006.csv.txt", header=TRUE)
exp2005.csv <- read.csv("exp2005.csv.txt", header=TRUE)
exp2004.csv <- read.csv("exp2004.csv.txt", header=TRUE)
exp2003.csv <- read.csv("exp2003.csv.txt", header=TRUE)
exp2002.csv <- read.csv("exp2002.csv.txt", header=TRUE)
exp2001.csv <- read.csv("exp2001.csv.txt", header=TRUE)
exp2000.csv <- read.csv("exp2000.csv.txt", header=TRUE)

# next, need to clean the data
#	* remove columns that the sets don't have in common
#	* put the columns in the same order

# years 2000-2009 have 'line numbers'
# years 2011-2012 have 'question numbers'
# need to find a way to map one to the other

## --------------------

# the following data is acquired using the names() function
#
# same columns: through data1, data2
#	2000, 2001, 2002
# same columns:  
#
# names(exp2002.csv)
# [1] "fice"             "fice_combined"    "year"             "hbcu_flag"        "has_med_sch_flag"
# [6] "hhe_flag"         "toi_code"         "hdg_code"         "toc_code"         "pilot_fy09_flag" 
# [11] "inst_name_long"   "inst_city"        "inst_state"       "inst_zip"         "line"            
# [16] "data1"            "status1"          "data2"            "status2"    

names(exp2000.csv)[names(exp2000.csv)=="fice"] <- "inst_id"
names(exp2000.csv)[names(exp2000.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2000.csv$fice_combined<- NULL
exp2000.csv$pilot_fy09_flag<- NULL
exp2000.csv$status1<- NULL
exp2000.csv$status2<- NULL

names(exp2001.csv)[names(exp2001.csv)=="fice"] <- "inst_id"
names(exp2001.csv)[names(exp2001.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2001.csv$fice_combined<- NULL
exp2001.csv$pilot_fy09_flag<- NULL
exp2001.csv$status1<- NULL
exp2001.csv$status2<- NULL

names(exp2002.csv)[names(exp2002.csv)=="fice"] <- "inst_id"
names(exp2002.csv)[names(exp2002.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2002.csv$fice_combined<- NULL
exp2002.csv$pilot_fy09_flag<- NULL
exp2002.csv$status1<- NULL
exp2002.csv$status2<- NULL

## -- not used
## # make a vectors of dataset names (the following is 'too much')
## # for use in a script I'm trying to create (batch modify sets of data)
## Years<-2000:2002
## vec_names<-c()
## for (i in Years){
## 	vec_names<-cbind(vec_names, paste("exp",i,".csv",sep=""))
## }
## vec_names<-as.vector(vec_names)


# trying to make batch corrections/cleanings to data sets (the following does not work correctly)
#
#for (i in 1:length(vec_names)){
#	names(vec_names[[i]])[names(vec_names[[i]])=="fice"] <- "inst_id"
#	names(vec_names[[i]])[names(vec_names[[i]])=="has_med_sch_flag"] <- "med_sch_flag"
#	vec_names[[i]]$fice_combined<- NULL
#}

## --------------------


# same columns: 
# 	2003-2009
# 
#  [1] "fice"             "fice_combined"    "year"             "hbcu_flag"        "has_med_sch_flag"
#  [6] "hhe_flag"         "toi_code"         "hdg_code"         "toc_code"         "pilot_fy09_flag" 
# [11] "inst_name_long"   "inst_city"        "inst_state"       "inst_zip"         "line"            
# [16] "data1"            "status1"          "data2"            "status2"          "data3"           
# [21] "status3"          "data4"            "status4"          "data5"            "status5"         
# [26] "data6"            "status6"          "data7"            "status7"          "data8"           
# [31] "status8"          "data9"            "status9"  

names(exp2003.csv)[names(exp2003.csv)=="fice"] <- "inst_id"
names(exp2003.csv)[names(exp2003.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2003.csv$fice_combined<- NULL
exp2003.csv$pilot_fy09_flag<- NULL
exp2003.csv$status1<- NULL
exp2003.csv$status2<- NULL
exp2003.csv$status3<- NULL
exp2003.csv$status4<- NULL
exp2003.csv$status5<- NULL
exp2003.csv$status6<- NULL
exp2003.csv$status7<- NULL
exp2003.csv$status8<- NULL
exp2003.csv$status9<- NULL
exp2003.csv$data10<-exp2003.csv$data9
exp2003.csv$data9<- exp2003.csv$data8
exp2003.csv$data8<- exp2003.csv$data7
exp2003.csv$data7<- exp2003.csv$data6
exp2003.csv$data6<- exp2003.csv$data5
exp2003.csv$data5<- exp2003.csv$data4
exp2003.csv$data4<- exp2003.csv$data3
exp2003.csv$data3<-NA


names(exp2004.csv)[names(exp2004.csv)=="fice"] <- "inst_id"
names(exp2004.csv)[names(exp2004.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2004.csv$fice_combined<- NULL
exp2004.csv$pilot_fy09_flag<- NULL
exp2004.csv$status1<- NULL
exp2004.csv$status2<- NULL
exp2004.csv$status3<- NULL
exp2004.csv$status4<- NULL
exp2004.csv$status5<- NULL
exp2004.csv$status6<- NULL
exp2004.csv$status7<- NULL
exp2004.csv$status8<- NULL
exp2004.csv$status9<- NULL
exp2004.csv$data10<-exp2004.csv$data9
exp2004.csv$data9<- exp2004.csv$data8
exp2004.csv$data8<- exp2004.csv$data7
exp2004.csv$data7<- exp2004.csv$data6
exp2004.csv$data6<- exp2004.csv$data5
exp2004.csv$data5<- exp2004.csv$data4
exp2004.csv$data4<- exp2004.csv$data3
exp2004.csv$data3<-NA

names(exp2005.csv)[names(exp2005.csv)=="fice"] <- "inst_id"
names(exp2005.csv)[names(exp2005.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2005.csv$fice_combined<- NULL
exp2005.csv$pilot_fy09_flag<- NULL
exp2005.csv$status1<- NULL
exp2005.csv$status2<- NULL
exp2005.csv$status3<- NULL
exp2005.csv$status4<- NULL
exp2005.csv$status5<- NULL
exp2005.csv$status6<- NULL
exp2005.csv$status7<- NULL
exp2005.csv$status8<- NULL
exp2005.csv$status9<- NULL
exp2005.csv$data10<-exp2005.csv$data9
exp2005.csv$data9<- exp2005.csv$data8
exp2005.csv$data8<- exp2005.csv$data7
exp2005.csv$data7<- exp2005.csv$data6
exp2005.csv$data6<- exp2005.csv$data5
exp2005.csv$data5<- exp2005.csv$data4
exp2005.csv$data4<- exp2005.csv$data3
exp2005.csv$data3<-NA

names(exp2006.csv)[names(exp2006.csv)=="fice"] <- "inst_id"
names(exp2006.csv)[names(exp2006.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2006.csv$fice_combined<- NULL
exp2006.csv$pilot_fy09_flag<- NULL
exp2006.csv$status1<- NULL
exp2006.csv$status2<- NULL
exp2006.csv$status3<- NULL
exp2006.csv$status4<- NULL
exp2006.csv$status5<- NULL
exp2006.csv$status6<- NULL
exp2006.csv$status7<- NULL
exp2006.csv$status8<- NULL
exp2006.csv$status9<- NULL
exp2006.csv$data10<-exp2006.csv$data9
exp2006.csv$data9<- exp2006.csv$data8
exp2006.csv$data8<- exp2006.csv$data7
exp2006.csv$data7<- exp2006.csv$data6
exp2006.csv$data6<- exp2006.csv$data5
exp2006.csv$data5<- exp2006.csv$data4
exp2006.csv$data4<- exp2006.csv$data3
exp2006.csv$data3<-NA

names(exp2007.csv)[names(exp2007.csv)=="fice"] <- "inst_id"
names(exp2007.csv)[names(exp2007.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2007.csv$fice_combined<- NULL
exp2007.csv$pilot_fy09_flag<- NULL
exp2007.csv$status1<- NULL
exp2007.csv$status2<- NULL
exp2007.csv$status3<- NULL
exp2007.csv$status4<- NULL
exp2007.csv$status5<- NULL
exp2007.csv$status6<- NULL
exp2007.csv$status7<- NULL
exp2007.csv$status8<- NULL
exp2007.csv$status9<- NULL
exp2007.csv$data10<-exp2007.csv$data9
exp2007.csv$data9<- exp2007.csv$data8
exp2007.csv$data8<- exp2007.csv$data7
exp2007.csv$data7<- exp2007.csv$data6
exp2007.csv$data6<- exp2007.csv$data5
exp2007.csv$data5<- exp2007.csv$data4
exp2007.csv$data4<- exp2007.csv$data3
exp2007.csv$data3<-NA

names(exp2008.csv)[names(exp2008.csv)=="fice"] <- "inst_id"
names(exp2008.csv)[names(exp2008.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2008.csv$fice_combined<- NULL
exp2008.csv$pilot_fy09_flag<- NULL
exp2008.csv$status1<- NULL
exp2008.csv$status2<- NULL
exp2008.csv$status3<- NULL
exp2008.csv$status4<- NULL
exp2008.csv$status5<- NULL
exp2008.csv$status6<- NULL
exp2008.csv$status7<- NULL
exp2008.csv$status8<- NULL
exp2008.csv$status9<- NULL
exp2008.csv$data10<-exp2008.csv$data9
exp2008.csv$data9<- exp2008.csv$data8
exp2008.csv$data8<- exp2008.csv$data7
exp2008.csv$data7<- exp2008.csv$data6
exp2008.csv$data6<- exp2008.csv$data5
exp2008.csv$data5<- exp2008.csv$data4
exp2008.csv$data4<- exp2008.csv$data3
exp2008.csv$data3<-NA

names(exp2009.csv)[names(exp2009.csv)=="fice"] <- "inst_id"
names(exp2009.csv)[names(exp2009.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2009.csv$fice_combined<- NULL
exp2009.csv$pilot_fy09_flag<- NULL
exp2009.csv$status1<- NULL
exp2009.csv$status2<- NULL
exp2009.csv$status3<- NULL
exp2009.csv$status4<- NULL
exp2009.csv$status5<- NULL
exp2009.csv$status6<- NULL
exp2009.csv$status7<- NULL
exp2009.csv$status8<- NULL
exp2009.csv$status9<- NULL
exp2009.csv$data10<-exp2009.csv$data9
exp2009.csv$data9<- exp2009.csv$data8
exp2009.csv$data8<- exp2009.csv$data7
exp2009.csv$data7<- exp2009.csv$data6
exp2009.csv$data6<- exp2009.csv$data5
exp2009.csv$data5<- exp2009.csv$data4
exp2009.csv$data4<- exp2009.csv$data3
exp2009.csv$data3<-NA

# same columns: 
# 	2010-2012
# 
# first 35 columns are the same between these, the three sets have additional columns for 'other info'
#
#  [1] "inst_id"        "year"           "hbcu_flag"      "med_sch_flag"   "hhe_flag"      
#  [6] "toi_code"       "hdg_code"       "toc_code"       "inst_name_long" "inst_city"     
# [11] "inst_state"     "inst_zip"       "question"       "row"            "data1"         
# [16] "status1"        "data2"          "status2"        "data3"          "status3"       
# [21] "data4"          "status4"        "data5"          "status5"        "data6"         
# [26] "status6"        "data7"          "status7"        "data8"          "status8"       
# [31] "data9"          "status9"        "data10"         "status10"       "othinfo1"      
# [36] "othinfo2"       "othinfo3"     

# column notes
#	fice = inst_id
#	med_sch_flag = has_med_sch_flag (assumed)
#	line probably needs to be mapped to question & row


# columns to drop
#	fice_combined 
#	pilot_fy09_flag
#	the statusN columns are (probably) unnecessary
#	the othinfoN columns are (probably) unnecessary

names(exp2010.csv)[names(exp2010.csv)=="fice"] <- "inst_id"
names(exp2010.csv)[names(exp2010.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2010.csv$fice_combined<- NULL
exp2010.csv$pilot_fy09_flag<- NULL
exp2010.csv$status1<- NULL
exp2010.csv$status2<- NULL
exp2010.csv$status3<- NULL
exp2010.csv$status4<- NULL
exp2010.csv$status5<- NULL
exp2010.csv$status6<- NULL
exp2010.csv$status7<- NULL
exp2010.csv$status8<- NULL
exp2010.csv$status9<- NULL
exp2010.csv$status10<- NULL
exp2010.csv$othinfo1<- NULL
exp2010.csv$othinfo2<- NULL
exp2010.csv$othinfo3<- NULL
exp2010.csv$othinfo1_s<- NULL

names(exp2011.csv)[names(exp2011.csv)=="fice"] <- "inst_id"
names(exp2011.csv)[names(exp2011.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2011.csv$fice_combined<- NULL
exp2011.csv$pilot_fy09_flag<- NULL
exp2011.csv$status1<- NULL
exp2011.csv$status2<- NULL
exp2011.csv$status3<- NULL
exp2011.csv$status4<- NULL
exp2011.csv$status5<- NULL
exp2011.csv$status6<- NULL
exp2011.csv$status7<- NULL
exp2011.csv$status8<- NULL
exp2011.csv$status9<- NULL
exp2011.csv$status10<- NULL
exp2011.csv$othinfo1<- NULL
exp2011.csv$othinfo2<- NULL
exp2011.csv$othinfo3<- NULL
exp2011.csv$othinfo1_s<- NULL

names(exp2012.csv)[names(exp2012.csv)=="fice"] <- "inst_id"
names(exp2012.csv)[names(exp2012.csv)=="has_med_sch_flag"] <- "med_sch_flag"
exp2012.csv$fice_combined<- NULL
exp2012.csv$pilot_fy09_flag<- NULL
exp2012.csv$status1<- NULL
exp2012.csv$status2<- NULL
exp2012.csv$status3<- NULL
exp2012.csv$status4<- NULL
exp2012.csv$status5<- NULL
exp2012.csv$status6<- NULL
exp2012.csv$status7<- NULL
exp2012.csv$status8<- NULL
exp2012.csv$status9<- NULL
exp2012.csv$status10<- NULL
exp2012.csv$othinfo1<- NULL
exp2012.csv$othinfo2<- NULL
exp2012.csv$othinfo3<- NULL
exp2012.csv$othinfo1_s<- NULL



# next; need to 'align' the columns between groups

##
## -------------------- COLUMNS -----------------------
##

# the following is a CSV table of column definitions taken from the governing document
# abbreviations are mine

# ,2010-2012,short form,2000-2009
# data1,"total for that question (alt:  14 = cap thresh; 16,17 = headcount)",total expenditures,total expenditures
# data2,"total fed exp (alt: 16, PI headcount)",total fed,total fed
# data3,"nonfed expenditures (alt:  16, other pers headcount)",nonfed,"USDA expenditures for 1400-1480, other capital for 1700-1780"
# data4,"USDA expenditures for 9, state for 12",NA,DOD expenditures for 1400-1480
# data5,"DOD expenditures for 9, business for 12",NA,DOE expenditures for 1400-1480
# data6,"DOE for 9, nonprofit for 12",NA,HHS expenditures for 1400-1480
# data7,"HHS for 9, institutional for 12",NA,NASA expenditures for 1400-1480
# data8,"NASA for 9, other for 12",NA,NSF expenditures for 1400-1480
# data9,NSF for 9,NA,other agency for 1400-1480
# data10,"other agency for 9, breakout for other on 10",NA,NA

# UPSHOT:  
#	for 2000-2009 data columns, shift dataN to data(N+1) for N=3 and above
#	then create an empty column for data3 in the 2000-2009 sets

# the above is accomplished by the following commands, which are included in the script above:
#	exp2003.csv$data10<-exp2003.csv$data9
#	exp2003.csv$data9<- exp2003.csv$data8
#	exp2003.csv$data8<- exp2003.csv$data7
#	exp2003.csv$data7<- exp2003.csv$data6
#	exp2003.csv$data6<- exp2003.csv$data5
#	exp2003.csv$data5<- exp2003.csv$data4
#	exp2003.csv$data4<- exp2003.csv$data3
#	exp2003.csv$data3<-NA

##
## -------------------- final 'alignments' ------------
##

# some sets refer to question and row, some to line; can add columns into each set to have 'question and row' and 'line' appear in all sets
# early sets only have data1 and data2 columns (no other data columns); can add 'fake' data columns through data10 to 

exp2000.csv$data3<-NA
exp2000.csv$data4<-NA
exp2000.csv$data5<-NA
exp2000.csv$data6<-NA
exp2000.csv$data7<-NA
exp2000.csv$data8<-NA
exp2000.csv$data9<-NA
exp2000.csv$data10<-NA

exp2001.csv$data3<-NA
exp2001.csv$data4<-NA
exp2001.csv$data5<-NA
exp2001.csv$data6<-NA
exp2001.csv$data7<-NA
exp2001.csv$data8<-NA
exp2001.csv$data9<-NA
exp2001.csv$data10<-NA

exp2002.csv$data3<-NA
exp2002.csv$data4<-NA
exp2002.csv$data5<-NA
exp2002.csv$data6<-NA
exp2002.csv$data7<-NA
exp2002.csv$data8<-NA
exp2002.csv$data9<-NA
exp2002.csv$data10<-NA

exp2000.csv$question<-NA
exp2000.csv$row<-NA
exp2001.csv$question<-NA
exp2001.csv$row<-NA
exp2002.csv$question<-NA
exp2002.csv$row<-NA
exp2003.csv$question<-NA
exp2003.csv$row<-NA
exp2004.csv$question<-NA
exp2004.csv$row<-NA
exp2005.csv$question<-NA
exp2005.csv$row<-NA
exp2006.csv$question<-NA
exp2006.csv$row<-NA
exp2007.csv$question<-NA
exp2007.csv$row<-NA
exp2008.csv$question<-NA
exp2008.csv$row<-NA
exp2009.csv$question<-NA
exp2009.csv$row<-NA

exp2010.csv$line<-NA
exp2011.csv$line<-NA
exp2012.csv$line<-NA

# at this point, all the data sets have the same columns with the same definitions

##
## -------------------- Typing the columns -----------------------
##

# the following defines all the variable types in the dataset
exp2000.csv$inst_id <- factor(exp2000.csv$inst_id)
exp2000.csv$year <- factor(exp2000.csv$year)
exp2000.csv$hbcu_flag <- factor(exp2000.csv$hbcu_flag)
exp2000.csv$med_sch_flag <- factor(exp2000.csv$med_sch_flag)
exp2000.csv$hhe_flag <- factor(exp2000.csv$hhe_flag)
exp2000.csv$toi_code <- factor(exp2000.csv$toi_code)
exp2000.csv$hdg_code <- factor(exp2000.csv$hdg_code)
exp2000.csv$toc_code <- factor(exp2000.csv$toc_code)
exp2000.csv$inst_name_long <- factor(exp2000.csv$inst_name_long)
exp2000.csv$inst_city <- factor(exp2000.csv$inst_city)
exp2000.csv$inst_zip <- factor(exp2000.csv$inst_zip)
exp2000.csv$line <- factor(exp2000.csv$line)
exp2000.csv$data1 <- as.integer(exp2000.csv$data1)
exp2000.csv$data2 <- as.integer(exp2000.csv$data2)
exp2000.csv$data3 <- as.integer(exp2000.csv$data3)
exp2000.csv$data4 <- as.integer(exp2000.csv$data4)
exp2000.csv$data5 <- as.integer(exp2000.csv$data5)
exp2000.csv$data6 <- as.integer(exp2000.csv$data6)
exp2000.csv$data7 <- as.integer(exp2000.csv$data7)
exp2000.csv$data8 <- as.integer(exp2000.csv$data8)
exp2000.csv$data9 <- as.integer(exp2000.csv$data9)
exp2000.csv$data10 <- as.integer(exp2000.csv$data10)
exp2000.csv$question <- factor(exp2000.csv$question)
exp2000.csv$row <- factor(exp2000.csv$row)

exp2001.csv$inst_id <- factor(exp2001.csv$inst_id)
exp2001.csv$year <- factor(exp2001.csv$year)
exp2001.csv$hbcu_flag <- factor(exp2001.csv$hbcu_flag)
exp2001.csv$med_sch_flag <- factor(exp2001.csv$med_sch_flag)
exp2001.csv$hhe_flag <- factor(exp2001.csv$hhe_flag)
exp2001.csv$toi_code <- factor(exp2001.csv$toi_code)
exp2001.csv$hdg_code <- factor(exp2001.csv$hdg_code)
exp2001.csv$toc_code <- factor(exp2001.csv$toc_code)
exp2001.csv$inst_name_long <- factor(exp2001.csv$inst_name_long)
exp2001.csv$inst_city <- factor(exp2001.csv$inst_city)
exp2001.csv$inst_zip <- factor(exp2001.csv$inst_zip)
exp2001.csv$line <- factor(exp2001.csv$line)
exp2001.csv$data1 <- as.integer(exp2001.csv$data1)
exp2001.csv$data2 <- as.integer(exp2001.csv$data2)
exp2001.csv$data3 <- as.integer(exp2001.csv$data3)
exp2001.csv$data4 <- as.integer(exp2001.csv$data4)
exp2001.csv$data5 <- as.integer(exp2001.csv$data5)
exp2001.csv$data6 <- as.integer(exp2001.csv$data6)
exp2001.csv$data7 <- as.integer(exp2001.csv$data7)
exp2001.csv$data8 <- as.integer(exp2001.csv$data8)
exp2001.csv$data9 <- as.integer(exp2001.csv$data9)
exp2001.csv$data10 <- as.integer(exp2001.csv$data10)
exp2001.csv$question <- factor(exp2001.csv$question)
exp2001.csv$row <- factor(exp2001.csv$row)

exp2002.csv$inst_id <- 		factor(exp2002.csv$inst_id)
exp2002.csv$year <- 		factor(exp2002.csv$year)
exp2002.csv$hbcu_flag <-	factor(exp2002.csv$hbcu_flag)
exp2002.csv$med_sch_flag <- factor(exp2002.csv$med_sch_flag)
exp2002.csv$hhe_flag <- 	factor(exp2002.csv$hhe_flag)
exp2002.csv$toi_code <- 	factor(exp2002.csv$toi_code)
exp2002.csv$hdg_code <- 	factor(exp2002.csv$hdg_code)
exp2002.csv$toc_code <- 	factor(exp2002.csv$toc_code)
exp2002.csv$inst_name_long<-factor(exp2002.csv$inst_name_long)
exp2002.csv$inst_city <- 	factor(exp2002.csv$inst_city)
exp2002.csv$inst_zip <- 	factor(exp2002.csv$inst_zip)
exp2002.csv$line <- 		factor(exp2002.csv$line)
exp2002.csv$data1 <- 		as.integer(exp2002.csv$data1)
exp2002.csv$data2 <- 		as.integer(exp2002.csv$data2)
exp2002.csv$data3 <- 		as.integer(exp2002.csv$data3)
exp2002.csv$data4 <- 		as.integer(exp2002.csv$data4)
exp2002.csv$data5 <- 		as.integer(exp2002.csv$data5)
exp2002.csv$data6 <- 		as.integer(exp2002.csv$data6)
exp2002.csv$data7 <- 		as.integer(exp2002.csv$data7)
exp2002.csv$data8 <- 		as.integer(exp2002.csv$data8)
exp2002.csv$data9 <- 		as.integer(exp2002.csv$data9)
exp2002.csv$data10 <- 		as.integer(exp2002.csv$data10)
exp2002.csv$question <- 	factor(exp2002.csv$question)
exp2002.csv$row <- 			factor(exp2002.csv$row)

exp2003.csv$inst_id <- 		factor(exp2003.csv$inst_id)
exp2003.csv$year <- 		factor(exp2003.csv$year)
exp2003.csv$hbcu_flag <-	factor(exp2003.csv$hbcu_flag)
exp2003.csv$med_sch_flag <- factor(exp2003.csv$med_sch_flag)
exp2003.csv$hhe_flag <- 	factor(exp2003.csv$hhe_flag)
exp2003.csv$toi_code <- 	factor(exp2003.csv$toi_code)
exp2003.csv$hdg_code <- 	factor(exp2003.csv$hdg_code)
exp2003.csv$toc_code <- 	factor(exp2003.csv$toc_code)
exp2003.csv$inst_name_long<-factor(exp2003.csv$inst_name_long)
exp2003.csv$inst_city <- 	factor(exp2003.csv$inst_city)
exp2003.csv$inst_zip <- 	factor(exp2003.csv$inst_zip)
exp2003.csv$line <- 		factor(exp2003.csv$line)
exp2003.csv$data1 <- 		as.integer(exp2003.csv$data1)
exp2003.csv$data2 <- 		as.integer(exp2003.csv$data2)
exp2003.csv$data3 <- 		as.integer(exp2003.csv$data3)
exp2003.csv$data4 <- 		as.integer(exp2003.csv$data4)
exp2003.csv$data5 <- 		as.integer(exp2003.csv$data5)
exp2003.csv$data6 <- 		as.integer(exp2003.csv$data6)
exp2003.csv$data7 <- 		as.integer(exp2003.csv$data7)
exp2003.csv$data8 <- 		as.integer(exp2003.csv$data8)
exp2003.csv$data9 <- 		as.integer(exp2003.csv$data9)
exp2003.csv$data10 <- 		as.integer(exp2003.csv$data10)
exp2003.csv$question <- 	factor(exp2003.csv$question)
exp2003.csv$row <- 			factor(exp2003.csv$row)

exp2004.csv$inst_id <- 		factor(exp2004.csv$inst_id)
exp2004.csv$year <- 		factor(exp2004.csv$year)
exp2004.csv$hbcu_flag <-	factor(exp2004.csv$hbcu_flag)
exp2004.csv$med_sch_flag <- factor(exp2004.csv$med_sch_flag)
exp2004.csv$hhe_flag <- 	factor(exp2004.csv$hhe_flag)
exp2004.csv$toi_code <- 	factor(exp2004.csv$toi_code)
exp2004.csv$hdg_code <- 	factor(exp2004.csv$hdg_code)
exp2004.csv$toc_code <- 	factor(exp2004.csv$toc_code)
exp2004.csv$inst_name_long<-factor(exp2004.csv$inst_name_long)
exp2004.csv$inst_city <- 	factor(exp2004.csv$inst_city)
exp2004.csv$inst_zip <- 	factor(exp2004.csv$inst_zip)
exp2004.csv$line <- 		factor(exp2004.csv$line)
exp2004.csv$data1 <- 		as.integer(exp2004.csv$data1)
exp2004.csv$data2 <- 		as.integer(exp2004.csv$data2)
exp2004.csv$data3 <- 		as.integer(exp2004.csv$data3)
exp2004.csv$data4 <- 		as.integer(exp2004.csv$data4)
exp2004.csv$data5 <- 		as.integer(exp2004.csv$data5)
exp2004.csv$data6 <- 		as.integer(exp2004.csv$data6)
exp2004.csv$data7 <- 		as.integer(exp2004.csv$data7)
exp2004.csv$data8 <- 		as.integer(exp2004.csv$data8)
exp2004.csv$data9 <- 		as.integer(exp2004.csv$data9)
exp2004.csv$data10 <- 		as.integer(exp2004.csv$data10)
exp2004.csv$question <- 	factor(exp2004.csv$question)
exp2004.csv$row <- 			factor(exp2004.csv$row)

exp2005.csv$inst_id <- 		factor(exp2005.csv$inst_id)
exp2005.csv$year <- 		factor(exp2005.csv$year)
exp2005.csv$hbcu_flag <-	factor(exp2005.csv$hbcu_flag)
exp2005.csv$med_sch_flag <- factor(exp2005.csv$med_sch_flag)
exp2005.csv$hhe_flag <- 	factor(exp2005.csv$hhe_flag)
exp2005.csv$toi_code <- 	factor(exp2005.csv$toi_code)
exp2005.csv$hdg_code <- 	factor(exp2005.csv$hdg_code)
exp2005.csv$toc_code <- 	factor(exp2005.csv$toc_code)
exp2005.csv$inst_name_long<-factor(exp2005.csv$inst_name_long)
exp2005.csv$inst_city <- 	factor(exp2005.csv$inst_city)
exp2005.csv$inst_zip <- 	factor(exp2005.csv$inst_zip)
exp2005.csv$line <- 		factor(exp2005.csv$line)
exp2005.csv$data1 <- 		as.integer(exp2005.csv$data1)
exp2005.csv$data2 <- 		as.integer(exp2005.csv$data2)
exp2005.csv$data3 <- 		as.integer(exp2005.csv$data3)
exp2005.csv$data4 <- 		as.integer(exp2005.csv$data4)
exp2005.csv$data5 <- 		as.integer(exp2005.csv$data5)
exp2005.csv$data6 <- 		as.integer(exp2005.csv$data6)
exp2005.csv$data7 <- 		as.integer(exp2005.csv$data7)
exp2005.csv$data8 <- 		as.integer(exp2005.csv$data8)
exp2005.csv$data9 <- 		as.integer(exp2005.csv$data9)
exp2005.csv$data10 <- 		as.integer(exp2005.csv$data10)
exp2005.csv$question <- 	factor(exp2005.csv$question)
exp2005.csv$row <- 			factor(exp2005.csv$row)

exp2006.csv$inst_id <- 		factor(exp2006.csv$inst_id)
exp2006.csv$year <- 		factor(exp2006.csv$year)
exp2006.csv$hbcu_flag <-	factor(exp2006.csv$hbcu_flag)
exp2006.csv$med_sch_flag <- factor(exp2006.csv$med_sch_flag)
exp2006.csv$hhe_flag <- 	factor(exp2006.csv$hhe_flag)
exp2006.csv$toi_code <- 	factor(exp2006.csv$toi_code)
exp2006.csv$hdg_code <- 	factor(exp2006.csv$hdg_code)
exp2006.csv$toc_code <- 	factor(exp2006.csv$toc_code)
exp2006.csv$inst_name_long<-factor(exp2006.csv$inst_name_long)
exp2006.csv$inst_city <- 	factor(exp2006.csv$inst_city)
exp2006.csv$inst_zip <- 	factor(exp2006.csv$inst_zip)
exp2006.csv$line <- 		factor(exp2006.csv$line)
exp2006.csv$data1 <- 		as.integer(exp2006.csv$data1)
exp2006.csv$data2 <- 		as.integer(exp2006.csv$data2)
exp2006.csv$data3 <- 		as.integer(exp2006.csv$data3)
exp2006.csv$data4 <- 		as.integer(exp2006.csv$data4)
exp2006.csv$data5 <- 		as.integer(exp2006.csv$data5)
exp2006.csv$data6 <- 		as.integer(exp2006.csv$data6)
exp2006.csv$data7 <- 		as.integer(exp2006.csv$data7)
exp2006.csv$data8 <- 		as.integer(exp2006.csv$data8)
exp2006.csv$data9 <- 		as.integer(exp2006.csv$data9)
exp2006.csv$data10 <- 		as.integer(exp2006.csv$data10)
exp2006.csv$question <- 	factor(exp2006.csv$question)
exp2006.csv$row <- 			factor(exp2006.csv$row)

exp2007.csv$inst_id <- 		factor(exp2007.csv$inst_id)
exp2007.csv$year <- 		factor(exp2007.csv$year)
exp2007.csv$hbcu_flag <-	factor(exp2007.csv$hbcu_flag)
exp2007.csv$med_sch_flag <- factor(exp2007.csv$med_sch_flag)
exp2007.csv$hhe_flag <- 	factor(exp2007.csv$hhe_flag)
exp2007.csv$toi_code <- 	factor(exp2007.csv$toi_code)
exp2007.csv$hdg_code <- 	factor(exp2007.csv$hdg_code)
exp2007.csv$toc_code <- 	factor(exp2007.csv$toc_code)
exp2007.csv$inst_name_long<-factor(exp2007.csv$inst_name_long)
exp2007.csv$inst_city <- 	factor(exp2007.csv$inst_city)
exp2007.csv$inst_zip <- 	factor(exp2007.csv$inst_zip)
exp2007.csv$line <- 		factor(exp2007.csv$line)
exp2007.csv$data1 <- 		as.integer(exp2007.csv$data1)
exp2007.csv$data2 <- 		as.integer(exp2007.csv$data2)
exp2007.csv$data3 <- 		as.integer(exp2007.csv$data3)
exp2007.csv$data4 <- 		as.integer(exp2007.csv$data4)
exp2007.csv$data5 <- 		as.integer(exp2007.csv$data5)
exp2007.csv$data6 <- 		as.integer(exp2007.csv$data6)
exp2007.csv$data7 <- 		as.integer(exp2007.csv$data7)
exp2007.csv$data8 <- 		as.integer(exp2007.csv$data8)
exp2007.csv$data9 <- 		as.integer(exp2007.csv$data9)
exp2007.csv$data10 <- 		as.integer(exp2007.csv$data10)
exp2007.csv$question <- 	factor(exp2007.csv$question)
exp2007.csv$row <- 			factor(exp2007.csv$row)

exp2008.csv$inst_id <- 		factor(exp2008.csv$inst_id)
exp2008.csv$year <- 		factor(exp2008.csv$year)
exp2008.csv$hbcu_flag <-	factor(exp2008.csv$hbcu_flag)
exp2008.csv$med_sch_flag <- factor(exp2008.csv$med_sch_flag)
exp2008.csv$hhe_flag <- 	factor(exp2008.csv$hhe_flag)
exp2008.csv$toi_code <- 	factor(exp2008.csv$toi_code)
exp2008.csv$hdg_code <- 	factor(exp2008.csv$hdg_code)
exp2008.csv$toc_code <- 	factor(exp2008.csv$toc_code)
exp2008.csv$inst_name_long<-factor(exp2008.csv$inst_name_long)
exp2008.csv$inst_city <- 	factor(exp2008.csv$inst_city)
exp2008.csv$inst_zip <- 	factor(exp2008.csv$inst_zip)
exp2008.csv$line <- 		factor(exp2008.csv$line)
exp2008.csv$data1 <- 		as.integer(exp2008.csv$data1)
exp2008.csv$data2 <- 		as.integer(exp2008.csv$data2)
exp2008.csv$data3 <- 		as.integer(exp2008.csv$data3)
exp2008.csv$data4 <- 		as.integer(exp2008.csv$data4)
exp2008.csv$data5 <- 		as.integer(exp2008.csv$data5)
exp2008.csv$data6 <- 		as.integer(exp2008.csv$data6)
exp2008.csv$data7 <- 		as.integer(exp2008.csv$data7)
exp2008.csv$data8 <- 		as.integer(exp2008.csv$data8)
exp2008.csv$data9 <- 		as.integer(exp2008.csv$data9)
exp2008.csv$data10 <- 		as.integer(exp2008.csv$data10)
exp2008.csv$question <- 	factor(exp2008.csv$question)
exp2008.csv$row <- 			factor(exp2008.csv$row)

exp2009.csv$inst_id <- 		factor(exp2009.csv$inst_id)
exp2009.csv$year <- 		factor(exp2009.csv$year)
exp2009.csv$hbcu_flag <-	factor(exp2009.csv$hbcu_flag)
exp2009.csv$med_sch_flag <- factor(exp2009.csv$med_sch_flag)
exp2009.csv$hhe_flag <- 	factor(exp2009.csv$hhe_flag)
exp2009.csv$toi_code <- 	factor(exp2009.csv$toi_code)
exp2009.csv$hdg_code <- 	factor(exp2009.csv$hdg_code)
exp2009.csv$toc_code <- 	factor(exp2009.csv$toc_code)
exp2009.csv$inst_name_long<-factor(exp2009.csv$inst_name_long)
exp2009.csv$inst_city <- 	factor(exp2009.csv$inst_city)
exp2009.csv$inst_zip <- 	factor(exp2009.csv$inst_zip)
exp2009.csv$line <- 		factor(exp2009.csv$line)
exp2009.csv$data1 <- 		as.integer(exp2009.csv$data1)
exp2009.csv$data2 <- 		as.integer(exp2009.csv$data2)
exp2009.csv$data3 <- 		as.integer(exp2009.csv$data3)
exp2009.csv$data4 <- 		as.integer(exp2009.csv$data4)
exp2009.csv$data5 <- 		as.integer(exp2009.csv$data5)
exp2009.csv$data6 <- 		as.integer(exp2009.csv$data6)
exp2009.csv$data7 <- 		as.integer(exp2009.csv$data7)
exp2009.csv$data8 <- 		as.integer(exp2009.csv$data8)
exp2009.csv$data9 <- 		as.integer(exp2009.csv$data9)
exp2009.csv$data10 <- 		as.integer(exp2009.csv$data10)
exp2009.csv$question <- 	factor(exp2009.csv$question)
exp2009.csv$row <- 			factor(exp2009.csv$row)

exp2010.csv$inst_id <- 		factor(exp2010.csv$inst_id)
exp2010.csv$year <- 		factor(exp2010.csv$year)
exp2010.csv$hbcu_flag <-	factor(exp2010.csv$hbcu_flag)
exp2010.csv$med_sch_flag <- factor(exp2010.csv$med_sch_flag)
exp2010.csv$hhe_flag <- 	factor(exp2010.csv$hhe_flag)
exp2010.csv$toi_code <- 	factor(exp2010.csv$toi_code)
exp2010.csv$hdg_code <- 	factor(exp2010.csv$hdg_code)
exp2010.csv$toc_code <- 	factor(exp2010.csv$toc_code)
exp2010.csv$inst_name_long<-factor(exp2010.csv$inst_name_long)
exp2010.csv$inst_city <- 	factor(exp2010.csv$inst_city)
exp2010.csv$inst_zip <- 	factor(exp2010.csv$inst_zip)
exp2010.csv$line <- 		factor(exp2010.csv$line)
exp2010.csv$data1 <- 		as.integer(exp2010.csv$data1)
exp2010.csv$data2 <- 		as.integer(exp2010.csv$data2)
exp2010.csv$data3 <- 		as.integer(exp2010.csv$data3)
exp2010.csv$data4 <- 		as.integer(exp2010.csv$data4)
exp2010.csv$data5 <- 		as.integer(exp2010.csv$data5)
exp2010.csv$data6 <- 		as.integer(exp2010.csv$data6)
exp2010.csv$data7 <- 		as.integer(exp2010.csv$data7)
exp2010.csv$data8 <- 		as.integer(exp2010.csv$data8)
exp2010.csv$data9 <- 		as.integer(exp2010.csv$data9)
exp2010.csv$data10 <- 		as.integer(exp2010.csv$data10)
exp2010.csv$question <- 	factor(exp2010.csv$question)
exp2010.csv$row <- 			factor(exp2010.csv$row)

exp2011.csv$inst_id <- 		factor(exp2011.csv$inst_id)
exp2011.csv$year <- 		factor(exp2011.csv$year)
exp2011.csv$hbcu_flag <-	factor(exp2011.csv$hbcu_flag)
exp2011.csv$med_sch_flag <- factor(exp2011.csv$med_sch_flag)
exp2011.csv$hhe_flag <- 	factor(exp2011.csv$hhe_flag)
exp2011.csv$toi_code <- 	factor(exp2011.csv$toi_code)
exp2011.csv$hdg_code <- 	factor(exp2011.csv$hdg_code)
exp2011.csv$toc_code <- 	factor(exp2011.csv$toc_code)
exp2011.csv$inst_name_long<-factor(exp2011.csv$inst_name_long)
exp2011.csv$inst_city <- 	factor(exp2011.csv$inst_city)
exp2011.csv$inst_zip <- 	factor(exp2011.csv$inst_zip)
exp2011.csv$line <- 		factor(exp2011.csv$line)
exp2011.csv$data1 <- 		as.integer(exp2011.csv$data1)
exp2011.csv$data2 <- 		as.integer(exp2011.csv$data2)
exp2011.csv$data3 <- 		as.integer(exp2011.csv$data3)
exp2011.csv$data4 <- 		as.integer(exp2011.csv$data4)
exp2011.csv$data5 <- 		as.integer(exp2011.csv$data5)
exp2011.csv$data6 <- 		as.integer(exp2011.csv$data6)
exp2011.csv$data7 <- 		as.integer(exp2011.csv$data7)
exp2011.csv$data8 <- 		as.integer(exp2011.csv$data8)
exp2011.csv$data9 <- 		as.integer(exp2011.csv$data9)
exp2011.csv$data10 <- 		as.integer(exp2011.csv$data10)
exp2011.csv$question <- 	factor(exp2011.csv$question)
exp2011.csv$row <- 			factor(exp2011.csv$row)

exp2012.csv$inst_id <- 		factor(exp2012.csv$inst_id)
exp2012.csv$year <- 		factor(exp2012.csv$year)
exp2012.csv$hbcu_flag <-	factor(exp2012.csv$hbcu_flag)
exp2012.csv$med_sch_flag <- factor(exp2012.csv$med_sch_flag)
exp2012.csv$hhe_flag <- 	factor(exp2012.csv$hhe_flag)
exp2012.csv$toi_code <- 	factor(exp2012.csv$toi_code)
exp2012.csv$hdg_code <- 	factor(exp2012.csv$hdg_code)
exp2012.csv$toc_code <- 	factor(exp2012.csv$toc_code)
exp2012.csv$inst_name_long<-factor(exp2012.csv$inst_name_long)
exp2012.csv$inst_city <- 	factor(exp2012.csv$inst_city)
exp2012.csv$inst_zip <- 	factor(exp2012.csv$inst_zip)
exp2012.csv$line <- 		factor(exp2012.csv$line)
exp2012.csv$data1 <- 		as.integer(exp2012.csv$data1)
exp2012.csv$data2 <- 		as.integer(exp2012.csv$data2)
exp2012.csv$data3 <- 		as.integer(exp2012.csv$data3)
exp2012.csv$data4 <- 		as.integer(exp2012.csv$data4)
exp2012.csv$data5 <- 		as.integer(exp2012.csv$data5)
exp2012.csv$data6 <- 		as.integer(exp2012.csv$data6)
exp2012.csv$data7 <- 		as.integer(exp2012.csv$data7)
exp2012.csv$data8 <- 		as.integer(exp2012.csv$data8)
exp2012.csv$data9 <- 		as.integer(exp2012.csv$data9)
exp2012.csv$data10 <- 		as.integer(exp2012.csv$data10)
exp2012.csv$question <- 	factor(exp2012.csv$question)
exp2012.csv$row <- 			factor(exp2012.csv$row)

# when the columns of each of the frames are typed the same, then we can combine all the frames into one single frame

##
## -------------------- Single frame -----------------------
##

dataframe <- rbind(	exp2000.csv, 
					exp2001.csv, 
					exp2002.csv, 
					exp2003.csv, 
					exp2004.csv, 
					exp2005.csv, 
					exp2006.csv, 
					exp2007.csv, 
					exp2008.csv, 
					exp2009.csv, 
					exp2010.csv, 
					exp2011.csv, 
					exp2012.csv)


##
## -------------------- Type columns -----------------------
##





