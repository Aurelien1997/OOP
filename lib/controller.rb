require 'item'
require 'view'

class Controller 
    def  consult_item
        items = Item.all
        View.all(items)
    end
end
