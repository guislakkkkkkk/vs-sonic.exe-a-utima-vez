local XHud = 0

function lerp(a, b, ratio)
return a + ratio * (b - a)
end

function onCreate()

  makeLuaSprite('cursehud', 'sonicUI/curse', -100, 270);
  setScrollFactor('cursehud', 1, 1);
  scaleLuaSprite('cursehud', 1, 1);
  addLuaSprite('cursehud', false);
  setObjectCamera('cursehud', 'hud');

makeLuaText('Missesols', "", 500, 340-200, 618-21)
setObjectCamera('Missesols', 'hud')
setTextColor('Missesols', 'FFFFFF')
setTextSize('Missesols', 35)
setTextBorder('Missesols', 2, '000000')
setTextFont('Missesols', 'Curse.ttf')
setTextAlignment('Missesols', 'left')
addLuaText('Missesols', false)

makeLuaText('WhenScore', "", 500, 300-200, 644+30)
setObjectCamera('WhenScore', 'hud')
setTextColor('WhenScore', 'FFFFFF')
setTextSize('WhenScore', 35)
setTextBorder('WhenScore', 2, '000000')
setTextFont('WhenScore', 'Curse.ttf')
setTextAlignment('WhenScore', 'left')
addLuaText('WhenScore', false)

makeLuaText('score', 'score:', 210, 85-200, 637+30)
setTextSize('score', 40)
setTextBorder('score', 2, '000000')
setTextColor('score', 'FFFFFF')
setTextFont('score', 'Curse.ttf')
setTextAlignment('score', 'right')
addLuaText('score', false)

makeLuaText('misses', 'misses:', 210, 100-200, 617-25)
setTextSize('misses', 38)
setTextBorder('misses', 2, '000000')
setTextColor('misses', 'FFFFFF')
setTextFont('misses', 'Curse.ttf')
setTextAlignment('misses', 'right')
addLuaText('misses', false)

setObjectOrder('Missesols', 15)
setObjectOrder('WhenScore', 15)
setObjectOrder('misses', 15)
setObjectOrder('score', 15)
end

function onCountdownStarted()
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('timeTxt.visible',false)

noteTweenX('tetas1', 0, 90-120, 0.01, 'linear');
noteTweenX('tetas2', 1, 205-120, 0.01, 'linear');
noteTweenX('tetas3', 2, 315-120, 0.01, 'linear');
noteTweenX('tetas4', 3, 425-120, 0.01, 'linear');

noteTweenX('tits1', 4, 730+120, 0.01, 'linear');
noteTweenX('tits2', 5, 845+120, 0.01, 'linear');
noteTweenX('tits3', 6, 955+120, 0.01, 'linear');
noteTweenX('tits4', 7, 1065+120, 0.01, 'linear');

setProperty('healthBarBG.x', getProperty('healthBarBG.x')+150)
setProperty('healthBar.x', getProperty('healthBar.x')+150)
setProperty('iconP1.x', getProperty('iconP1.x')+150)
setProperty('iconP2.x', getProperty('iconP2.x')+150)

setProperty('healthBarBG.y', 700)
setProperty('healthBar.y', 700)
setProperty('scoreTxt.y', 720)
setProperty('iconP1.y', 630)
setProperty('iconP2.y', 630)
setProperty('scoreTxt.visible', false);

if not downscroll then
noteTweenY("quierosemen1", 0, -1, 1, "linear")
noteTweenY("quierosemen2", 1, -1, 1, "linear")
noteTweenY("quierosemen3", 2, -1, 1, "linear")
noteTweenY("quierosemen4", 3, -1, 1, "linear")

noteTweenY("quierosemen5", 4, -1, 1, "linear")
noteTweenY("quierosemen6", 5, -1, 1, "linear")
noteTweenY("quierosemen7", 6, -1, 1, "linear")
noteTweenY("quierosemen8", 7, -1, 1, "linear")
end
if downscroll then 
setProperty('cursehud.flipY', true);

setProperty('cursehud.y', getProperty('cursehud.y')-370)
setProperty('WhenScore.y', getProperty('WhenScore.y')-640)
setProperty('Missesols.y', getProperty('Missesols.y')-640)
setProperty('misses.y', getProperty('misses.y')-640)
setProperty('score.y', getProperty('score.y')-640)
setProperty('healthBarBG.y', getProperty('healthBarBG.y')-580)
setProperty('healthBar.y', getProperty('healthBar.y')-650)
setProperty('iconP1.y', getProperty('iconP1.y')-650)
setProperty('iconP2.y', getProperty('iconP2.y')-650)

noteTweenY("quierosemen1", 0, 650, 1, "linear")
noteTweenY("quierosemen2", 1, 650, 1, "linear")
noteTweenY("quierosemen3", 2, 650, 1, "linear")
noteTweenY("quierosemen4", 3, 650, 1, "linear")

noteTweenY("quierosemen5", 4, 650, 1, "linear")
noteTweenY("quierosemen6", 5, 650, 1, "linear")
noteTweenY("quierosemen7", 6, 650, 1, "linear")
noteTweenY("quierosemen8", 7, 650, 1, "linear")
end
end

function onUpdate(elapsed)

setProperty('camHUD.zoom', lerp(getProperty('camHUD.zoom'), 0.87, elapsed))
setProperty('camGame.zoom', lerp(getProperty('camGame.zoom'), getProperty('defaultCamZoom') - 0.01, elapsed))
setProperty('camZooming', false)
end

function onRecalculateRating( ... )
setTextString('Missesols', "" ..  misses)
setTextString('WhenScore', score)
end