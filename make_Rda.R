DATA_DIR <- 'data/FARS2015NationalCSV'
DEV_DIR  <- '~/Documents/dev/nhtsa-traffic-data/data'

MakeRda <- function(stub) {

	infile <- paste(stub, '.csv', sep='')

	data <- read.csv(paste(DATA_DIR, infile, sep='/'), stringsAsFactors=F)
	names(data) <- tolower(names(data))

	assign(stub, data)

	outfile <- paste(stub, '.Rda', sep='')
	save(list=c(stub), file=paste(DEV_DIR, outfile, sep="/"))

}

data.files <- c('accident', 'damage', 'distract', 'drimpair', 'factor', 'maneuver', 'person',
	'safetyeq', 'vehicle', 'violatn', 'vision')

sapply(data.files, MakeRda)
