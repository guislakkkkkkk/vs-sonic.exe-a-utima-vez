function onCreate()
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)

makeLuaSprite('RaB', 'Exe/Inicio/Round-a-Bout', 0, 0);
setObjectCamera('RaB', 'other');
scaleObject('RaB', 1, 1);
addLuaSprite('RaB', false);
setProperty('RaB.alpha', 1)

makeAnimatedLuaSprite('overstat', 'VCR/overstat', 0, 0);
addAnimationByPrefix('overstat', 'overstat', 'overstat', 25, true)
objectPlayAnimation('overstat', 'overstat', true);
setObjectCamera('overstat', 'other')
addLuaSprite('overstat', false);
setProperty('overstat.alpha', 0.3)
setBlendMode('overstat', 'SHADER')
scaleObject('overstat', 8, 4)  

makeLuaSprite('Majin2', 'sonicUI/Majin2', -300, -70);
addLuaSprite('Majin2', false);
scaleObject('Majin2', 1.78, 1.68) 
setObjectCamera('Majin2', 'other');
setBlendMode('Majin2', 'MULTIPLY')

makeLuaSprite('VCR', 'VCR/VCR', 0, 0);
setLuaSpriteScrollFactor('VCR', 0, 0);
addLuaSprite('VCR', true);
scaleObject('VCR', 2, 2)  
setObjectCamera('VCR', 'other');  

  makeLuaText('Health', 'health:', 210, -70, 20+112)
  setTextSize('Health', 25)
  setTextBorder('Health', 2, '000000')
  setTextColor('Health', 'FFFFFF')
  setTextAlignment('Health', 'right')
  addLuaText('Health', true)

  makeLuaText('Score', "score:", 210, -85, 60+112)
  setObjectCamera('Score', 'hud')
  setTextColor('Score', 'FFFFFF')
  setTextSize('Score', 25)
  setTextBorder('Score', 2, '000000');
  setTextAlignment('Score', 'right')
  addLuaText('Score', true)

  makeLuaText('Miss', "misses:", 210, -65, 100+112)
  setObjectCamera('Miss', 'hud')
  setTextColor('Miss', 'FFFFFF')
  setTextSize('Miss', 25)
  setTextBorder('Miss', 2, '000000');
  setTextAlignment('Miss', 'right')
  addLuaText('Miss', true)

  makeLuaText('Hora', "3:21", 500, 750, 550)
  setObjectCamera('Hora', 'hud')
  setTextColor('Hora', 'FFFFFF')
  setTextSize('Hora', 70)
  setTextBorder('Hora', 2, '000000');
  setTextAlignment('Hora', 'right')
  addLuaText('Hora', true)

  makeLuaText('Fecha', "Nov. 24 1993", 500, 740, 620)
  setObjectCamera('Fecha', 'hud')
  setTextColor('Fecha', 'FFFFFF')
  setTextSize('Fecha', 70)
  setTextBorder('Fecha', 2, '000000');
  setTextAlignment('Fecha', 'right')
  addLuaText('Fecha', true)

  makeLuaText('Lasalud', '', 210, -20, 20+112)
  setTextSize('Lasalud', 25)
  setTextBorder('Lasalud', 2, '000000')
  setTextColor('Lasalud', 'FFFFFF')
  setTextAlignment('Lasalud', 'right')
  addLuaText('Lasalud', true)

  makeLuaText('Scorrrs', "", 210, -10, 60+112)
  setObjectCamera('Scorrrs', 'hud')
  setTextColor('Scorrrs', 'FFFFFF')
  setTextSize('Scorrrs', 25)
  setTextBorder('Scorrrs', 2, '000000');
  setTextAlignment('Scorrrs', 'right')
  addLuaText('Scorrrs', true)

  makeLuaText('Misses', "", 210, -25, 100+112)
  setObjectCamera('Misses', 'hud')
  setTextColor('Misses', 'FFFFFF')
  setTextSize('Misses', 25)
  setTextBorder('Misses', 2, '000000');
  setTextAlignment('Misses', 'right')
  addLuaText('Misses', true)

  makeLuaText('RatinGOOO','', 210, 0, 140+112)
  setObjectCamera('RatinGOOO', 'hud')
  setTextSize('RatinGOOO', 35)
  addLuaText('RatinGOOO')

end

local allowCountdown = false

function onStartCountdown()
  if not allowCountdown then
  runTimer('VHS', 0.3)
  runTimer('Fade', 1)
  runTimer('Start', 1.5)
  allowCountdown = true;
  return Function_Stop;
  end
  return Function_Continue;
end



function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'tiempo1' then
setTextString('Hora', "3:22")
end
if tag == 'tiempo2' then
setTextString('Hora', "3:23")  
end
if tag == 'VHS' then
playSound('VHS', 1);
setProperty('RaB.alpha', 1)
setProperty('skipCountdown', true)
end
if tag == 'Fade' then
doTweenAlpha('RaB', 'RaB', 0, 3, 'linear');
end
if tag == 'Start' then
startCountdown()
Papu()
end
end

function Papu()
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

noteTweenX('nm1', 0, 90+85, 0.01, 'linear');
noteTweenX('nm2', 1, 205+85, 0.01, 'linear');
noteTweenX('nm3', 2, 315+85, 0.01, 'linear');
noteTweenX('nm4', 3, 425+85, 0.01, 'linear');

noteTweenX('bf1', 4, 730-85, 0.01, 'linear');
noteTweenX('bf2', 5, 845-85, 0.01, 'linear');
noteTweenX('bf3', 6, 955-85, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-85, 0.01, 'linear');
doTweenAlpha('hud', 'camHUD', 0.7, 0.01, 'quadInOut');


setProperty('timeTxt.scale.x', 2.5)
setProperty('timeTxt.scale.y', 2.5)
setTextColor('timeTxt', 'FFFFFF')
setTextFont('timeTxt', 'sonic-hud-font.ttf')

runTimer('tiempo1', 60);
runTimer('tiempo2', 120);

if not downscroll then
setProperty('timeTxt.x', 975)  
setProperty('timeTxt.y', 50)  
end
if downscroll then
setProperty('timeTxt.x', 975)  
setProperty('timeTxt.y', 650)  
setProperty('Fecha.y', getProperty('Fecha.y')-500)
setProperty('Hora.y', getProperty('Hora.y')-500)
end
end

function onUpdatePost()
  setTextString('Lasalud', ''.. math.floor(getProperty('health')*50))
  setTextString('RatinGOOO','Rating: [' .. ratingFC .. '] '..ratingName)
  setTextString('Misses', "" ..  misses)
  setTextString('Scorrrs', "" ..  score)
end

function onBeatHit()
if curBeat % 6 == 0 then
 cameraShake('other', '0.25', '0.050') 
triggerEvent('Screen Shake', '0.050, 0.25', '0.050, 0.25');
end
end 