require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josianne")
player2 = Player.new("José")
human1 = HumanPlayer.new("Maëva")

 human1.search_health_pack

#puts "[DEBUT DU JEU]"
#sleep 1

#puts "Ladies & Gentlemen BIENVENUUUUUE"
#sleep 1

#puts "À ma droite #{player1.name}!"
#sleep 1

#puts "À ma gauche #{player2.name}!"
#sleep 1

#x = 1
#while player1.life_points>0 && player2.life_points>0 

   # puts "Voici l'état de chaque joueur : "
   # sleep 1

  #  puts player1.show_state
   # sleep 1

  #  puts player2.show_state
   # sleep 1

   # puts "-------ROUND #{x}-------"
  #  x += 1

 #   puts "Laisson #{player1.name} lancer les hostilités..."
   # sleep 1

  #  puts player1.attacks(player2)
      #  if player2.life_points<=0 
      #  break
      #  end
   # sleep 1
  #  puts player2.attacks(player1)
 #   sleep 1
#end     




