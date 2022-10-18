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
        puts "#{@name} inflige #{force} points de dommages à #{target.name}."
    end

    def rounds(a)
        a = 1
    end
    def compute_damage
        return rand(1..6)
    end
    
end

class HumanPlayer < Player 
    attr_accessor :weapon_level, :name

    def initialize(name)
        @weapon_level = 1
        super(name)
        @life_points = 100
    end

    def show_state
        puts "Le joueur #{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}!"
    end

    def compute_damage
        rand(1..6) * @weapon_level    
    end

    def search_weapon
        new_level = rand(1..6) 
        puts "Tu as trouvé une arme de niveau #{new_level}"
        if new_level > @weapon_level
            puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
        else 
            puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
        end

    end

    def search_health_pack
        search = rand(1..6)
        puts search

        if search == 1
            puts "Tu n'as rien trouvé... "
        elsif search == 2 || 3 || 4 || 5
            puts "Bravo, tu as trouvé un pack de +50 points de vie !"
            if @life_points + 50 > 100
                @life_points = 100
            else
                @life_points += 50
            end
        elsif search == 6
            puts "Waow, tu as trouvé un pack de +80 points de vie !"
            if @life_points + 80 > 100
                @life_points = 100
            else
                @life_points += 80
            end
        end

    end

end


