data <- read.csv('AUDUSD.csv', header=TRUE, sep=';', row.names='X.DATE.')
colnames(data) <- c('AUDUSD')
BZ <- read.csv('BZ.csv', header=TRUE, sep=';', row.names='X.DATE.')
CHFUSD <- read.csv('CHFUSD.csv', header=TRUE, sep=';', row.names='X.DATE.')
EURUSD <- read.csv('EURUSD.csv', header=TRUE, sep=';', row.names='X.DATE.')
GC <- read.csv('GC.csv', header=TRUE, sep=';')
GC = GC[!duplicated(GC['X.DATE.']),]
row.names(GC) <- GC[,'X.DATE.']
PL <- read.csv('PL.csv', header=TRUE, sep=';', row.names='X.DATE.')
SPX <- read.csv('SPX.csv', header=TRUE, sep=';', row.names='X.DATE.')
USDNOK <- read.csv('USDNOK.csv', header=TRUE, sep=';', row.names='X.DATE.')
data$BZ <- NA
data[row.names(BZ),'BZ'] <- BZ['X.BZ.']
data$CHFUSD <- NA
data[row.names(CHFUSD),'CHFUSD'] <- CHFUSD['X.CLOSE.']
data$EURUSD <- NA
data[row.names(EURUSD),'EURUSD'] <- EURUSD['X.EURUSD.']
data$GC <- NA
data[row.names(GC),'GC'] <- GC['X.GC.']
data$PL <- NA
data[row.names(PL),'PL'] <- PL['X.PL.']
data$SPX <- NA
data[row.names(SPX),'SPX'] <- SPX['X.SPX.']
data$USDNOK <- NA
data[row.names(USDNOK),'USDNOK'] <- USDNOK['X.CLOSE.']
data <- data[complete.cases(data), ]
write.csv(data, 'Stocks.csv', row.names=TRUE)