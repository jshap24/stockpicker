def stock_picker(pricelist)
    max = pricelist[0]
    low_index = 0
    profit = 0
    stockpicks = []
    min = pricelist[0]

    pricelist.each_with_index do |price, index|
        if price < min
            min = price;
            low_index = index
        end

        if price - min > profit
           profit = price - min
           stockpicks = [low_index, index]
        end
    end
    p stockpicks
end



stock_picker([17,3,6,9,15,8,6,1,10])

# should return   => [1,4]  # for a profit of $15 - $3 == $12


#Pseudocode
#find the greatest difference between a lower index and a higher index