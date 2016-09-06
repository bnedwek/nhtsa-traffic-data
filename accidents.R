library(dplyr)

setwd('/home/bnedwek/Documents/dev/nhtsa-traffic-data')

load('data/accident.Rda')
load('data/person.Rda')

# Read GLCs
glcs <- read.csv('data/glcs.csv', skip=1, stringsAsFactors=F)
names(glcs) <- tolower(names(glcs))

# Read urban population data (2010 census)

pop.urban <- read.csv('data/PctUrbanRural_State.txt', stringsAsFactors=F)
names(pop.urban) <- tolower(names(pop.urban))

# Portland and some suburbs #
#---------------------------#
portland  <- filter(accident, state == 41, city == 1650)
beaverton <- filter(accident, state == 41, city == 180)
tigard    <- filter(accident, state == 41, city == 2065)
hillsboro <- filter(accident, state == 41, city == 1000)
gresham   <- filter(accident, state == 41, city == 880)
