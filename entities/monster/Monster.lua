local Monster = {}

local utilPocket = require("util.Utils")

Monster.speed = 0;

Monster.theSkeleton = {
    id = 1,
    sprite = " 💀",
    name = "Skeleton",
    description = "A dead warrior from a long time ago.",
    maxHealth = 15,
    health = 15,
    attack = 3,
    defense = 5,
    speed = 5
}

function Monster.displaySkeletonStats()

    --Formatar demonstração de nome e sprite.
    local skeletonName = "Name: " .. Monster.theSkeleton.name .. Monster.theSkeleton.sprite
    while string.len(skeletonName) < 59 do skeletonName = skeletonName .. " " end

    --Formatar demonstração da descrição.
    local skeletonDescription = "Description: " .. Monster.theSkeleton.description
    while string.len(skeletonDescription) < 57 do skeletonDescription = skeletonDescription .. " " end

    --Calculo de porcentagem de vida e demonstração.
    local skeletonCurrentHealthPercentage = math.floor((Monster.theSkeleton.health / Monster.theSkeleton.maxHealth) * 10)
    local skeletonTotalHealth = "Health points:      " .. utilPocket.displayAttributePointsBar(skeletonCurrentHealthPercentage)
    while string.len(skeletonTotalHealth) < 77 do skeletonTotalHealth = skeletonTotalHealth .. " " end

    --Formatar demonstração dos pontos de ataque.
    local skeletonAttack = "Attack points:      " .. utilPocket.displayAttributePointsBar(Monster.theSkeleton.attack)
    while string.len(skeletonAttack) < 77 do skeletonAttack = skeletonAttack .. " " end

    --Formatar demonstração dos pontos de defesa.
    local skeletonDefense = "Defense points:     " .. utilPocket.displayAttributePointsBar(Monster.theSkeleton.defense)
    while string.len(skeletonDefense) < 77 do skeletonDefense = skeletonDefense .. " " end

    --Formatar demonstração dos pontos de defesa.
    local skeletonSpeed = "Speed points:       " .. utilPocket.displayAttributePointsBar(Monster.theSkeleton.speed)
    while string.len(skeletonSpeed) < 77 do skeletonSpeed = skeletonSpeed .. " " end

    --Formatar dados completos do monstro no pergaminho.
    local skeletonDisplayData = string.format("%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s", "|", skeletonName, "|.", "|", skeletonDescription, "|.", "|", skeletonTotalHealth, "|.", "|", skeletonAttack, "|.", "|", skeletonDefense, "|.", "|", skeletonSpeed, "|.")

    --Funções para demonstrar o texto e o pergaminho com os dados do monstro.
    utilPocket.scrollDescriptionHeader()
    print(skeletonDisplayData)
    utilPocket.scrollDescriptionFooter()
end

Monster.theZombie = {
    id = 2,
    sprite = " 🧟",
    name = "Zombie",
    description = "The true living-dead rise to fight.",
    maxHealth = 8,
    health = 8,
    attack = 2,
    defense = 2,
    speed = 2
}

function Monster.displayZombieStats()

    --Formatar demonstração de nome e sprite.
    local zombieName = "Name: " .. Monster.theZombie.name .. Monster.theZombie.sprite
    while string.len(zombieName) < 59 do zombieName = zombieName .. " " end

    --Formatar demonstração da descrição.
    local zombieDescription = "Description: " .. Monster.theZombie.description
    while string.len(zombieDescription) < 57 do zombieDescription = zombieDescription .. " " end

    --Calculo de porcentagem de vida e demonstração.
    local zombieCurrentHealthPercentage = math.floor((Monster.theZombie.health / Monster.theZombie.maxHealth) * 10)
    local zombieTotalHealth = "Health points:      " .. utilPocket.displayAttributePointsBar(zombieCurrentHealthPercentage)
    while string.len(zombieTotalHealth) < 77 do zombieTotalHealth = zombieTotalHealth .. " " end

    --Formatar demonstração dos pontos de ataque.
    local zombieAttack = "Attack points:      " .. utilPocket.displayAttributePointsBar(Monster.theZombie.attack)
    while string.len(zombieAttack) < 77 do zombieAttack = zombieAttack .. " " end

    --Formatar demonstração dos pontos de defesa.
    local zombieDefense = "Defense points:     " .. utilPocket.displayAttributePointsBar(Monster.theZombie.defense)
    while string.len(zombieDefense) < 77 do zombieDefense = zombieDefense .. " " end

    --Formatar demonstração dos pontos de defesa.
    local zombieSpeed = "Speed points:       " .. utilPocket.displayAttributePointsBar(Monster.theZombie.speed)
    while string.len(zombieSpeed) < 77 do zombieSpeed = zombieSpeed .. " " end

    --Formatar dados completos do monstro no pergaminho.
    local zombieDisplayData = string.format("%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s", "|", zombieName, "|.", "|", zombieDescription, "|.", "|", zombieTotalHealth, "|.", "|", zombieAttack, "|.", "|", zombieDefense, "|.", "|", zombieSpeed, "|.")

    --Funções para demonstrar o texto e o pergaminho com os dados do monstro.
    utilPocket.scrollDescriptionHeader()
    print(zombieDisplayData)
    utilPocket.scrollDescriptionFooter()
end

Monster.theBat = {
    id = 3,
    sprite = " 🦇",
    name = "Bat",
    description = "A creature that can fly and suck you blood.",
    maxHealth = 5,
    health = 5,
    attack = 2,
    defense = 2,
    speed = 8
}

function Monster.displayBatStats()

    --Formatar demonstração de nome e sprite.
    local batName = "Name: " .. Monster.theBat.name .. Monster.theBat.sprite
    while string.len(batName) < 59 do batName = batName .. " " end

    --Formatar demonstração da descrição.
    local batDescription = "Description: " .. Monster.theBat.description
    while string.len(batDescription) < 57 do batDescription = batDescription .. " " end

    --Calculo de porcentagem de vida e demonstração.
    local batCurrentHealthPercentage = math.floor((Monster.theBat.health / Monster.theBat.maxHealth) * 10)
    local batTotalHealth = "Health points:      " .. utilPocket.displayAttributePointsBar(batCurrentHealthPercentage)
    while string.len(batTotalHealth) < 77 do batTotalHealth = batTotalHealth .. " " end

    --Formatar demonstração dos pontos de ataque.
    local batAttack = "Attack points:      " .. utilPocket.displayAttributePointsBar(Monster.theBat.attack)
    while string.len(batAttack) < 77 do batAttack = batAttack .. " " end

    --Formatar demonstração dos pontos de defesa.
    local batDefense = "Defense points:     " .. utilPocket.displayAttributePointsBar(Monster.theBat.defense)
    while string.len(batDefense) < 77 do batDefense = batDefense .. " " end

    --Formatar demonstração dos pontos de defesa.
    local batSpeed = "Speed points:       " .. utilPocket.displayAttributePointsBar(Monster.theBat.speed)
    while string.len(batSpeed) < 77 do batSpeed = batSpeed .. " " end

    --Formatar dados completos do monstro no pergaminho.
    local batDisplayData = string.format("%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s\n%5s %s %s", "|", batName, "|.", "|", batDescription, "|.", "|", batTotalHealth, "|.", "|", batAttack, "|.", "|", batDefense, "|.", "|", batSpeed, "|.")

    --Funções para demonstrar o texto e o pergaminho com os dados do monstro.
    utilPocket.scrollDescriptionHeader()
    print(batDisplayData)
    utilPocket.scrollDescriptionFooter()
end

return Monster