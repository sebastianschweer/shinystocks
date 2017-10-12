###
### Set of functions for the app
###

# install libraries (for dev purposes)
source("lib_install.R")

getStocks <- function(symbol, period, end, horizon, result_type, normalization){
  # Returns list object of the type Stock, with stock values over a given period,
  # and the development of the stock price after this epoch.
  #
  # Args:
  #   symbol: Symbol of the stock, short name of company.
  #   period: Length of the observation of the time series in days.
  #   end: Date of the last observed date
  #   horizon: Length of gap between last observed date and the resultant 
  #             value of the stock, in days.
  #   result_type: Defines the type of the returned result. "Binary" 
  #                for a simple up/down answer.
  #   normalization: Type of normalization to apply to stock prices. 
  #                  Supported: "relative", normalized with first observation.
  #
  # Returns:
  #   List object with element "history" (a data frame) and "result" (a factor).
  getSymbols("AAPL", src = "yahoo", from = start, to = end)
  
}

start <- as.Date("2014-01-01")
end <- as.Date("2017-10-01")




