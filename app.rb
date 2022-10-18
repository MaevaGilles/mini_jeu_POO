require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josianne")
player2 = Player.new("José")

puts "[DEBUT DU JEU]"
sleep 1
puts "Ladies & Gentlemen BIENVENUUUUUE"
sleep 1
puts "À ma droite #{player1.name}!"
sleep 1
puts "À ma gauche #{player2.name}!"
puts "say *FIGHT* pour lancer le combat"
sleep 1
gets.chomp
puts