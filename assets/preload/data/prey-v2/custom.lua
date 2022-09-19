function onCountdownStarted()

setProperty('scoreTxt.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeBarBG.visible', false)

	makeLuaSprite('hud', 'hud', 30, 30)
	setObjectCamera('hud', 'hud')
	setGraphicSize('hud', 230, 200)
    addLuaSprite('hud', true)

  makeLuaText('Misses', "", 500, 260, 100)
  setObjectCamera('Misses', 'hud')
  setTextColor('Misses', 'FFFFFF')
  setTextSize('Misses', 70)
  setTextFont('Misses', 'sonic-hud-font.ttf')
  setTextBorder('Misses', 5, '000000');
  setTextAlignment('Misses', 'left')
  addLuaText('Misses')

 makeLuaText('Score', "", 500, 220, 160)
 setObjectCamera('Score', 'hud')
 setTextColor('Score', 'FFFFFF')
 setTextSize('Score', 70)
 setTextFont('Score', 'sonic-hud-font.ttf')
 setTextBorder('Score', 5, '000000');
 setTextAlignment('Score', 'left')
 addLuaText('Score')

setProperty('timeTxt.scale.x', 2)
setProperty('timeTxt.scale.y', 2)	

setProperty('timeTxt.alpha', 1)
setTextColor('timeTxt', 'FFFFFF')
setTextFont('timeTxt', 'sonic-hud-font.ttf')

if not downscroll then
setProperty('hud.y', 500)
setProperty('Score.y', 635)
setProperty('Misses.y', 570)
setProperty('timeTxt.x', 60)
setProperty('timeTxt.y', 520)
end
if downscroll then
setProperty('timeTxt.y', 50)
setProperty('timeTxt.x', 60)
end
end

function onUpdate(elapsed)
setTextString('Misses', "" ..  misses)
setTextString('Score', "" ..  score)
end