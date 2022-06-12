require 'controller'


class Router

  def initialize
    @controller =  Controller.new
  end 

  def perform 
    puts "BIENVENUE DANS L'INVENTAIRE STORE"

    while true

      puts "Salut, que veux-tu faire ?"
      puts "1. Je veux consulter l'inventaire"

      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i 

      case params 
      when 1
        puts "Tu as choisi de consulter l'inventaire" 
        @controller.consult_item

      when 4
        puts "À bientôt !"
        break

      else
        puts "Ce choix n'existe pas, merci de ressayer" 

      end
    end
  end

end