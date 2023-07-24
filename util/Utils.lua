local Utils = {}

---Função responsável por habilitar o modo UTF-8 no terminal de comando.
function Utils.enableUtf8()
    os.execute("chcp 65001")
end

---Função responsável por preencher linhas que possuirem espaços em branco.
---@param theLineLength number
---@param theString string
function Utils.fillLineBlanks(theLineLength, theString)
    while string.len(theString) < theLineLength do
        return theString .. " "
    end
end

---Função resposável por plotar a porcentagem atual da vida de uma criatura.
---@param attribute number
---@return string
function Utils.displayAttributePointsBar(attribute)
    local fullChar = "▮"
    local emptyChar = "▯"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

---Função responsável por receber uma variável digitada do usuário.
---@return number
function Utils.inGameQuestions()
    io.write("> ")
    local answer = io.read("*n")
    return answer
end

---Função usada para plotar a frase de aparecimento de um monstro.
function Utils.aMonsterAppearsQuote()
    print([[
▄▄▄          ███▄ ▄███▓ ▒█████   ███▄    █   ██████ ▄▄▄█████▓▓█████  ██▀███  
▒████▄       ▓██▒▀█▀ ██▒▒██▒  ██▒ ██ ▀█   █ ▒██    ▒ ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒
▒██  ▀█▄     ▓██    ▓██░▒██░  ██▒▓██  ▀█ ██▒░ ▓██▄   ▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒
░██▄▄▄▄██    ▒██    ▒██ ▒██   ██░▓██▒  ▐▌██▒  ▒   ██▒░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄  
 ▓█   ▓██▒   ▒██▒   ░██▒░ ████▓▒░▒██░   ▓██░▒██████▒▒  ▒██▒ ░ ░▒████▒░██▓ ▒██▒
 ▒▒   ▓▒█░   ░ ▒░   ░  ░░ ▒░▒░▒░ ░ ▒░   ▒ ▒ ▒ ▒▓▒ ▒ ░  ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░
  ▒   ▒▒ ░   ░  ░      ░  ░ ▒ ▒░ ░ ░░   ░ ▒░░ ░▒  ░ ░    ░     ░ ░  ░  ░▒ ░ ▒░
  ░   ▒      ░      ░   ░ ░ ░ ▒     ░   ░ ░ ░  ░  ░    ░         ░     ░░   ░ 
      ░  ░          ░       ░ ░           ░       ░              ░  ░   ░     
 ▄▄▄       ██▓███   ██▓███  ▓█████ ▄▄▄       ██▀███    ██████  ▐██▌           
▒████▄    ▓██░  ██▒▓██░  ██▒▓█   ▀▒████▄    ▓██ ▒ ██▒▒██    ▒  ▐██▌           
▒██  ▀█▄  ▓██░ ██▓▒▓██░ ██▓▒▒███  ▒██  ▀█▄  ▓██ ░▄█ ▒░ ▓██▄    ▐██▌           
░██▄▄▄▄██ ▒██▄█▓▒ ▒▒██▄█▓▒ ▒▒▓█  ▄░██▄▄▄▄██ ▒██▀▀█▄    ▒   ██▒ ▓██▒           
 ▓█   ▓██▒▒██▒ ░  ░▒██▒ ░  ░░▒████▒▓█   ▓██▒░██▓ ▒██▒▒██████▒▒ ▒▄▄            
 ▒▒   ▓▒█░▒▓▒░ ░  ░▒▓▒░ ░  ░░░ ▒░ ░▒▒   ▓▒█░░ ▒▓ ░▒▓░▒ ▒▓▒ ▒ ░ ░▀▀▒           
  ▒   ▒▒ ░░▒ ░     ░▒ ░      ░ ░  ░ ▒   ▒▒ ░  ░▒ ░ ▒░░ ░▒  ░ ░ ░  ░           
  ░   ▒   ░░       ░░          ░    ░   ▒     ░░   ░ ░  ░  ░      ░           
      ░  ░                     ░  ░     ░  ░   ░           ░   ░              
                                                                         
]])
end

---Função de cabeçalho do pergaminho de descrições.
function Utils.scrollDescriptionHeader()
    print([[
  ______________________________________________________________
 / \                                                            \.
|   |                                                           |.
 \_ |                                                           |.
    |                                                           |.]])
end

---Função de rodapé do pergaminho de descrições.
function Utils.scrollDescriptionFooter()
    print([[
    |   ________________________________________________________|___
    |  /                                                           /.
    \_/___________________________________________________________/.
]])
end

return Utils