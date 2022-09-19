function onCreate()
makeLuaSprite('mountains', 'exe/needlemouse/mountains', -800, -500);
setScrollFactor('mountains', 1, 1);
scaleLuaSprite('mountains', 2.275, 2.275);
addLuaSprite('mountains', false);

makeLuaSprite('ruins', 'exe/needlemouse/ruins', -800, -500);
setScrollFactor('ruins', 1, 1);
scaleLuaSprite('ruins', 4.55, 4.55);
addLuaSprite('ruins', false);

makeLuaSprite('pisoputas', 'exe/needlemouse/pisoputas', -800, -500);
setScrollFactor('pisoputas', 1, 1);
scaleLuaSprite('pisoputas', 2.275, 2.28);
addLuaSprite('pisoputas', false);

makeAnimatedLuaSprite('char', 'characters/Needlemouse/Sarah', 90, 80);
addAnimationByPrefix('char', 'idle', 'Sarah_IDLE', 24, true); 
addAnimationByPrefix('char', 'singLEFT', 'Sarah_LEFT', 24, true);
addAnimationByPrefix('char', 'singDOWN', 'Sarah_DOWN', 24, true);
addAnimationByPrefix('char', 'singUP', 'Sarah_UP', 24, true);
addAnimationByPrefix('char', 'singRIGHT', 'Sarah_RIGHT', 24, true);
objectPlayAnimation('char', 'idle');
setProperty('char.alpha', 0.0001) 
addLuaSprite('char', false);

makeLuaSprite('fg', 'exe/needlemouse/fg', -800, -500);
setScrollFactor('fg', 1, 1);
scaleLuaSprite('fg', 2.275, 2.28);
addLuaSprite('fg', false);

setProperty('defaultCamZoom', 0.65) 
end

function onCreatePost()
doTweenColor('timeBar', 'timeBar', '5A00FA', 0.01, 'linear');
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'bf' then
triggerEvent('Camera Follow Pos', '1300', '450');
end		 
if value1 == 'dad' then
triggerEvent('Camera Follow Pos', '300', '400');
end
if value1 == 'duo' then
--whentehacesunosduosbieninsanos
triggerEvent('Camera Follow Pos', '700', '450');
end
if value1 == 'omg' then
doTweenColor('timeTxt', 'timeTxt', 'FF0004', 1.5, 'linear');	
doTweenAlpha('char', 'char', 0.5, 1.5, 'linear')
end
end
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
objectPlayAnimation('char', singAnims[direction + 1], true)
runTimer('idle', 0.2, 1);
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'idle' then
objectPlayAnimation('char', 'idle');
   end
end