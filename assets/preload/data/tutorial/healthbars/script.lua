function onCreate()
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)

makeAnimatedLuaSprite('MajinHUD', 'exe/FunInfiniteStage/MajinHUD', 800, 100);
addAnimationByPrefix('MajinHUD', 'MajinHUD', 'majin idle', 22, true)
objectPlayAnimation('MajinHUD', 'MajinHUD', true);
setObjectCamera('MajinHUD', "hud")  
addLuaSprite('MajinHUD', true);
scaleObject('MajinHUD', 0.3, 0.3)  

makeAnimatedLuaSprite('MajinHUD2', 'exe/FunInfiniteStage/MajinHUD', -160, 100);
addAnimationByPrefix('MajinHUD2', 'MajinHUD2', 'majin idle', 22, true)
objectPlayAnimation('MajinHUD2', 'MajinHUD2', true);
setObjectCamera('MajinHUD2', "hud") 
addLuaSprite('MajinHUD2', true);
setProperty('MajinHUD2.flipX', true);
scaleObject('MajinHUD2', 0.3, 0.3)  

  makeLuaText('Score', "score:", 210, 50, 400)
  setObjectCamera('Score', 'other')
  setTextColor('Score', 'FFFFFF')
  setTextSize('Score', 32)
  setTextBorder('Score', 2, '000000');
  setTextAlignment('Score', 'right')
  addLuaText('Score', true)

  makeLuaText('Miss', "misses:", 210, -65, 100+112)
  setObjectCamera('Miss', 'other')
  setTextColor('Miss', 'FFFFFF')
  setTextSize('Miss', 25)
  setTextBorder('Miss', 2, '000000');
  setTextAlignment('Miss', 'right')
  addLuaText('Miss', true)

  makeLuaText('ScoreCounter', "", 210, -10, 60+112)
  setObjectCamera('ScoreCounter', 'other')
  setTextColor('ScoreCounter', 'FFFFFF')
  setTextSize('ScoreCounter', 15)
  setTextBorder('ScoreCounter', 2, '000000');
  setTextAlignment('ScoreCounter', 'right')
  addLuaText('ScoreCounter', true)

  makeLuaText('MissCounter', "", 210, -25, 100+112)
  setObjectCamera('MissCounter', 'other')
  setTextColor('MissCounter', 'FFFFFF')
  setTextSize('MissCounter', 25)
  setTextBorder('MissCounter', 2, '000000');
  setTextAlignment('MissCounter', 'right')
  addLuaText('MissCounter', true)

doTweenAngle('MajinHUDT2', 'Score', -50, 0.6, 'linear');
end

function onCountdownStarted()
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

noteTweenX('fatal1', 0, 90+16, 0.01, 'linear');
noteTweenX('fatal2', 1, 205+16, 0.01, 'linear');
noteTweenX('fatal3', 2, 315+16, 0.01, 'linear');
noteTweenX('fatal4', 3, 425+16, 0.01, 'linear');
--Moves Opponent Notes to there side.
noteTweenX('bf1', 4, 730-16, 0.01, 'linear');
noteTweenX('bf2', 5, 845-16, 0.01, 'linear');
noteTweenX('bf3', 6, 955-16, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-16, 0.01, 'linear');

setProperty('timeTxt.x', 975)  
setProperty('timeTxt.y', 50)  
setProperty('timeTxt.scale.x', 2.5)
setProperty('timeTxt.scale.y', 2.5)
setTextColor('timeTxt', 'FFFFFF')
setTextFont('timeTxt', 'sonic4.ttf')
end

function onUpdatePost()
  setTextString('MissCounter', "" ..  misses)
  setTextString('ScoreCounter', "" ..  score)
end

function onUpdate()
if (getProperty('MajinHUD.animation.curAnim.curFrame') == 14) then
doTweenAngle('MajinHUDT2', 'Score', -45, 0.35, 'linear');
end
if (getProperty('MajinHUD.animation.curAnim.curFrame') == 2) then
doTweenAngle('MajinHUDT1', 'Score', -15, 0.35, 'linear');  
end
end