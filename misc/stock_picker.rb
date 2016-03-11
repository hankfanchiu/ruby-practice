def stock_picker(stocks)
  minimum = stocks.first
  minimum_index = 0
  picked_stock = [0, nil]
  picked_stock_difference = 0

  1.upto(stocks.length - 1) do |index|
    current = stocks[index]

    if current < minimum
      minimum = current
      minimum_index = index
      next
    end

    original_buy_difference = current - stocks[picked_stock.first]

    if original_buy_difference > picked_stock_difference
      picked_stock[1] = index
      picked_stock_difference = original_buy_difference
    end

    next if picked_stock.first == minimum_index

    new_buy_difference = current - minimum

    if new_buy_difference > picked_stock_difference
      picked_stock = [minimum_index, index]
      picked_stock_difference = new_buy_difference
    end
  end

  picked_stock
end

p stock_picker([6, 7, 1, 10])
