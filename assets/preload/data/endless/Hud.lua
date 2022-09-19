function lerp(a, b, ratio)
return a + ratio * (b - a)
end

YPOSINF = 10

function onCreate()

if downscroll then
YPOSINF = 660
end

makeLuaText('Scoreado', ' 0            0', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x'), 730);
setTextSize('Scoreado', 22);
setTextBorder('Scoreado', 1, '000000');
setTextAlignment('Scoreado', 'center');
addLuaText('Scoreado', true);
setObjectCamera('Scoreado', 'hud');

makeLuaSprite('Majin2', 'sonicUI/Majin2', -300, -70);
addLuaSprite('Majin2', false);
scaleObject('Majin2', 1.78, 1.68) 
setObjectCamera('Majin2', 'other');
setBlendMode('Majin2', 'MULTIPLY')

makeLuaSprite('Majin', 'sonicUI/Majin', -300, -70);
addLuaSprite('Majin', false);
scaleObject('Majin', 1.78, 1.68) 
setObjectCamera('Majin', 'other');

makeLuaSprite('infi', 'sonicUI/infi', 576, YPOSINF);
addLuaSprite('infi', true);
scaleObject('infi', 1, 1) 
setObjectCamera('infi', 'hud');

makeLuaSprite('japo', 'sonicUI/japo', 430, 734);
addLuaSprite('japo', false);
scaleObject('japo', 0.5, 0.5) 
setObjectCamera('japo', 'hud');

makeLuaSprite('japo2', 'sonicUI/japo2', 620, 722);
addLuaSprite('japo2', false);
scaleObject('japo2', 0.5, 0.5) 
setObjectCamera('japo2', 'hud');
end

function onCountdownStarted()
setProperty('scoreTxt.visible', false);
setProperty('timeTxt.visible',false)
if not downscroll then
noteTweenY("asa", 0, 0, 1, "linear")
noteTweenY("bve", 1, 0, 1, "linear")
noteTweenY("ebv2", 2, 0, 1, "linear")
noteTweenY("vvb", 3, 0, 1, "linear")

noteTweenY("svbbbf", 4, 0, 1, "linear")
noteTweenY("fbSZsd", 5, 0, 1, "linear")
noteTweenY("hadsd", 6, 0, 1, "linear")
noteTweenY("awads", 7, 0, 1, "linear")
end
if downscroll then
noteTweenY("asa", 0, 550, 1, "linear")
noteTweenY("bve", 1, 550, 1, "linear")
noteTweenY("ebv2", 2, 550, 1, "linear")
noteTweenY("vvb", 3, 550, 1, "linear")

noteTweenY("svbbbf", 4, 550, 1, "linear")
noteTweenY("fbSZsd", 5, 550, 1, "linear")
noteTweenY("hadsd", 6, 550, 1, "linear")
noteTweenY("awads", 7, 550, 1, "linear")
end
end

function onUpdate(elapsed)
setTextString('Scoreado', ' ' .. score .. '            ' .. misses);
setProperty('camHUD.zoom', lerp(getProperty('camHUD.zoom'), 0.85, elapsed))
setProperty('camGame.zoom', lerp(getProperty('camGame.zoom'), getProperty('defaultCamZoom') - 0.1, elapsed))
setProperty('camZooming', false)
end