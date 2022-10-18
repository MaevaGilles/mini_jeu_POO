class Player
    attr_accessor :name, :life_points 

    def initialize(name)
        @name = name.to_s
        @life_points = 10
    end

    def show_state
        puts "Le joueur #{@name} a #{@life_points} points de vie !"
    end

    def gets_damage(damage_received) 
        @life_points = @life_points - damage_received
        if @life_points <= 0

            puts "Le joueur #{@name} a été tué :'( !"
        end
    end

    def attacks(target)
        puts "#{@name} attaque le joueur #{target.name}"
        force = compute_damage
        target.gets_damage(force)
        puts "Il lui inflige #{force} points de dommages."
    end

    def compute_damage
        return rand(1..6)
    end
    
end




