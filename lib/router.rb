require 'controller'

class Router

  def initialize
    @controller =  Controller.new
    @view = View.new
  end 

  def perform 
    @view.welcome
    while true

      params = gets.chomp.to_i 

      case params 
      when 1
        puts "\nTu as choisi de consulter l'inventaire" 
        @controller.consult_item
        @view.details
      when 4
        puts "À bientôt !"
        break
      else
        puts "Ce choix n'existe pas, merci de ressayer" 
      end
    end

  end

end