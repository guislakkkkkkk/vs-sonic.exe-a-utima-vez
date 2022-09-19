local XHud = 0

function lerp(a, b, ratio)
return a + ratio * (b - a)
end

function onCreate()
makeLuaSprite('PareceQueAMuñecaDeColasNoleGustoTuMomo', 'sonicUI/PareceQueAMuñecaDeColasNoleGustoTuMomo', 0, 0);
addLuaSprite('PareceQueAMuñecaDeColasNoleGustoTuMomo', false);
scaleObject('PareceQueAMuñecaDeColasNoleGustoTuMomo', 1.05, 1) 
setObjectCamera('PareceQueAMuñecaDeColasNoleGustoTuMomo', 'other');

makeLuaSprite('Majin2', 'sonicUI/Majin2', -300, -70);
addLuaSprite('Majin2', false);
scaleObject('Majin2', 1.78, 1.68) 
setObjectCamera('Majin2', 'other');
setBlendMode('Majin2', 'MULTIPLY')

makeLuaText('healthTxt', 'healthTxt', 210, 400, -10)
setTextSize('healthTxt', 150)
setTextColor('healthTxt', 'FFFFFF')
setTextFont('healthTxt', 'soulless.ttf')
setTextAlignment('healthTxt', 'right')
setObjectCamera('healthTxt', 'other');
addLuaText('healthTxt', false)
setProperty('healthTxt.antialiasing', true)	
end

function onCountdownStarted()
noteTweenX('dad1', 0, 90+170, 0.01, 'linear');
noteTweenX('dad2', 1, 205+170, 0.01, 'linear');
noteTweenX('dad3', 2, 315+450, 0.01, 'linear');
noteTweenX('dad4', 3, 425+450, 0.01, 'linear');

noteTweenX('bf1', 4, 90+170, 0.01, 'linear');
noteTweenX('bf2', 5, 205+170, 0.01, 'linear');
noteTweenX('bf3', 6, 315+450, 0.01, 'linear');
noteTweenX('bf4', 7, 425+450, 0.01, 'linear');



setProperty('healthBarBG.y', 700)
setProperty('healthBar.y', 700)
setProperty('scoreTxt.y', 720)
setProperty('iconP1.y', 630)
setProperty('iconP2.y', 630)

setObjectCamera('timeTxt', 'other');
setProperty('scoreTxt.visible', false);
setProperty('scoreTxt.scale.x', 3)
setProperty('scoreTxt.scale.y', 3)	
setProperty('timeTxt.scale.x', 3)
setProperty('timeTxt.scale.y', 3)	
setProperty('botplayTxt.scale.x', 3)
setProperty('botplayTxt.scale.y', 3)	

setProperty('timeBar.scale.y', 4)	
setProperty('timeBarBG.scale.y', 4)	
setProperty('timeBar.scale.x', 1.06)	
setProperty('timeBarBG.scale.x', 1.06)	

setTextFont("timeTxt", "soulless.ttf");
setTextFont("botplayTxt", "soulless.ttf");

setProperty('timeTxt.x', -90)
setProperty('timeTxt.y', 610)

setProperty('timeBar.y', 785)
setProperty('timeBarBG.y', 785)

setProperty('timeBar.x', getProperty('timeBar.x')-37)
setProperty('timeBarBG.x', getProperty('timeBarBG.x')-37)

setObjectOrder('Majin2', 102)

setProperty('healthBar.visible', false) 
setProperty('iconP1.visible', false) 
setProperty('healthBarBG.visible', false) 
doTweenColor('timeTxt', 'timeTxt', 'FF0000', 0.005, 'linear');

makeLuaSprite('hitBox', 'hitBox', 840, 680)
setObjectCamera('hitBox', 'hud')
scaleObject('hitBox', 2, 0.8)
setProperty('hitBox.visible', false) 
addLuaSprite('hitBox', true)

if not downscroll then
noteTweenY("1", 0, 69, 1, "linear")
noteTweenY("2", 1, 69, 1, "linear")
noteTweenY("3", 2, 69, 1, "linear")
noteTweenY("4", 3, 69, 1, "linear")

noteTweenY("5", 4, 69, 1, "linear")
noteTweenY("6", 5, 69, 1, "linear")
noteTweenY("7", 6, 69, 1, "linear")
noteTweenY("8", 7, 69, 1, "linear")
end
if downscroll then
noteTweenY("1", 0, 650, 1, "linear")
noteTweenY("2", 1, 650, 1, "linear")
noteTweenY("3", 2, 650, 1, "linear")
noteTweenY("4", 3, 650, 1, "linear")

noteTweenY("5", 4, 650, 1, "linear")
noteTweenY("6", 5, 650, 1, "linear")
noteTweenY("7", 6, 650, 1, "linear")
noteTweenY("8", 7, 650, 1, "linear")
end
end

function onUpdate(elapsed)
setTextString('healthTxt', math.floor(getProperty('health')*50))
setProperty('camHUD.zoom', lerp(getProperty('camHUD.zoom'), 0.8, elapsed))
setProperty('camGame.zoom', lerp(getProperty('camGame.zoom'), getProperty('defaultCamZoom') - 0.3, elapsed))
setProperty('camZooming', false)
end

function onUpdatePost()
setProperty('iconP2.x', screenWidth - 200)
setProperty('iconP2.flipX', true)
end