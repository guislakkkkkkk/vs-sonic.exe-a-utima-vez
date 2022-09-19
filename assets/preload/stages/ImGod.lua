function onCreate()
addLuaScript('data/tutorial/splash')
addLuaScript('data/tutorial/healthbars/healthbarImGod')

	makeLuaSprite('IM-God', 'exe/IM-God', -1050, -300);
	setScrollFactor('IM-God', 1, 1);
	scaleLuaSprite('IM-God', 1, 1);
	addLuaSprite('IM-God', false);

makeLuaSprite('SHAD','',0,0)
makeGraphic('SHAD', screenWidth, screenHeight,'646464')
setObjectCamera('SHAD','other')
addLuaSprite('SHAD', true)
setBlendMode('SHAD','SUBTRACT')
setProperty('SHAD.alpha',1)


	setProperty('defaultCamZoom', 0.64) 
end

function onUpdatePost()
if getProperty('SHAD.alpha') == 1 then
    doTweenAlpha('SHADTUIN', 'SHAD', 0, 4, 'linear');
    end
end

function onTweenCompleted(tag)
if tag == 'SHADTUIN' then
doTweenAlpha('SHADTUINparte2', 'SHAD', 1, 2, 'linear');
end
end

function onCountdownStarted()
cameraSetTarget('dad')    
setProperty('isCameraOnForcedPos',true)

noteTweenX('MiddleSatanosX0', 0, 415, 0.01, 'quartInOut')
noteTweenX('MiddleSatanosX1', 1, 525, 0.01, 'quartInOut')
noteTweenX('MiddleSatanosX2', 2, 635, 0.01, 'quartInOut')
noteTweenX('MiddleSatanosX3', 3, 745, 0.01, 'quartInOut')

noteTweenX('bf0', 4, 415, 0.01, 'linear')
noteTweenX('bf1', 5, 525, 0.01, 'linear')
noteTweenX('bf2', 6, 635, 0.01, 'linear')
noteTweenX('bf3', 7, 745, 0.01, 'linear') 

setProperty('boyfriend.visible', false)
end

function onBeatHit()
if curBeat == 1 then
noteTweenAlpha("Satanos0Alpha1", 0, 0.25, 0.01, "linear")
noteTweenAlpha("Satanos0Alpha2", 1, 0.25, 0.01, "linear")
noteTweenAlpha("Satanos0Alpha3", 2, 0.25, 0.01, "linear")
noteTweenAlpha("Satanos0Alpha4", 3, 0.25, 0.01, "linear")

doTweenColor('timeBar', 'timeBar', 'FF0001', 0.01, 'linear');
end
end

local xx = 400;
local yy = 450;
local xx2 = 400;
local yy2 = 450;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;


function onUpdate()
  if del > 0 then
    del = del - 1
  end
  if del2 > 0 then
    del2 = del2 - 1
  end
    if followchars == true then
if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
      if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end