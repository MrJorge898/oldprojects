function love.load()
    love.graphics.setDefaultFilter("nearest", "nearest")

    music = 1
    pizza = 0
    ppcc = 150
    ppc = 1
    ppsc = 25
    pps = 0
    timer = 1
    
    low = love.graphics.newFont(10)
    med = love.graphics.newFont(25)
    high = love.graphics.newFont(30)

    background = love.graphics.newImage("images/background.png")
    pizzai = love.graphics.newImage("images/pizza.png")
    basil = love.graphics.newImage("images/basil.png")
    mushrooms = love.graphics.newImage("images/mushrooms.png")
    pizzabi = love.graphics.newImage("images/bpizza.png")

    sounds = {}
    
    sounds.star = love.audio.newSource("sounds/stardust.mp3", "stream")
    sounds.studio = love.audio.newSource("sounds/studio.mp3", "stream")
    sounds.hydro = love.audio.newSource("sounds/hydro.mp3", "stream")
    sounds.battery = love.audio.newSource("sounds/battery.mp3", "stream")
    sounds.blip = love.audio.newSource("sounds/blip.wav", "static")
    sounds.bong = love.audio.newSource("sounds/bong.wav", "static")
    sounds.ding = love.audio.newSource("sounds/ding.wav", "static")
    sounds.star:setLooping(true)
    sounds.studio:setLooping(true)
    sounds.battery:setLooping(true)
    sounds.hydro:setLooping(true)

    sounds.star:play()

    ico = love.image.newImageData("images/icon.png")
    ok = love.window.setIcon(ico)
    love.window.setTitle("Pizza Clicker BETA v1.1")
    love.window.setMode(300, 300, {resizable=false, vsync=true, minwidth=400, minheight=300})
end

function love.update(dt)
    if timer > 0 then
        timer = timer - dt
    end

    if timer < 0 then
        timer = 1
        pizza = pizza + pps
    end
    
    if music == 1 then
        sounds.star:play()
        sounds.studio:stop()
        sounds.battery:stop()
        sounds.hydro:stop()
    end

    if music == 2 then
        sounds.star:stop()
        sounds.studio:play()
        sounds.battery:stop()
        sounds.hydro:stop()
    end

    if music == 3 then
        sounds.star:stop()
        sounds.studio:stop()
        sounds.battery:play()
        sounds.hydro:stop()
    end

    if music == 4 then
        sounds.star:stop()
        sounds.studio:stop()
        sounds.battery:stop()
        sounds.hydro:play()
    end

    if music == 0 then
        sounds.star:stop()
        sounds.studio:stop()
        sounds.battery:stop()
        sounds.hydro:stop()
    end

    if music < 0 then
        music = 0
    end

    if music > 4 then
        music = 4
    end
end


function love.draw()
    love.graphics.draw(background, 0, 0)
    love.graphics.draw(pizzai, 100, 100, nil, 0.2, 0.2)

    love.graphics.setColor(love.math.colorFromBytes(255, 128, 0))
    love.graphics.setFont(high)
    love.graphics.print(pizza, 90, 225)
    love.graphics.print("Pizza:", 0, 225)
    love.graphics.setFont(med)
    love.graphics.setColor(love.math.colorFromBytes(0, 0, 255))
    love.graphics.print("pps:", 0, 0)
    love.graphics.print(pps, 55, 0)
    love.graphics.setColor(love.math.colorFromBytes(127, 0, 255))
    love.graphics.print("ppc:", 0, 25)
    love.graphics.print(ppc, 55, 25)
    love.graphics.setColor(255, 255, 255)

    if pps >= 25 then
        love.graphics.draw(basil, 90, 100, nil, 0.14, 0.13)
    end

    if ppc >= 10 then
        love.graphics.draw(mushrooms, 110, 100, nil, 0.2, 0.2)
    end

    if ppc >= 50 then
        if pps >= 100 then
            love.graphics.draw(pizzabi, 100, 90, nil, 0.3, 0.3)
        end
    end

    if pps >= 250 then
        love.graphics.draw(basil, 100, 100, nil, 0.14, 0.13)
    end

    if ppc >= 150 then
        love.graphics.draw(mushrooms, 120, 100, nil, 0.2, 0.2)
    end
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        sounds.bong:stop()
        pizza = pizza + ppc
        sounds.bong:play()
    end
end

function love.keypressed( key, scancode, isrepeat )
    if key == "q" then
        if pizza >= ppcc then
            pizza = pizza - ppcc
            ppcc = ppcc + 150
            sounds.ding:stop()
            ppc = ppc + 1
            sounds.ding:play()
        end
    end
    
    if key == "e" then
        if pizza >= ppsc then
            pizza = pizza - ppsc
            ppsc = ppsc + 25
            sounds.blip:stop()
            pps = pps + 2
            sounds.blip:play()
        end
    end

    if key == "right" then
        music = music + 1
    end

    if key == "left" then
        music = music - 1
    end

    if key == "escape" then
        love.event.quit()
    end
end