local Menu = {}

local Game = require("scenes.Game")

---
---Função principal do Menu, responsável por plotar a tela inicial do jogo.
---
function Menu.menuScreen()
    print([[
    
     /\
    /  \
    \  /
     )(
  /\/  \/\
 /   _    \
|   / \   |
|  |   |  |    _   _                       _
|  |   |  |   | | | |                     (_)
|  |  __\_|___| |_| | _____   ____ _ _ __  _  __ _
|  | / _` / __| __| |/ _ \ \ / / _` | '_ \| |/ _` |
|  || (_| \__ \ |_| |  __/\ V / (_| | | | | | (_| |
|  | \__,_|___/\__|_|\___| \_/ \__,_|_| |_|_|\__,_|
|  |    / |                  
|  |   |  |
|  |   |  |
|   \_/   |
\        /
 \/\  /\/
    )(
   /  \
   \  /
    \/
    
+---------------------------------------------------+
|                 ✝ MENU OPTIONS ✝                  |
+---------------------------------------------------+
Press 1.)........ - Start Game
Press 2.)........ - Guide
Press 3.)........ - Credits    
+---------------------------------------------------+

    ]])

    local option = io.read("*n")

    if option == 3 then
        os.execute("cls")
        Menu.creditsScene()
    elseif option == 2 then
        os.execute("cls")
        Menu.guideScene()
    elseif option == 1 then
        os.execute("cls")
        Game.introduction()
    end
end


function Menu.guideScene()
    print([[
    
_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
_/_/_/_/_/  Guide  _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

+------------------------------------------------------------+
|          ✝ Castlevania - Curse of the prompt ✝             |
+------------------------------------------------------------+
|                                                            |
|   In this game you are a vampire hunter from the Belmont   |
|   family and your goal is to destroy the monsters that a   |
|   ppear in your command prompt!                            |
|   Be careful and keep watch of your life points, because   |
|   if you reach zero life points the game is over!          |
|                                                            |
+------------------------------------------------------------+
    
+------------------------------------------------------------+
|___Press 1 to return________________________________________|

    ]])

    local option = io.read("*n")

    if option == 1 then
        os.execute("cls")
        Menu.menuScreen()
    end
end

---
---Função responsável por plotar a tela de créditos do jogo.
---
function Menu.creditsScene()
    print([[
    
_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
_/_/_/_/_/  Credits  _/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/
_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/_/

+-------------------------------------------------+
|    Game: Castlevania Curse of the prompt        |
| Console: Command terminal                       |
|  Author: Vale, Luiz                             |
|  GitHub: https://github.com/SoHaiNp             |
| Version: 1.0                                    |
|____Date:_22/07/23_______________________________|
    
+-------------------------------------------------+
|___Press 1 to return_____________________________|

    ]])

    local option = io.read("*n")

    if option == 1 then
        os.execute("cls")
        Menu.menuScreen()
    end

end

return Menu