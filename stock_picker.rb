def stock_picker(prices)
    highest_price = 0
    buy_sell_days = []
    prices.each_with_index do |price, buy_idx|
        break if buy_idx == prices.length - 1
        sell_idx = buy_idx + 1
        while sell_idx < prices.length
            if prices[sell_idx] - prices[buy_idx] > highest_price
                highest_price = prices[sell_idx] - prices[buy_idx]
                buy_sell_days = [buy_idx, sell_idx]
            end
            sell_idx += 1
        end
    end
    return buy_sell_days
end

p stock_picker([17,3,6,9,1,8,6,10,15])
