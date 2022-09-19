
function onCreate()

makeLuaSprite('hog', 'sonicUI/hog', 0, 0);
addLuaSprite('hog', true);
scaleObject('hog', 1, 1) 
setObjectCamera('hog', 'other');

setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

makeLuaText('misstext', "", 500, 380, 100-50)
setObjectCamera('misstext', 'hud')
setTextColor('misstext', 'FFFFFF')
setTextSize('misstext', 35)
setTextBorder('misstext', 2, '000000')
setTextFont('misstext', 'sonic-hud-font.ttf')
setTextAlignment('misstext', 'left')

makeLuaText('scoretext', "", 500, 1000, 55)
setObjectCamera('scoretext', 'hud')
setTextColor('scoretext', 'FFFFFF')
setTextSize('scoretext', 35)
setTextBorder('scoretext', 2, '000000')
setTextFont('scoretext', 'sonic-hud-font.ttf')
setTextAlignment('scoretext', 'left')

addLuaText('misstext', false)
addLuaText('scoretext', false)

end

function onCountdownStarted()
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)

setTextFont('timeTxt', 'sonic-hud-font.ttf')
setProperty('timeTxt.scale.x', 1.75)
setProperty('timeTxt.scale.y', 1.75) 

    makeLuaText('HP', 'hp:', 210, 85, 560+70)
    setTextSize('HP', 46)
    setTextBorder('HP', 2, '000000')
    setTextColor('HP', 'FFFFFF')
    setTextFont('HP', 'sonic-hud-font.ttf')
    setTextAlignment('HP', 'right')
    addLuaText('HP', false)

    makeLuaText('score', 'score:', 210, 795, 617)
    setTextSize('score', 40)
    setTextBorder('score', 2, '000000')
    setTextColor('score', 'FFFFFF')
    setTextFont('score', 'sonic-hud-font.ttf')
    setTextAlignment('score', 'right')
    addLuaText('score', false)

    makeLuaText('misses', 'misses:', 210, 150, 617-25)
    setTextSize('misses', 38)
    setTextBorder('misses', 2, '000000')
    setTextColor('misses', 'FFFFFF')
    setTextFont('misses', 'sonic-hud-font.ttf')
    setTextAlignment('misses', 'right')
    addLuaText('misses', false)

    makeLuaText('healthTxt', 'healthTxt', 210, 150, 560+70)
    setTextSize('healthTxt', 46)
    setTextBorder('healthTxt', 2, '000000')
    setTextColor('healthTxt', 'FFFFFF')
    setTextFont('healthTxt', 'sonic-hud-font.ttf')
    setTextAlignment('healthTxt', 'right')
    addLuaText('healthTxt', false)

setObjectCamera('misses', 'camOther');
setObjectCamera('misstext', 'camOther');
setObjectCamera('scoretext', 'camOther');
setObjectCamera('healthTxt', 'camOther');
setObjectCamera('score', 'camOther');
setObjectCamera('HP', 'camOther');
setObjectCamera('healthTxt', 'camOther');

setObjectOrder('misses', 100)
setObjectOrder('misstext', 101)
setObjectOrder('healthTxt', 102)
setObjectOrder('score', 103)
setObjectOrder('HP', 104)
setObjectOrder('scoretext', 105)


setObjectOrder('hog', 112)
setObjectOrder('scorchedhud', 122)

noteTweenX('manuel1', 0, 90+97, 0.01, 'linear');
noteTweenX('manuel2', 1, 205+97, 0.01, 'linear');
noteTweenX('manuel3', 2, 315+97, 0.01, 'linear');
noteTweenX('manuel4', 3, 425+97, 0.01, 'linear');

noteTweenX('bf1', 4, 730-86, 0.01, 'linear');
noteTweenX('bf2', 5, 845-86, 0.01, 'linear');
noteTweenX('bf3', 6, 955-86, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-86, 0.01, 'linear');

if not downscroll then
setProperty('timeTxt.x', -65)
setProperty('timeTxt.y', 610)

setProperty('scoretext.y', 620)
setProperty('misstext.y', 618-25)
end
if downscroll then
setProperty('hog.flipY', true);
setProperty('scorchedhud.flipY', true);

setProperty('scoretext.y', 600-531)
setProperty('misstext.y', 593-550)

setProperty('healthTxt.y', getProperty('healthTxt.y')-550)
setProperty('misses.y', getProperty('misses.y')-550)
setProperty('score.y', getProperty('score.y')-550)
setProperty('HP.y', getProperty('HP.y')-550)

setProperty('timeTxt.x', -65)
setProperty('timeTxt.y', 90)
end
end

function onRecalculateRating()
    setTextString('healthTxt', math.floor(getProperty('health')*50))
    setTextString('misstext', "" ..  misses)
--ty game over psych port
    setTextString('scoretext', score)
    if getProperty('scoretext.text.length') == 1 then
   setTextString('scoretext', "00000"..getProperty('scoretext.text'))
    elseif getProperty('scoretext.text.length') == 2 then
        setTextString('scoretext', "0000"..getProperty('scoretext.text'))
    elseif getProperty('scoretext.text.length') == 3 then
        setTextString('scoretext', "000"..getProperty('scoretext.text'))
    elseif getProperty('scoretext.text.length') == 4 then
        setTextString('scoretext', "00"..getProperty('scoretext.text'))
    elseif getProperty('scoretext.text.length') == 5 then
        setTextString('scoretext', "0"..getProperty('scoretext.text'))
    end
end