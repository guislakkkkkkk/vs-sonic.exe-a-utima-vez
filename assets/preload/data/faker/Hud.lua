function onCreate()

makeLuaSprite('faker', 'sonicUI/faker', 0, 0);
addLuaSprite('faker', false);
scaleObject('faker', 1, 1) 
setObjectCamera('faker', 'hud');

setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

makeLuaText('Missss', "", 500, 1160, 649)
setObjectCamera('Missss', 'hud')
setTextColor('Missss', 'FFFFFF')
setTextSize('Missss', 35)
setTextBorder('Missss', 1, '000000')
setTextFont('Missss', 'sonic-hud-font.ttf')
setTextAlignment('Missss', 'left')

makeLuaText('Scorerrrr', "", 500, 240, 640)
setObjectCamera('Scorerrrr', 'hud')
setTextColor('Scorerrrr', 'FFFFFF')
setTextSize('Scorerrrr', 40)
setTextBorder('Scorerrrr', 1, '000000')
setTextFont('Scorerrrr', 'sonic-hud-font.ttf')
setTextAlignment('Scorerrrr', 'left')

    addLuaText('Missss', false)
    addLuaText('Scorerrrr', false)

end

function onCountdownStarted()
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('timeTxt.x', 930)
setTextFont('timeTxt', 'sonic-hud-font.ttf')

    makeLuaText('HP', 'hp:', 210, 0-10, 560)
    setTextSize('HP', 46)
    setTextBorder('HP', 1, '000000')
    setTextColor('HP', 'FFFFFF')
    setTextFont('HP', 'sonic-hud-font.ttf')
    setTextAlignment('HP', 'right')
    addLuaText('HP', false)

    makeLuaText('score', 'score:', 210, 30, 640)
    setTextSize('score', 46)
    setTextBorder('score', 1, '000000')
    setTextColor('score', 'FFFFFF')
    setTextFont('score', 'sonic-hud-font.ttf')
    setTextAlignment('score', 'right')
    addLuaText('score', false)

    makeLuaText('misses', 'misses:', 210,950, 650)
    setTextSize('misses', 38)
    setTextBorder('misses', 1, '000000')
    setTextColor('misses', 'FFFFFF')
    setTextFont('misses', 'sonic-hud-font.ttf')
    setTextAlignment('misses', 'right')
    addLuaText('misses', false)

    makeLuaText('HTX', 'health', 210, 60-10, 560)
    setTextSize('HTX', 46)
    setTextBorder('HTX', 1, '000000')
    setTextColor('HTX', 'FFFFFF')
    setTextFont('HTX', 'sonic-hud-font.ttf')
    setTextAlignment('HTX', 'right')
    addLuaText('HTX', false)

setObjectCamera('Missss', 'camHUD');
setObjectCamera('Scorerrrr', 'camHUD');
setObjectCamera('HTX', 'camHUD');
setObjectCamera('score', 'camHUD');

setObjectOrder('HP', 10)
setObjectOrder('misses', 10)
setObjectOrder('Missss', 10)
setObjectOrder('score', 10)
setObjectOrder('HTX', 10)
setObjectOrder('Scorerrrr', 10)

if not downscroll then
setProperty('timeTxt.y', 580)
end

if downscroll then
setProperty('Missss.y', getProperty('Missss.y')-500)
setProperty('Scorerrrr.y', getProperty('Scorerrrr.y')-500)
setProperty('HTX.y', getProperty('HTX.y')-500)
setProperty('score.y', getProperty('score.y')-500)
setProperty('faker.y', getProperty('faker.y')-500)
setProperty('HP.y', getProperty('HP.y')-500)
setProperty('misses.y', getProperty('misses.y')-500)
setProperty('timeTxt.y', 80)
end
end

function onUpdate(elapsed)
setTextString('HTX', math.floor(getProperty('health')*50))
setTextString('Missss', "" ..  misses)
setTextString('Scorerrrr', "" ..  score)
end