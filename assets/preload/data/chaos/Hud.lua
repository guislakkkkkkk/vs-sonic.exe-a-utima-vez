function lerp(a, b, ratio)
return a + ratio * (b - a)
end


function onCreate()
setProperty('skipCountdown', true)

    makeLuaSprite('bartop','',0,-30)
    makeGraphic('bartop',1280,100,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','other')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot','',0,630)
    makeGraphic('barbot',1280,100,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','other') 

makeLuaSprite('fleet', 'sonicUI/fleet', 0, 0);
addLuaSprite('fleet', false);
scaleObject('fleet', 1, 1) 
setObjectCamera('fleet', 'hud');

if downscroll then
setProperty('fleet.flipY', true);
setProperty('barbot.y', getProperty('barbot.y')-670)
setProperty('bartop.y', getProperty('bartop.y')+700)
end
end


function onUpdatePost()

setProperty('iconP1.scale.x', 0.75)
setProperty('iconP1.scale.y', 0.75) 
setProperty('iconP2.scale.x', 0.75)
setProperty('iconP2.scale.y', 0.75) 

end

function onUpdate(elapsed)
setTextString('txttt', 'Score: ' .. score .. '            Misses: ' .. misses);
setProperty('camHUD.zoom', lerp(getProperty('camHUD.zoom'), 1, elapsed))
setProperty('camGame.zoom', lerp(getProperty('camGame.zoom'), getProperty('defaultCamZoom') - 0.01, elapsed))
setProperty('camZooming', false)
end