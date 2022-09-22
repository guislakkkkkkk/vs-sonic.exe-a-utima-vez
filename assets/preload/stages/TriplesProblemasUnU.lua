function onCreate()
  
    addLuaScript('data/tutorial/splash')

    setProperty('cameraSpeed', 1.1)

    makeLuaSprite('BG', 'exe/Phase3/Normal/BG', -550, -200);
    setScrollFactor('BG', 1, 1);
	scaleLuaSprite('BG', 2.25, 2);
	addLuaSprite('BG', false);

	makeAnimatedLuaSprite('XENOFOBIAOMG', 'exe/Phase3/xeno/XENOFOBIAOMG', -400, -200);
    addAnimationByPrefix('XENOFOBIAOMG', 'XENOFOBIAOMG', 'TitleMenuSSBG instance 1', 24, true)
    objectPlayAnimation('XENOFOBIAOMG', 'XENOFOBIAOMG', true);
    addLuaSprite('XENOFOBIAOMG', false);
    scaleObject('XENOFOBIAOMG', 6, 4) 
    setProperty('XENOFOBIAOMG.visible', false) 

	makeLuaSprite('Grass', 'exe/Phase3/xeno/Grass', -550, -200);
	setScrollFactor('Grass', 1, 1);
	scaleLuaSprite('Grass', 2.25, 2);
	addLuaSprite('Grass', false);
	setProperty('Grass.visible', false) 

setProperty('defaultCamZoom', 0.65) 
end 

local multiplicadorBF = 1
local multiplicadorOP = 1

function onBeatHit()
if curBeat == 1 then
doTweenColor('timeBar', 'timeBar', '6B6B6B', 0.01, 'linear');
end
end

local FlipBarra = false

function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'beast' or 'BEAST' then
Xenofobia()
doTweenColor('timeBar', 'timeBar', '9500F9', 0.01, 'linear');
end
if value1 == 'webos' then 
noteTweenX('El1', 0, 90, 0.01, 'linear');
noteTweenX('El2', 1, 205, 0.01, 'linear');
noteTweenX('El3', 2, 315, 0.01, 'linear');
noteTweenX('El4', 3, 425, 0.01, 'linear');
noteTweenX('Yo1', 4, 730, 0.01, 'linear');
noteTweenX('Yo2', 5, 845, 0.01, 'linear');
noteTweenX('Yo3', 6, 955, 0.01, 'linear');
noteTweenX('Yo4', 7, 1065, 0.01, 'linear');
TT()
doTweenColor('timeBar', 'timeBar', 'CC9100', 0.01, 'linear');
setProperty('XENOFOBIAOMG.flipX', false);
setProperty('Grass.flipX', false);
FlipBarra = false
end
if value1 == 'nudillos' then 
FlipBarra = true
noteTweenX('Yo1', 4, 90, 0.01, 'linear');
noteTweenX('Yo2', 5, 205, 0.01, 'linear');
noteTweenX('Yo3', 6, 315, 0.01, 'linear');
noteTweenX('Yo4', 7, 425, 0.01, 'linear');
noteTweenX('El1', 0, 730, 0.01, 'linear');
noteTweenX('El2', 1, 845, 0.01, 'linear');
noteTweenX('El3', 2, 955, 0.01, 'linear');
noteTweenX('El4', 3, 1065, 0.01, 'linear');
TT()
setProperty('songSpeed', 2.7)
doTweenColor('timeBar', 'timeBar', 'CC1800', 0.01, 'linear');
setProperty('XENOFOBIAOMG.flipX', true);
setProperty('Grass.flipX', true);

end
if value1 == 'teils' then 
doTweenColor('timeBar', 'timeBar', '6B6B6B', 0.01, 'linear');
setProperty('XENOFOBIAOMG.flipX', false);
setProperty('Grass.flipX', false);
TT()
end
end
if name == 'TT' then
multiplicadorOP = value1
multiplicadorBF = value2
end
end

local Lol = false

function Xenofobia()
Lol = true
setProperty('health', 1);
setProperty('Grass.visible', true) 
setProperty('XENOFOBIAOMG.visible', true) 
setProperty('defaultCamZoom', 0.8) 
end

function TT()
Lol = false
setProperty('Grass.visible', false) 
setProperty('XENOFOBIAOMG.visible', false) 
setProperty('defaultCamZoom', 0.65) 
setProperty('health', 1);
end

function onUpdate(elapsed)
    for a = 0, getProperty('notes.length') - 1 do
        if not getPropertyFromGroup('notes', a, 'mustPress') then
            setPropertyFromGroup('notes', a, 'y', getPropertyFromGroup('notes', a, 'y') * multiplicadorOP);
        end
    end
    	for i = 0, getProperty('notes.length') - 1 do
	    if getPropertyFromGroup('notes', i, 'mustPress') then
		    setPropertyFromGroup('notes', i, 'y', getPropertyFromGroup('notes', i, 'y') * multiplicadorBF);
		end
	end 
end

function onMoveCamera(focus)
if Lol then
if focus == 'boyfriend' then
setProperty('defaultCamZoom', 0.9) 
elseif focus == 'dad' then
setProperty('defaultCamZoom', 0.8) 
end
end
end

function onUpdatePost(elapsed)
if FlipBarra then
        setProperty('healthBar.flipX',true)
        P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
        P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
        setProperty('iconP1.x',P1Mult - 110)
        setProperty('iconP1.origin.x',240)
        setProperty('iconP1.flipX',true)
        setProperty('iconP2.x',P2Mult + 110)
        setProperty('iconP2.origin.x',-100)
        setProperty('iconP2.flipX',true)
    else
        setProperty('healthBar.flipX',false)
        P1Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) + (150 * getProperty('iconP1.scale.x') - 150) / 2 - 26)
        P2Mult = getProperty('healthBar.x') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * 0.01) - (150 * getProperty('iconP2.scale.x')) / 2 - 26 * 2)
        setProperty('iconP1.origin.x',0)
        setProperty('iconP1.flipX',false)
        setProperty('iconP2.origin.x',0)
        setProperty('iconP2.flipX',false)
    end
end