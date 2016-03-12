def stock_picker(stocks)
  min_price_index = 0
  picked_indexes = { buy: 0, sell: nil }
  picked_difference = 0

  1.upto(stocks.length - 1) do |current_index|
    current_price = stocks[current_index]

    if current_price < stocks[min_price_index]
      min_price_index = current_index
      next
    end

    original_buy_index = picked_indexes[:buy]
    original_buy = stocks[original_buy_index]
    original_buy_difference = current_price - original_buy

    if original_buy_difference >= picked_difference
      picked_indexes[:sell] = current_index
      picked_difference = original_buy_difference
    end

    next if picked_indexes[:buy] == min_price_index

    new_buy = stocks[min_price_index]
    new_buy_difference = current_price - new_buy

    if new_buy_difference >= picked_difference
      picked_indexes[:buy] = min_price_index
      picked_indexes[:sell] = current_index
      picked_difference = new_buy_difference
    end
  end

  return nil unless picked_indexes[:sell]

  [picked_indexes[:buy], picked_indexes[:sell]]
end

p stock_picker([4, 3, 2, 1])
