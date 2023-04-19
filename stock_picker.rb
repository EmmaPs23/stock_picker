def stock_picker(stock_prices)
    buy_day = 0
    sell_day = 0
    profit = 0
    max_profit = 0

    (0...stock_prices.length).each do |i|
        (i+1...stock_prices.length).each do |j|
            profit = stock_prices[j] - stock_prices[i]

            if profit > max_profit
                max_profit = profit
                buy_day = i
                sell_day = j
            end

        end
    end
    p [buy_day, sell_day]
end

stock_picker([17,3,6,9,15,8,6,1,10])