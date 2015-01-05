## R Notes - HERD analysis

# after importing data into frames using the 'herd analysis.R' script, this file will being with the exploratory data analysis

##
## ------ DATA Reduction: simplification by looking only at broad categories of funding --------------
##

# instead of mapping the all row codes from pre-2009 to post-2009 data sets, let's single out the rows
# that are of particular interest and look at that subset of the data for analysis.  We will use the space
# below to identify row definitions.

## ----- restricting to funding by source type

#   Item 1 - Academic R&D Funds by Source
#   1100 Total							1g
#   1110 Federal government				1a
#   1125 State and local governments	1b
#   1150 Industry						1c
#   1160 Institution funds				1e4
#   1175 All other sources				1f

dataframe <- subset(dataframe, line == 1100 | line == 1110 | line == 1125 | line == 1150 | line == 1160 | line == 1175)

## ----- narrowing the set of institutions

# hbcu_flag = FALSE (not an HBCU)
# med_sch_flag = FALSE (does not have a med school)
# hdg_code = 2 (highest degree is masters)
# toi_code = 1 (academic institution)

dataframe <- subset(dataframe, med_sch_flag == "N" )  # school has no medical school
dataframe <- subset(dataframe, hdg_code == "2" )  # highest degree is a masters
dataframe <- subset(dataframe, hbcu_flag == "FALSE" )  # school is not an HBCU
dataframe <- subset(dataframe, toi_code == "1" )  # it is an academic institution

# for this subset, we can limit ourselves to data1
