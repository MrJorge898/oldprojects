function love.load()
    orange = 0
    yellow = 0
    
    font = love.graphics.newFont(20)

    sounds = {}
    
    sounds.music = love.audio.newSource("sounds/music.mp3", "stream")
    sounds.blip = love.audio.newSource("sounds/blip.wav", "static")
    sounds.music:setLooping(true)

    sounds.music:play()

    ico = love.image.newImageData("images/icon.png")
    ok = love.window.setIcon(ico)
    love.window.setTitle("Score")
    love.window.setMode(200, 100, {resizable=false})
end


function love.draw()
    love.graphics.setBackgroundColor(0, 0, 1)
    love.graphics.setFont(font)

    love.graphics.print("Yellow:", 0, 0 )
    love.graphics.print(yellow, 70, 0)

    love.graphics.print("Orange:", 0, 50)
    love.graphics.print(orange, 80, 50)
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 2 then
        sounds.blip:play()
        orange = orange + 1
    end
    
    if button == 1 then
        sounds.blip:play()
        yellow = yellow + 1
    end

    if button == 3 then
        orange = 0
        yellow = 0
    end
end

function love.keypressed( key, scancode, isrepeat )
    if key == "escape" then
        love.event.quit()
    end
end