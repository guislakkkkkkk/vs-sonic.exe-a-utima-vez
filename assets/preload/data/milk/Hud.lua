
function onCreate()

makeLuaSprite('sunky1', 'sonicUI/sunky/sunky1', 145, 540);
addLuaSprite('sunky1', false);
scaleObject('sunky1', 1.05, 1) 
setObjectCamera('sunky1', 'hud');
setObjectOrder('sunky1', 10)

makeLuaSprite('sunky2', 'sonicUI/sunky/sunky2', 150, 0);
addLuaSprite('sunky2', false);
scaleObject('sunky2', 1.05, 1) 
setObjectCamera('sunky2', 'hud');
setObjectOrder('sunky2', 10)

makeLuaSprite('sunky3', 'sonicUI/sunky/sunky3', 785, 400);
addLuaSprite('sunky3', false);
scaleObject('sunky3', 1.05, 1) 
setObjectCamera('sunky3', 'hud');
setObjectOrder('sunky3', 10)

setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

makeLuaText('Missesols', "", 500, 340, 618-21)
setObjectCamera('Missesols', 'hud')
setTextColor('Missesols', 'FFFFFF')
setTextSize('Missesols', 35)
setTextBorder('Missesols', 2, '000000')
setTextFont('Missesols', 'sunky.otf')
setTextAlignment('Missesols', 'left')
addLuaText('Missesols', false)

makeLuaText('WhenScore', "", 500, 1000-700, 644)
setObjectCamera('WhenScore', 'hud')
setTextColor('WhenScore', 'FFFFFF')
setTextSize('WhenScore', 35)
setTextBorder('WhenScore', 2, '000000')
setTextFont('WhenScore', 'sunky.otf')
setTextAlignment('WhenScore', 'left')
addLuaText('WhenScore', false)

makeLuaText('score', 'score:', 210, 795-710, 637)
setTextSize('score', 40)
setTextBorder('score', 2, '000000')
setTextColor('score', 'FFFFFF')
setTextFont('score', 'sunky.otf')
setTextAlignment('score', 'right')
addLuaText('score', false)

makeLuaText('misses', 'misses:', 210, 100, 617-25)
setTextSize('misses', 38)
setTextBorder('misses', 2, '000000')
setTextColor('misses', 'FFFFFF')
setTextFont('misses', 'sunky.otf')
setTextAlignment('misses', 'right')
addLuaText('misses', false)

makeLuaSprite('barraI', '', -10, -30)
makeGraphic('barraI', 170, 1280, '000000')
addLuaSprite('barraI', true)
setObjectCamera('barraI', 'other')
setScrollFactor('barraI', 1, 1)

makeLuaSprite('barraD', '', 1100, -30)
makeGraphic('barraD', 200, 1280, '000000')
addLuaSprite('barraD', true)
setObjectCamera('barraD', 'other')
setScrollFactor('barraD', 1, 1)

end

function onCountdownStarted()
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('timeTxt.x', 850)

setTextFont('timeTxt', 'sunky.otf')
setProperty('timeTxt.scale.x', 1.75)
setProperty('timeTxt.scale.y', 1.75) 

setProperty('WhenScore.antialiasing', true);
setProperty('timeTxt.antialiasing', true);
setProperty('Missesols.antialiasing', true);
setProperty('misses.antialiasing', true);
setProperty('score.antialiasing', true);


setObjectCamera('Missesols', 'camHUD');
setObjectCamera('WhenScore', 'camHUD');
setObjectCamera('score', 'camHUD');

setObjectOrder('timeTxt', 50)

noteTweenX('smuki1', 0, 90+97, 0.01, 'linear');
noteTweenX('smuki2', 1, 205+97, 0.01, 'linear');
noteTweenX('smuki3', 2, 315+97, 0.01, 'linear');
noteTweenX('smuki4', 3, 425+97, 0.01, 'linear');

noteTweenX('bf1', 4, 730-86, 0.01, 'linear');
noteTweenX('bf2', 5, 845-86, 0.01, 'linear');
noteTweenX('bf3', 6, 955-86, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-86, 0.01, 'linear');

if not downscroll then
setProperty('timeTxt.y', 660)
end
if downscroll then 
setProperty('sunky1.flipY', true);
setProperty('sunky2.flipY', true);
setProperty('sunky3.flipY', true);

setProperty('sunky1.y', getProperty('sunky1.y')-550)
setProperty('sunky2.y', getProperty('sunky2.y')+433)
setProperty('sunky3.y', getProperty('sunky3.y')-400)

setProperty('WhenScore.y', getProperty('WhenScore.y')-580)
setProperty('timeTxt.y', getProperty('timeTxt.y')-580)
setProperty('Missesols.y', getProperty('Missesols.y')-580)
setProperty('misses.y', getProperty('misses.y')-580)
setProperty('score.y', getProperty('score.y')-580)

setObjectOrder('Missesols', 15)
setObjectOrder('WhenScore', 15)
setObjectOrder('misses', 15)
setObjectOrder('score', 15)

setProperty('timeTxt.y', 10)
end
end

function onUpdate(elapsed)
    setTextString('Missesols', "" ..  misses)
--ty mx psych port
    setTextString('WhenScore', score)
    if getProperty('WhenScore.text.length') == 1 then
        setTextString('WhenScore', "00000"..getProperty('WhenScore.text'))
    elseif getProperty('WhenScore.text.length') == 2 then
        setTextString('WhenScore', "0000"..getProperty('WhenScore.text'))
    elseif getProperty('WhenScore.text.length') == 3 then
        setTextString('WhenScore', "000"..getProperty('WhenScore.text'))
    elseif getProperty('WhenScore.text.length') == 4 then
        setTextString('WhenScore', "00"..getProperty('WhenScore.text'))
    elseif getProperty('WhenScore.text.length') == 5 then
        setTextString('WhenScore', "0"..getProperty('WhenScore.text'))
    end
end