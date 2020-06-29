def stock_picker(stock_prices)
  i = 0
  best_profit = 0
  buy_day = 0
  sell_day = 0
  stock_prices.each do |stock_day|
    index = stock_prices.index(stock_day)
    buy_price = stock_prices[0..index].min
    sell_price = stock_day - buy_price
    if sell_price > best_profit
      best_profit = sell_price
      buy_day = stock_prices.index(stock_prices[0..index].min)
      sell_day = index
    end

  end
  p "Buy on day #{buy_day} and sell on day #{sell_day} for a profit of #{best_profit}"
end  




stock_picker([17,3,6,9,15,8,6,1,10,23,1,45,6,7,8,9,24,34])