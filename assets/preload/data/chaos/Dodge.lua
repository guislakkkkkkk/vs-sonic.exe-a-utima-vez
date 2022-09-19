PuedeEsquivar = false
Esquivado = false

function onCreate()
makeAnimatedLuaSprite('spacebar_icon', 'exe/spacebar_icon', 400, 200);
luaSpriteAddAnimationByPrefix('spacebar_icon', 'spacebar', 'spacebar', 24, false);
luaSpritePlayAnimation('spacebar_icon', 'spacebar');
setObjectCamera('spacebar_icon', 'other');
addLuaSprite('spacebar_icon', true); 
setProperty('spacebar_icon.visible', false)

makeAnimatedLuaSprite('Laser', 'exe/chamber/Laser', defaultOpponentX-200, defaultOpponentY-800);
luaSpriteAddAnimationByPrefix('Laser', 'Laser', 'Laser', 24, false);
luaSpritePlayAnimation('Laser', 'Laser');
scaleLuaSprite('Laser', 2, 2); 
addLuaSprite('Laser', true); 
setProperty('Laser.visible', false)
end

NoAnim = false

function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == 'dg' then
setProperty('Laser.visible', true)
setProperty('dad.visible', false)
luaSpritePlayAnimation('Laser', 'Laser');
setProperty('spacebar_icon.visible', true)
luaSpritePlayAnimation('spacebar_icon', 'spacebar');
PuedeEsquivar = true
runTimer('Sonidaso', 0.7);
runTimer('EsquivaWe', 0.8);
runTimer('Lol', 0.85);
end
end
 
function onUpdate()
setProperty('Laser.x', getProperty('dad.x')-400)
setProperty('Laser.y', getProperty('dad.y')-400)
if PuedeEsquivar == true then
if keyJustPressed('space') or botPlay or mouseReleased() then
Esquivado = true
PuedeEsquivar = false
triggerEvent('Play Animation', 'dodge', 'bf')
setProperty('spacebar_icon.visible', false)
NoAnim = true
end
if NoAnim then
for i = 0,getProperty('notes.length')-1 do
if getPropertyFromGroup('notes', i, 'mustPress') == true then
setPropertyFromGroup('notes', i, 'noAnimation', false)
end
end
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'EsquivaWe' and Esquivado == false then
setProperty('health', 0);
end
if tag == 'EsquivaWe' and Esquivado == true then
NoAnim = false
Esquivado = false
end
if tag == 'Lol' then
setProperty('Laser.visible', false)
setProperty('dad.visible', true)
end
if tag == 'Sonidaso' then
playSound('laser_moment', 1);
end
end
end