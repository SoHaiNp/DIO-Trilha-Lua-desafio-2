local Actions = {}

Actions.list = {}

function Actions.build()
    --Reset list
    Actions.list = {}

    --Ataque
    local whipAttack = {

        description = "Atacar com chicote",
        execute = function (playerData, creatureData)
            -- 1. Definir chance de sucesso
            local successChance = creatureData.speed == 0 and 1 or playerData.speed / creatureData.speed
            local success = math.random() <= successChance

            -- 2. Calcular dano
            local rawDamage = playerData.attack - math.random() * creatureData.defense
            local damage = math.max(1, math.ceil(rawDamage))

            -- 3. Apresentar resultado como print
            if success then
                print(string.format("Você acertou o %s e causou %d pontos de dano!", creatureData.name, damage))
                
                -- 4. Aplicar o dano em caso de sucesso
                creatureData.health = creatureData.health - damage
            else
                print("A criatura desviou do ataque...")
            end
        end
    }

    local regenPotion = {

        description = "Usar poção",
        requirement = function (playerData, creatureData)
            return playerData.potions >=1
        end,

        execute = function (playerData, creatureData)
            playerData.potions = playerData.potions - 1

            local regenPoints = math.random(6)
            playerData.health = math.min(playerData.maxHealth, playerData.health + regenPoints)
            print(string.format("Você usou uma poção e recuperou %d pontos de vida!", regenPoints))
        end
    }

    -- Populate list
    Actions.list[#Actions.list+1] = whipAttack
    Actions.list[#Actions.list+1] = regenPotion
end

---Returna uma lista de ações válidas
---@param playerData table Definição do jogador
---@param creatureData table Definição da criatura
---@return table
function Actions.getValidActions(playerData, creatureData)
    local validActions = {}

    for _, action in pairs(Actions.list) do
        local requirement = action.requirement
        local isValid = requirement == nil or requirement(playerData, creatureData)
        if isValid then
            validActions[#validActions+1] = action
        end
    end
    return validActions
end

return Actions