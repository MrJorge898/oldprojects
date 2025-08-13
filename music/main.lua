function love.load()
    songP = "nothing"
    start = false
    songS = 0   
    playlist = "nothing" 
    loop = "false"

    font = love.graphics.newFont(20)

    music = {}
    music.sonicstar = love.audio.newSource("sounds/star.mp3", "stream")
    music.sonichydro = love.audio.newSource("sounds/hydro.mp3", "stream")
    music.sonicstudio = love.audio.newSource("sounds/studio.mp3", "stream")
    music.sonicbattery = love.audio.newSource("sounds/battery.mp3", "stream")


    ico = love.image.newImageData("images/icon.png")
    ok = love.window.setIcon(ico)
    love.window.setTitle("Music Player")
    love.window.setMode(500, 200, {resizable=false})
end

function love.update()
    if songS < 0 then
        songS = 0
    end

    if songS > 4 then
        songS = 4
    end

    if start == true then
        if songS == 1 then
            songP = "Stardust Speedway Act 2"
            playlist = "Sonic Mania"
            music.sonichydro:stop()
            music.sonicstudio:stop()
            music.sonicbattery:stop()
            music.sonicstar:play()
        end

        if songS == 2 then
            songP = "Hydrocity Act 1"
            playlist = "Sonic Mania"
            music.sonichydro:play()
            music.sonicstudio:stop()
            music.sonicbattery:stop()
            music.sonicstar:stop()
        end

        if songS == 3 then
            songP = "Studiopolis Act 1"
            playlist = "Sonic Mania"
            music.sonichydro:stop()
            music.sonicstudio:play()
            music.sonicbattery:stop()
            music.sonicstar:stop()
        end

        if songS == 4 then
            songP = "Flying Battery Act 1"
            playlist = "Sonic Mania"
            music.sonichydro:stop()
            music.sonicstudio:stop()
            music.sonicbattery:play()
            music.sonicstar:stop()
        end
    end

    if start == false then
        songP = "nothing"
        playlist = "nothing"
        loop = "false"
        music.sonichydro:stop()
        music.sonicstudio:stop()
        music.sonicbattery:stop()
        music.sonicstar:stop()
    end
    
    if loop == "true" then
        music.sonichydro:setLooping(true)
        music.sonicstudio:setLooping(true)
        music.sonicbattery:setLooping(true)
        music.sonicstar:setLooping(true)
    end

    if loop == "false" then
        music.sonichydro:setLooping(false)
        music.sonicstudio:setLooping(false)
        music.sonicbattery:setLooping(false)
        music.sonicstar:setLooping(false)
    end
end


function love.draw()
    love.graphics.setFont(font)

    love.graphics.print("now playing:", 0, 30)
    love.graphics.print(songP, 130, 30, nil, 0.8, 1)

    love.graphics.print("Playlist:", 0, 0)
    love.graphics.print(playlist, 80, 0)

    love.graphics.print("loop:", 0, 60)
    love.graphics.print(loop, 50, 60)
end

function love.mousepressed( x, y, button, istouch, presses )
    if button == 1 then
        start = true
    end

    if button == 2 then
        start = false
    end
end

function love.keypressed(key)
    if key == "escape" then
     love.event.quit()
    end

    if key == "up" then
        loop = "true"
    end

    if key == "down" then
        loop = "false"
    end

    if key == "left" then
        if start == true then
            songS = songS - 1    
        end 
    end

    if key == "right" then
        if start == true then
            songS = songS + 1
        end
    end
end