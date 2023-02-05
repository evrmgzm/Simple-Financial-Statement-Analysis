  revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
  expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
  
  profit <- revenue - expenses
  profitAfterTax <- round(profit * 0.7, 2)
  profitMargin <- round((profitAfterTax / revenue),2)* 100
  total <- 0
  
  for(i in profitAfterTax){
    total <- total + i
  }
  meanOfYear <- total / 12
  
  meanOfYear2 <- mean(profitAfterTax)
  
  goodMonths <- profitAfterTax > meanOfYear
  badMonths <- !goodMonths
  
  bestMonth <- max(profitAfterTax) == profitAfterTax
  worstMonth <- min(profitAfterTax) == profitAfterTax
  
  revenue.1000 <- round(revenue / 1000 , 0)
  expenses.1000 <- round(expenses / 1000 , 0)
  profit.1000 <- round(profit / 1000 , 0)
  profitAfterTax.1000 <- round(profitAfterTax / 1000 , 0)
  
  m <- rbind(
    revenue.1000,
    expenses.1000,
    profit.1000,
    profitAfterTax.1000,
    profitMargin,
    goodMonths,
    badMonths,
    bestMonth,
    worstMonth
 
  )
  m
  