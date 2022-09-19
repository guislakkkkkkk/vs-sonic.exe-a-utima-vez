function onCreate()

setProperty('scoreTxt.visible', false)

makeLuaText('combosito', 'combo:', 500, -5, 640)
setTextColor('combosito', 'FFFF00')
setTextAlignment('combosito', 'center')
addLuaText('combosito')
setTextBorder('combosito', 6, '000000')
setProperty('combosito.scale.x', 0.4)
setProperty('combosito.scale.y', 0.4)
setTextSize('combosito', 100)
setObjectCamera('combosito', 'camHUD')
setTextFont("combosito", "sonic-hud-font.ttf");

makeLuaText('misstext', "", 500, 320, 545)
setObjectCamera('misstext', 'hud')
setTextColor('misstext', 'FFFFFF')
setTextSize('misstext', 40)
setTextBorder('misstext', 3, '000000')
setTextFont('misstext', 'sonic-hud-font.ttf')
setTextAlignment('misstext', 'left')
addLuaText('misstext', false)

makeLuaText('scoretext', "", 500, 290, 620)
setObjectCamera('scoretext', 'hud')
setTextColor('scoretext', 'FFFFFF')
setTextSize('scoretext', 40)
setTextBorder('scoretext', 3, '000000')
setTextFont('scoretext', 'sonic-hud-font.ttf')
setTextAlignment('scoretext', 'left')
addLuaText('scoretext', false)

makeLuaSprite('hudSonic', 'sonicUI/hudSonic', 30+150, 540)
setObjectCamera('hudSonic', 'hudSonic')
setProperty('hudSonic.antialiasing', false);
setObjectCamera('hudSonic', 'hud')
scaleObject('hudSonic', 0.25, 0.25)
addLuaSprite('hudSonic', false);

makeLuaSprite('barraI', '', -10, -30)
makeGraphic('barraI', 150, 1280, '000000')
addLuaSprite('barraI', true)
setObjectCamera('barraI', 'other')
setScrollFactor('barraI', 1, 1)

makeLuaSprite('barraD', '', 1130, -30)
makeGraphic('barraD', 150, 1280, '000000')
addLuaSprite('barraD', true)
setObjectCamera('barraD', 'other')
setScrollFactor('barraD', 1, 1)
    for i = 0, getProperty('unspawnNotes.length')-1 do
        if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CustomTexture' then 
            setPropertyFromGroup('unspawnNotes', i, 'No Animation', false); 
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
            end
        end
    end
end

function onCountdownStarted()
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)

setProperty('timeTxt.x', 115)
setTextFont('timeTxt', 'sonic-hud-font.ttf')
setProperty('timeTxt.scale.x', 1.2)
setProperty('timeTxt.scale.y', 1.2) 

noteTweenX('fatal1', 0, 90+65, 0.01, 'linear');
noteTweenX('fatal2', 1, 205+65, 0.01, 'linear');
noteTweenX('fatal3', 2, 315+65, 0.01, 'linear');
noteTweenX('fatal4', 3, 425+65, 0.01, 'linear');

noteTweenX('bf1', 4, 730-65, 0.01, 'linear');
noteTweenX('bf2', 5, 845-65, 0.01, 'linear');
noteTweenX('bf3', 6, 955-65, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-65, 0.01, 'linear');

setObjectOrder('misstext', 10)
setObjectOrder('scoretext', 10)
setObjectOrder('combosito', 10)

if not downscroll then
noteTweenY("yo1", 0, 50, 1, "linear")
noteTweenY("yo2", 1, 50, 1, "linear")
noteTweenY("yo3", 2, 50, 1, "linear")
noteTweenY("yo4", 3, 50, 1, "linear")

noteTweenY("yo5", 4, 50, 1, "linear")
noteTweenY("yo6", 5, 50, 1, "linear")
noteTweenY("yo7", 6, 50, 1, "linear")
noteTweenY("yo8", 7, 50, 1, "linear")
setProperty('timeTxt.y', 585)
end
if downscroll then
noteTweenY("yo1", 0, 570, 1, "linear")
noteTweenY("yo2", 1, 570, 1, "linear")
noteTweenY("yo3", 2, 570, 1, "linear")
noteTweenY("yo4", 3, 570, 1, "linear")

noteTweenY("yo5", 4, 570, 1, "linear")
noteTweenY("yo6", 5, 570, 1, "linear")
noteTweenY("yo7", 6, 570, 1, "linear")
noteTweenY("yo8", 7, 570, 1, "linear")

setProperty('timeTxt.y', getProperty('timeTxt.y')-590)
setProperty('combosito.y', getProperty('combosito.y')-500)
setProperty('hudSonic.y', getProperty('hudSonic.y')-500)
setProperty('scoretext.y', getProperty('scoretext.y')-500)
setProperty('misstext.y', getProperty('misstext.y')-500)
end

setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setTextFont("botplayTxt", "sonic-hud-font.ttf");
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

function opponentNoteHit(id,dir,type,sus)
    if type == 'CustomTexture' then
        characterPlayAnim('gf', getProperty('singAnimations')[math.abs(dir)+1], true)
        setProperty('gf.holdTimer', 0)
    end
end