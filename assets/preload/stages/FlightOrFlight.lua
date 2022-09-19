function onCreate()

addLuaScript('data/tutorial/splash')
addLuaScript('data/tutorial/Intro')

makeLuaSprite('stage', 'exe/starved/stage', -400, -450);
setScrollFactor('stage', 1, 1);
scaleLuaSprite('stage', 1.5, 1.6);
addLuaSprite('stage', false);

makeLuaSprite('sonicisfuckingdead', 'exe/starved/sonicisfuckingdead', 180, -100);
setScrollFactor('sonicisfuckingdead', 1, 1);
scaleLuaSprite('sonicisfuckingdead', 0.45, 0.45);
addLuaSprite('sonicisfuckingdead', false);

makeLuaSprite('light', 'exe/starved/light', -400, -450);
setScrollFactor('light', 1, 1);
scaleLuaSprite('light', 1.5, 1.6);
setBlendMode('light', 'SUBTRACT')
addLuaSprite('light', true);

setProperty('cameraSpeed', 0.5)

makeLuaSprite('Flash', 'Flash', 0, 0);
addLuaSprite('Flash', false);
scaleObject('Flash', 1, 1) 
setObjectCamera('Flash', 'other');
setBlendMode('Flash', 'SUBTRACT')
setProperty('Flash.alpha', 0)

makeLuaSprite('Saturacion','', 0, 0)
makeGraphic('Saturacion', screenWidth, screenHeight, '646464')
setObjectCamera('Saturacion', 'other')
addLuaSprite('Saturacion', true)
setProperty('Saturacion.alpha', 0)
setBlendMode('Saturacion','SUBTRACT')
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'papuno' then
doTweenAlpha('Flash', 'Flash', 1, 0.5, 'linear')
doTweenColor('Flash', 'Flash', '00FFFB', 0.5, 'linear');

doTweenColor('dad', 'dad', 'CC0000', 0.5, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'CC0000', 0.5, 'linear');
doTweenColor('sonicisfuckingdead', 'sonicisfuckingdead', 'FF0000', 0.5, 'linear');
doTweenColor('stage', 'stage', '700000', 0.5, 'linear');	
end
if value1 == 'omg' then
doTweenAlpha('Flash', 'Flash', 0, 0.5, 'linear')
doTweenColor('dad', 'dad', 'FFA099', 0.5, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'FFA099', 0.5, 'linear');
doTweenColor('sonicisfuckingdead', 'sonicisfuckingdead', 'FF4043', 0.5, 'linear');
doTweenColor('stage', 'stage', 'FFFFFF', 0.5, 'linear');	

end
if value1 == 'cambiocs' then
setProperty('cameraSpeed', value2)
end
if value1 == 'sat' then
doTweenAlpha('sat', 'Saturacion', value2, 0.5, 'linear')
end
end
end

function onMoveCamera(focus)
if focus == 'boyfriend' then
noteTweenAlpha("A1", 0, 0.75, 0.4, "linear")
noteTweenAlpha("A2", 1, 0.75, 0.4, "linear")
noteTweenAlpha("A3", 2, 0.75, 0.4, "linear")
noteTweenAlpha("A4", 3, 0.75, 0.4, "linear")
noteTweenAlpha("A5", 4, 0.95, 0.4, "linear")
noteTweenAlpha("A6", 5, 0.95, 0.4, "linear")
noteTweenAlpha("A7", 6, 0.95, 0.4, "linear")
noteTweenAlpha("A8", 7, 0.95, 0.4, "linear")
elseif focus == 'dad' then
noteTweenAlpha("A1", 0, 0.95, 0.4, "linear")
noteTweenAlpha("A2", 1, 0.95, 0.4, "linear")
noteTweenAlpha("A3", 2, 0.95, 0.4, "linear")
noteTweenAlpha("A4", 3, 0.95, 0.4, "linear")
noteTweenAlpha("A5", 4, 0.75, 0.4, "linear")
noteTweenAlpha("A6", 5, 0.75, 0.4, "linear")
noteTweenAlpha("A7", 6, 0.75, 0.4, "linear")
noteTweenAlpha("A8", 7, 0.75, 0.4, "linear")
elseif focus == 'gf' then
noteTweenAlpha("A1", 0, 0.75, 0.4, "linear")
noteTweenAlpha("A2", 1, 0.75, 0.4, "linear")
noteTweenAlpha("A3", 2, 0.75, 0.4, "linear")
noteTweenAlpha("A4", 3, 0.75, 0.4, "linear")
noteTweenAlpha("A5", 4, 0.95, 0.4, "linear")
noteTweenAlpha("A6", 5, 0.95, 0.4, "linear")
noteTweenAlpha("A7", 6, 0.95, 0.4, "linear")
noteTweenAlpha("A8", 7, 0.95, 0.4, "linear")
end
end

