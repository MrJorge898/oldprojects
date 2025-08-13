function love.load()
    yellow = 0
    printx = 200
    printy = 300
    show = 0

    font = love.graphics.newFont(20)

    sounds = {}
    
    sounds.blip = love.audio.newSource("sounds/blip.wav", "static")


    ico = love.image.newImageData("images/icon.png")
    ok = love.window.setIcon(ico)
    love.window.setTitle("Untitled")
--love.window.setMode(2000, 800, {resizable=true})
end


function love.draw()
    love.graphics.setBackgroundColor(0, 0, 1)
    love.graphics.setFont(font)

    love.graphics.print("Text", printx, printy)

    love.graphics.print("Press space to be cool!", 300, 150)

    love.graphics.print("Click for awesomeness!", 0, 150)
    love.graphics.print("Clicks:", 0, 200 )
    love.graphics.print(yellow, 70, 200)

    if yellow == 100 then
        love.graphics.print("You're awesome!", 0, 250)
    end
    if yellow > 100 then
        love.graphics.print("You're awesome!", 0, 250)
    end

    if show == 1 then
        love.graphics.print("You're cool", 300, 200)
    end
    if show > 1 then
        love.graphics.print("You're cool", 300, 200)
    end
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        sounds.blip:stop()
        printx = x
        printy = y
        yellow = yellow + 1
        sounds.blip:play()
    end
end

function love.keypressed(key)
        if key == "escape" then
         love.event.quit()
    end
    if key == "space" then
        show = show + 1
    end
end