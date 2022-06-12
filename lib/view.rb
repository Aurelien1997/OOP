require_relative 'controller' 
require_relative 'item' 

class View

  def welcome 
    puts "BIENVENUE DANS L'INVENTAIRE STORE"
    puts "\nSalut, que veux-tu faire ?"
    puts "\n1. Je veux consulter l'inventaire"
    puts "4. Je veux quitter l'app"
  end

  def details
    puts "\nQuel Item veux-tu prendre?"
    choice = gets.chomp.to_i
    item = Item.find(choice)
    puts "\n Item numero : #{item.id}"
    puts "#{item.id} #{item.name} #{item.price} #{item.quantity} #{item.brand}"
  end

  def self.all(all_items)
      all_items.each do |item|
        puts "#{item.id} #{item.name} #{item.brand} #{item.quantity} #{item.price}"
      end
  end

end