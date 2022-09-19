
function onCreate()

setProperty('scoreTxt.visible', false)

makeLuaText('misstext', "", 500, 350, 655)
setObjectCamera('misstext', 'hud')
setTextColor('misstext', 'FFFFFF')
setTextSize('misstext', 50)
setTextBorder('misstext', 3, '000000')
setTextFont('misstext', 'sonic-hud-font.ttf')
setTextAlignment('misstext', 'left')
addLuaText('misstext', false)

makeLuaText('scoretext', "", 500, 350, 550)
setObjectCamera('scoretext', 'hud')
setTextColor('scoretext', 'FFFFFF')
setTextSize('scoretext', 50)
setTextBorder('scoretext', 3, '000000')
setTextFont('scoretext', 'sonic-hud-font.ttf')
setTextAlignment('scoretext', 'left')
addLuaText('scoretext', false)

makeAnimatedLuaSprite('fatality', 'sonicUI/fatality', 170, 540);
addAnimationByPrefix('fatality', 'normal', 'normal', 24, true); 
addAnimationByPrefix('fatality', 'glitch1', 'glitch1', 24, true);  
addAnimationByPrefix('fatality', 'glitch2', 'glitch2', 24, true); 
addAnimationByPrefix('fatality', 'glitch3', 'glitch3', 24, true);
addAnimationByPrefix('fatality', 'glitch4', 'glitch4', 24, true); 
objectPlayAnimation('fatality', 'normal', true)
setObjectCamera('fatality', 'hud')
scaleLuaSprite('fatality',  0.35, 0.35);
setProperty('fatality.antialiasing', false);
addLuaSprite('fatality', false);

if botPlay then
makeLuaSprite('botplay', 'exe/fatal/botplay', 900, 600);
addLuaSprite('botplay', false);
scaleObject('botplay', 1, 1) 
setObjectCamera('botplay', 'other')
setProperty('botplay.antialiasing', false) 
end
end

function onCountdownStarted()
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('timeTxt.x', 155)

setTextFont('timeTxt', 'sonic-hud-font.ttf')
setProperty('timeTxt.scale.x', 1.75)
setProperty('timeTxt.scale.y', 1.75) 

setObjectCamera('misstext', 'camHUD');
setObjectCamera('scoretext', 'camHUD');
setObjectCamera('healthTxt', 'camHUD');
setObjectCamera('score', 'camHUD');

noteTweenX('fatal1', 0, 90+65, 0.01, 'linear');
noteTweenX('fatal2', 1, 205+65, 0.01, 'linear');
noteTweenX('fatal3', 2, 315+65, 0.01, 'linear');
noteTweenX('fatal4', 3, 425+65, 0.01, 'linear');

noteTweenX('bf1', 4, 730-65, 0.01, 'linear');
noteTweenX('bf2', 5, 845-65, 0.01, 'linear');
noteTweenX('bf3', 6, 955-65, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-65, 0.01, 'linear');

if not downscroll then
noteTweenY("yo1", 0, 80, 1, "linear")
noteTweenY("yo2", 1, 80, 1, "linear")
noteTweenY("yo3", 2, 80, 1, "linear")
noteTweenY("yo4", 3, 80, 1, "linear")

noteTweenY("yo5", 4, 80, 1, "linear")
noteTweenY("yo6", 5, 80, 1, "linear")
noteTweenY("yo7", 6, 80, 1, "linear")
noteTweenY("yo8", 7, 80, 1, "linear")
setProperty('timeTxt.y', 610)
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

setProperty('scoretext.y', getProperty('scoretext.y')-500)
setProperty('misstext.y', getProperty('misstext.y')-500)
setProperty('botplay.y', getProperty('botplay.y')-500)
setProperty('fatality.y', getProperty('fatality.y')-500)
setProperty('timeTxt.y', 110)
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

function onBeatHit()
if curBeat % 7 == 0 then
runTimer('Font1', 0.1/2, 1);
runTimer('Font2', 0.2/2, 1);
runTimer('Font3', 0.3/2, 1);
runTimer('Font4', 0.4/2, 1);
runTimer('Font5', 0.5/2, 1);
end
end 

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Font1' then
setTextFont("timeTxt", "Error.ttf");
setTextFont("scoretext", "Error.ttf");
setTextFont("misstext", "Error.ttf");
end
if tag == 'Font2' then
setTextFont("timeTxt", "ExeSlayer.ttf");
setTextFont("scoretext", "ExeSlayer.ttf");
setTextFont("misstext", "ExeSlayer.ttf");
end
if tag == 'Font3' then
setTextFont("timeTxt", "Sunky.otf");
setTextFont("scoretext", "Sunky.otf");
setTextFont("misstext", "Sunky.otf");
end
if tag == 'Font4' then
setTextFont("timeTxt", "Lord.otf");
setTextFont("scoretext", "Lord.otf");
setTextFont("misstext", "Lord.otf");
end
if tag == 'Font5' then
setTextFont("timeTxt", "sonic-hud-font.ttf");
setTextFont("scoretext", "sonic-hud-font.ttf");
setTextFont("misstext", "sonic-hud-font.ttf");
end
end