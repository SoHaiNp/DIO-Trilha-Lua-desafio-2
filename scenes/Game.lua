local Game = {}

function Game.introduction()
    print([[
    
+------------------------------------------------------------+
|          ✝ Castlevania - Curse of the prompt ✝             |
+------------------------------------------------------------+
|   What an horrible night to have a curse...I'm a Belmont   |
|   and i must withstand the creatures of the night, let's   |
|   fight!                                                   |
+------------------------------------------------------------+
    
+------------------------------------------------------------+
|___Press 1 to procceed to the fight_________________________|

    ]])

    local option = io.read("*n")

    if option == 1 then
        os.execute("cls")
    end

end

return Game