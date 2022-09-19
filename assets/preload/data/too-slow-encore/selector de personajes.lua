function onCreate()
makeLuaSprite('1GFScreen', 'exe/GFS/1GFScreen', 0, 0);
addLuaSprite('1GFScreen', true);
scaleObject('1GFScreen', 1, 1) 
setObjectCamera('1GFScreen', 'other');

makeLuaSprite('def', 'exe/GFS/def', 10, 274);
addLuaSprite('def', true);
scaleObject('def', 0.4, 0.4) 
setObjectCamera('def', 'other');

makeLuaSprite('sus', 'exe/GFS/sus', 340, 274);
addLuaSprite('sus', true);
scaleObject('sus', 0.4, 0.4) 
setObjectCamera('sus', 'other');

makeLuaSprite('alt', 'exe/GFS/alt', 670, 274);
addLuaSprite('alt', true);
scaleObject('alt', 0.4, 0.4) 
setObjectCamera('alt', 'other');

makeLuaSprite('beta', 'exe/GFS/beta', 1000, 274);
addLuaSprite('beta', true);
scaleObject('beta', 0.4, 0.4) 
setObjectCamera('beta', 'other');

setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
end

local allowCountdown = false

function onUpdate()
if getMouseX('hud') > getProperty('def.x') and getMouseY('hud') > getProperty('def.y') and getMouseX('hud') < getProperty('def.x') + getProperty('def.width') and getMouseY('hud') < getProperty('def.y') + getProperty('def.height') and mouseReleased() then
triggerEvent('Change Character', 'gf', 'gfencore');
allowCountdown = true
startCountdown()
setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
Rem()
end
if getMouseX('hud') > getProperty('sus.x') and getMouseY('hud') > getProperty('sus.y') and getMouseX('hud') < getProperty('sus.x') + getProperty('sus.width') and getMouseY('hud') < getProperty('sus.y') + getProperty('sus.height') and mouseReleased() then
triggerEvent('Change Character', 'gf', 'gfencorethicc');
allowCountdown = true
startCountdown()
setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
Rem()
end
if getMouseX('hud') > getProperty('alt.x') and getMouseY('hud') > getProperty('alt.y') and getMouseX('hud') < getProperty('alt.x') + getProperty('alt.width') and getMouseY('hud') < getProperty('alt.y') + getProperty('alt.height') and mouseReleased() then
triggerEvent('Change Character', 'gf', 'gfencorealt');
allowCountdown = true
startCountdown()
setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
Rem()
end
if getMouseX('hud') > getProperty('beta.x') and getMouseY('hud') > getProperty('beta.y') and getMouseX('hud') < getProperty('beta.x') + getProperty('beta.width') and getMouseY('hud') < getProperty('beta.y') + getProperty('beta.height') and mouseReleased() then
triggerEvent('Change Character', 'gf', 'gfencorebeta');
allowCountdown = true
startCountdown()
setPropertyFromClass('flixel.FlxG', 'mouse.visible', false);
Rem()
end
end

function Rem()
removeLuaSprite('1GFScreen')
removeLuaSprite('beta')
removeLuaSprite('alt')
removeLuaSprite('sus')
removeLuaSprite('def')
end

function onStartCountdown()
  if not allowCountdown then 

    
    return Function_Stop;
  end
  return Function_Continue;
end