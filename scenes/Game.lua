local Game = {}

local utilsPocket = require("util.Utils")
local Hero = require("entities.player.Player")
local heroActions = require("entities.player.Actions")
local Enemy = require("entities.monster.Monster")
local enemySprites = require("miscelanous.Sprites")
local enemyRandomizer = 0

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
        Game.showEnemyStats()
    end

end

function Game.fightScene()

    heroActions.build()

    while true do

        local currentEnemy = nil

        if enemyRandomizer == Enemy.theSkeleton.id then
            currentEnemy = Enemy.theSkeleton
            enemySprites.skeletonSprite()
            Enemy.displaySkeletonStats()
        elseif enemyRandomizer == Enemy.theZombie.id then
            currentEnemy = Enemy.theZombie
            enemySprites.zombieSprite()
            Enemy.displayZombieStats()
        elseif enemyRandomizer == Enemy.theBat then
            currentEnemy = Enemy.theBat
            enemySprites.batSprite()
            Enemy.displayBatStats()
        end

        print("+-----------------------------------------------------------------+")
        print("| O que você deseja fazer?")
        print("+-----------------------------------------------------------------+")
        local validPlayerActions = heroActions.getValidActions(Hero, currentEnemy)
        for i, action in pairs(validPlayerActions) do
            print(string.format("%d. %s", i, action.description))
        end

        local chosenIndex = utilsPocket.inGameQuestions()
        local chosenAction = validPlayerActions[chosenIndex]
        local isActionValid = chosenAction ~= nil

        if isActionValid then
            chosenAction.execute(Hero, currentEnemy)
        end
        os.execute("cls")
    end
end

---Randomiza os monstros que podem aparecer durante uma batalha.
function Game.showEnemyStats()

    local id = math.random(3)

    if id == 1 then
        utilsPocket.aMonsterAppearsQuote()
        Enemy.displaySkeletonStats()
        enemyRandomizer = 1
    elseif id == 2 then
        utilsPocket.aMonsterAppearsQuote()
        Enemy.displayZombieStats()
        enemyRandomizer = 2
    elseif id == 3 then
        utilsPocket.aMonsterAppearsQuote()
        Enemy.displayBatStats()
        enemyRandomizer = 3
    end

print([[
+------------------------------------------------------------+
|___Press 1 to procceed to the fight_________________________|
]])

    local option = io.read("*n")

    if option == 1 then
        os.execute("cls")
        Game.fightScene()
    end

end

return Game