--Gracias a mi compa El tacos al que le hackearon la cuenta por pendejo por pasarme esta mierda 

local currentBarPorcent = 0
local heightBar = 0

function onCreatePost()
    makeLuaSprite('FearBarImage','exe/fearbar',screenWidth - 100,200)
    scaleObject('FearBarImage',1.2,1.1)
    setObjectCamera('FearBarImage','hud')
    addLuaSprite('FearBarImage',true)

    makeLuaSprite('FearBarBg','exe/fearbarBG',getProperty('FearBarImage.x') + 15,getProperty('FearBarImage.y'))
    setObjectCamera('FearBarBg','hud')
    scaleObject('FearBarBg',0.82,1.1)
    addLuaSprite('FearBarBg',false)
    
    makeLuaSprite('FearBarBar', '',getProperty('FearBarImage.x') + 20,getProperty('FearBarImage.y'))
    setObjectCamera('FearBarBar','hud')
    makeGraphic('FearBarBar',getProperty('FearBarBg.width')/2,getProperty('FearBarBg.height'),'FF0000')

    addLuaSprite('FearBarBar',false)
end

function onUpdate()
    if keyPressed('space') then
        currentBarPorcent = currentBarPorcent + 0.1
    end
    if currentBarPorcent == 0 then
        setGraphicSize('FearBarBar',getProperty('FearBarBg.width')/1.8 * getProperty('FearBarBg.scale.x'),0)
    else
        setGraphicSize('FearBarBar',getProperty('FearBarBg.width')/1.8 * getProperty('FearBarBg.scale.x'),getProperty('FearBarBg.height')/1.132* currentBarPorcent)
    end
    setProperty('FearBarBar.x',getProperty('FearBarBg.x') + 20)
    setProperty('FearBarBar.x',getProperty('FearBarBg.x') + 20)
    setProperty('FearBarBar.y',getProperty('FearBarImage.y') + 305 - getProperty('FearBarBar.height'))

    if currentBarPorcent > 1 then
        currentBarPorcent  = 1
    end
    if currentBarPorcent <= 0 then
        currentBarPorcent  = 0
        setGraphicSize('FearBarBar',getProperty('FearBarBg.width')/1.8 * getProperty('FearBarBg.scale.x'),0)
        setProperty('FearBarBar.visible',false)
    else
        setProperty('FearBarBar.visible',true)
    end
end

function opponentNoteHit()
setProperty('health',getProperty('health') - 0.0009)
    if currentBarPorcent < 1 then
        currentBarPorcent = currentBarPorcent + 0.0026
    end
end

function goodNoteHit()
    if currentBarPorcent > 0 then
        currentBarPorcent = currentBarPorcent - 0.0023
    end
end

function noteMiss(id,dir,type,sustain)
    if type == '' then
        if currentBarPorcent < 1 then
            currentBarPorcent = currentBarPorcent + 0.0025
        end
    end
end

function onBeatHit()
    if curStep >= 1384 and curStep < 2143 then
        if getProperty('health') > 0.08 and currentBarPorcent < 1 or currentBarPorcent == 1 then
            setProperty('health',getProperty('health') - 0.046)
        end
    end
end