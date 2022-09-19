function lerp(a, b, ratio)
return a + ratio * (b - a)
end

function onCreate()

	makeLuaSprite('white', 'exe/white', -700, -300);
	setScrollFactor('white', 1, 1);
	scaleLuaSprite('white', 2, 2);
	addLuaSprite('white', false);

makeLuaSprite('Coldsteel', 'sonicUI/Coldsteel', -210, -92);
addLuaSprite('Coldsteel', false);
scaleObject('Coldsteel', 1, 1) 
setObjectCamera('Coldsteel', 'hud');

	setProperty('timeBarBG.visible', false);
    setProperty('timeBar.visible', false);
end

function onCountdownStarted()
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

makeLuaSprite('timeBarpersonel', 'exe/timeBarpersonel', getProperty('timeBar.x'), getProperty('timeBar.y')-5);
setScrollFactor('timeBarpersonel', 1, 1);
scaleLuaSprite('timeBarpersonel', 1, 1);
setObjectCamera('timeBarpersonel', 'hud');
addLuaSprite('timeBarpersonel', false);
setProperty('grpNoteSplashes.visible', false)
setProperty('timeBarBG.visible', false);
setProperty('timeBar.visible', false);
doTweenAlpha('zzzz', 'camGame', 0, 0.0000001,'quardInOut')

if downscroll then
noteTweenY("yo1", 0, 640, 1, "linear")
noteTweenY("yo2", 1, 640, 1, "linear")
noteTweenY("yo3", 2, 640, 1, "linear")
noteTweenY("yo4", 3, 640, 1, "linear")

noteTweenY("yo5", 4, 640, 1, "linear")
noteTweenY("yo6", 5, 640, 1, "linear")
noteTweenY("yo7", 6, 640, 1, "linear")
noteTweenY("yo8", 7, 640, 1, "linear")
setProperty('timeBarpersonel.y', getProperty('timeBarpersonel.y')+80)
setProperty('timeTxt.y', getProperty('timeTxt.y')+80)
end
end

RandomMAX = 720
RandomMIN = 25

function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'coldsteeldespertocabrones' then	
doTweenAlpha('coldsteeldespertocabrones', 'camGame', 1, 0.0000001,'quardInOut')
end	
if value1 == 'what' then
VAL = getRandomInt(RandomMIN, RandomMAX)	
setPropertyFromGroup('opponentStrums', 0, 'angle', VAL)
setPropertyFromGroup('opponentStrums', 1, 'angle', VAL)
setPropertyFromGroup('opponentStrums', 2, 'angle', VAL)
setPropertyFromGroup('opponentStrums', 3, 'angle', VAL)

setPropertyFromGroup('playerStrums', 0, 'angle', VAL)
setPropertyFromGroup('playerStrums', 1, 'angle', VAL)
setPropertyFromGroup('playerStrums', 2, 'angle', VAL)
setPropertyFromGroup('playerStrums', 3, 'angle', VAL)
end
if value1 == 'verga' then	
noteTweenAngle('A', 0, 5000, 5.5, 'quartinout')
noteTweenAngle('B', 1, 5000, 5.5, 'quartinout')
noteTweenAngle('C', 2, 5000, 5.5, 'quartinout')
noteTweenAngle('D', 3, 5000, 5.5, 'quartinout')
noteTweenAngle('E', 4, 5000, 5.5, 'quartinout')
noteTweenAngle('F', 5, 5000, 5.5, 'quartinout')
noteTweenAngle('J', 6, 5000, 5.5, 'quartinout')
noteTweenAngle('H', 7, 5000, 5.5, 'quartinout')
end
if value1 == 'insano' then	
noteTweenAngle('A', 0, 100000, 7.6, 'quartinout')
noteTweenAngle('B', 1, 100000, 7.6, 'quartinout')
noteTweenAngle('C', 2, 100000, 7.6, 'quartinout')
noteTweenAngle('D', 3, 100000, 7.6, 'quartinout')
noteTweenAngle('E', 4, 100000, 7.6, 'quartinout')
noteTweenAngle('F', 5, 100000, 7.6, 'quartinout')
noteTweenAngle('J', 6, 100000, 7.6, 'quartinout')
noteTweenAngle('H', 7, 100000, 7.6, 'quartinout')
doTweenAngle('dad', 'dad', 100000, 7.6, 'quartinout');
end
end
end

function onTweenCompleted(tag)
if tag == 'A' then
setPropertyFromGroup('opponentStrums', 0, 'angle', 0)
setPropertyFromGroup('opponentStrums', 1, 'angle', 0)
setPropertyFromGroup('opponentStrums', 2, 'angle', 0)
setPropertyFromGroup('opponentStrums', 3, 'angle', 0)

setPropertyFromGroup('playerStrums', 0, 'angle', 0)
setPropertyFromGroup('playerStrums', 1, 'angle', 0)
setPropertyFromGroup('playerStrums', 2, 'angle', 0)
setPropertyFromGroup('playerStrums', 3, 'angle', 0)
setProperty('dad.angle', 0)
	end
end

function onUpdate(elapsed)
setTextString('Scoreado', ' ' .. score .. '            ' .. misses);
setProperty('boyfriend.angle', getProperty('dad.angle'))
setProperty('camHUD.zoom', lerp(getProperty('camHUD.zoom'), 0.8, elapsed))
setProperty('camGame.zoom', lerp(getProperty('camGame.zoom'), getProperty('defaultCamZoom') - 0.1, elapsed))
setProperty('camZooming', false)
end