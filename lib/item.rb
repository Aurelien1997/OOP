require 'csv'

class Item
    attr_accessor :id, :name, :price, :quantity, :brand 

    def initialize(id, name, price, quantity, brand)
        @id = id
        @name = name
        @price = price
        @quantity = quantity
        @brand = brand
    end

    def self.all
        item_temporary = []
        all_items = []
        CSV.foreach("db/item.csv") do |row|
          item_temporary = Item.new(row[0], row[1], row[2], row[3],  row[4])
          all_items << item_temporary
        end
        return all_items
    end
    

end




