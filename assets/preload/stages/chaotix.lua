function onCreate()

addLuaScript('data/tutorial/splashP')	
addLuaScript('data/tutorial/pixelpack/custom1')
addLuaScript('data/tutorial/pixelpack/custom2')
addLuaScript('data/tutorial/healthbars/healthbarChaotix')
addLuaScript('data/tutorial/Intro')

addCharacterToList('chaotix-anim', 'dad') 

setProperty('defaultCamZoom', 0.8) 

makeAnimatedLuaSprite('chaotixBG', 'exe/chaotixBG', -500, -450);
addAnimationByPrefix('chaotixBG', 'chaotixBG', 'chaotixBG', 24, true);  
objectPlayAnimation('chaotixBG', 'chaotixBG', true)
scaleLuaSprite('chaotixBG', 6, 6);
setProperty('chaotixBG.antialiasing', false);
addLuaSprite('chaotixBG', false);
end

muerte = false

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'anim' then
muerte = true    
setProperty('barraHEALTH.visible', true);
doTweenX("barraHEALTH", "barraHEALTH.scale", -16, 1, "linear")     
triggerEvent('Play Animation', 'idle', 'dad')
end	
end

function onUpdatePost()
if muerte == true then
health = getProperty('health');
if 0 > health - 1 then
setProperty('health', 0);
end
end
end

function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'anim' then
temblar = true    
triggerEvent('Change Character', 'dad', 'chaotix-anim');
runTimer('anim', 0.01);
end
end
end

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if temblar == true and not isSustainNote then     
triggerEvent('Screen Shake', '0.02, 0.0050', '0.02, 0.0010');
end
end

function onCountdownStarted()
setProperty('timeTxt.scale.x', 2)
setProperty('timeTxt.scale.y', 2)	
setProperty('timeTxt.x', 60)
setProperty('timeTxt.y', 520)
setProperty('timeTxt.alpha', 1)
setTextColor('timeTxt', 'FFFFFF')
setTextFont('timeTxt', 'sonic-hud-font.ttf')
end

local xx = 520;
local yy = 450;
local xx2 = 520;
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