require 'item'
require 'view'

class Controller 

    def  consult_item
        items = Item.all
        View.all(items)
    end

 
    def  create
        # rentrer les attributs ici
    end

 
    def  delete
        # rentrer les attributs ici
    end
end
