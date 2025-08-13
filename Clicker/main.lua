function love.load()
    pizza = 0
    ppc = 1
    
    font = love.graphics.newFont(20)

    pizzai = love.graphics.newImage("images/pizza.png")

    background = love.graphics.newImage("images/background.png")

    sounds = {}
    
    sounds.music = love.audio.newSource("sounds/music.mp3", "stream")
    sounds.bong = love.audio.newSource("sounds/bong.wav", "static")
    sounds.ding = love.audio.newSource("sounds/ding.wav", "static")
    sounds.music:setLooping(true)

    sounds.music:play()

    ico = love.image.newImageData("images/icon.png")
    ok = love.window.setIcon(ico)
    love.window.setTitle("Clicker")
    love.window.setMode(300, 300, {resizable=false, vsync=false, minwidth=400, minheight=300})
end


function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.setFont(font)

    love.graphics.draw(pizzai, 100, 100, nil, 0.2, 0.2)

    love.graphics.setColor(0, 0, 1)
    love.graphics.print(pizza, 60, 0)
    love.graphics.print("pizza:", 0, 0)
    love.graphics.print("ppc:", 0, 50)
    love.graphics.print(ppc, 45, 50)
    love.graphics.setColor(255, 255, 255)
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        sounds.bong:stop()
        pizza = pizza + ppc
        sounds.bong:play()
    end
end

function love.keypressed( key, scancode, isrepeat )
    if key == "space" then
        if pizza == 100 then
            sounds.ding:stop()
            pizza = pizza - 100
            ppc = ppc + 1
            sounds.ding:play()
        end

        if pizza > 100 then
            sounds.ding:stop()
            pizza = pizza - 100
            ppc = ppc + 1
            sounds.ding:play()
        end
    end
end