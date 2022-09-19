function onCreate()
    setProperty('timeBarBG.visible', false)
    setProperty('timeBar.visible', false)



    makeLuaSprite('Barra','',0,-30)
    makeGraphic('Barra',1280,90,'000000')
    addLuaSprite('Barra',false)
    setObjectCamera('Barra','hud')
    setScrollFactor('Barra',0,0)

makeLuaSprite('barraI', '', -10, -30)
makeGraphic('barraI', 170, 1280, '000000')
addLuaSprite('barraI', true)
setObjectCamera('barraI', 'other')
setScrollFactor('barraI', 1, 1)

makeLuaSprite('barraD', '', 1110, -30)
makeGraphic('barraD', 200, 1280, '000000')
addLuaSprite('barraD', true)
setObjectCamera('barraD', 'other')
setScrollFactor('barraD', 1, 1)

makeLuaSprite('iconoDOLL', 'healthbar/iconoDOLL', 175, 275);
addLuaSprite('iconoDOLL', false);
setObjectCamera('iconoDOLL', 'hud')
scaleObject('iconoDOLL', 0.6, 0.6) 

makeLuaSprite('iconoBF', 'healthbar/iconoBF', 175, 375);
addLuaSprite('iconoBF', false);
setObjectCamera('iconoBF', 'hud')
scaleObject('iconoBF', 0.6, 0.6) 

  makeLuaText('1st', "1st", 210, 100, 60+272)
  setObjectCamera('1st', 'hud')
  setTextColor('1st', 'FFFFFF')
  setTextSize('1st', 25)
  setTextBorder('1st', 2, '000000');
  setTextAlignment('1st', 'right')
  setTextFont('1st', 'sonic-hud-font.ttf') 
  addLuaText('1st', true)

  makeLuaText('2nd', "2nd", 210, 100, 60+372)
  setObjectCamera('2nd', 'hud')
  setTextColor('2nd', 'FFFFFF')
  setTextSize('2nd', 25)
  setTextBorder('2nd', 2, '000000');
  setTextAlignment('2nd', 'right')
  setTextFont('2nd', 'sonic-hud-font.ttf') 
  addLuaText('2nd', true)

setProperty('health', 0.25);

makeLuaSprite('flechita', 'exe/flechita', 150, 10);
addLuaSprite('flechita', true);
setObjectCamera('flechita', 'other')
scaleObject('flechita', 0.7, 0.7) 

    makeLuaText("TtH", 'total hits:', 310, 30, 20);
    setTextFont('TtH', 'sonic-hud-font.ttf')
    setObjectCamera("TtH", 'other');
    setTextAlignment("TtH", 'right');
    setTextSize('TtH', 25);
    addLuaText("TtH");  

    makeLuaText("hits", '0', 310, 70, 20);
    setTextFont('hits', 'sonic-hud-font.ttf')
    setObjectCamera("hits", 'other');
    setTextAlignment("hits", 'right');
    setTextSize('hits', 25);
    addLuaText("hits");      
end

local notehitlol = 0

function goodNoteHit(id, direction, noteType, isSustainNote)
    if not isSustainNote then
        notehitlol = notehitlol + 1;
        setTextString('hits', '' .. tostring(notehitlol))
    end 
end  


function onCountdownStarted()
if not downscroll then
    CrearScoresUp()
    noteTweenY("nose1", 0, 65, 0.001, "linear")
    noteTweenY("nose2", 1, 65, 0.001, "linear")
    noteTweenY("nose3", 2, 65, 0.001, "linear")
    noteTweenY("nose4", 3, 65, 0.001, "linear")
    noteTweenY("nose5", 4, 65, 0.001, "linear")
    noteTweenY("nose6", 5, 65, 0.001, "linear")
    noteTweenY("nose7", 6, 65, 0.001, "linear")
    noteTweenY("nose8", 7, 65, 0.001, "linear")
end

if downscroll then
    CrearScoresDown()
    noteTweenY("nose1", 0, 590, 0.001, "linear")
    noteTweenY("nose2", 1, 590, 0.001, "linear")
    noteTweenY("nose3", 2, 590, 0.001, "linear")
    noteTweenY("nose4", 3, 590, 0.001, "linear")
    noteTweenY("nose5", 4, 590, 0.001, "linear")
    noteTweenY("nose6", 5, 590, 0.001, "linear")
    noteTweenY("nose7", 6, 590, 0.001, "linear")
    noteTweenY("nose8", 7, 590, 0.001, "linear")
end

setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)


noteTweenX('doll1', 0, 90+86, 0.01, 'linear');
noteTweenX('doll2', 1, 205+86, 0.01, 'linear');
noteTweenX('doll3', 2, 315+86, 0.01, 'linear');
noteTweenX('doll4', 3, 425+86, 0.01, 'linear');

noteTweenX('bf1', 4, 730-86, 0.01, 'linear');
noteTweenX('bf2', 5, 845-86, 0.01, 'linear');
noteTweenX('bf3', 6, 955-86, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-86, 0.01, 'linear');

setProperty('timeTxt.x', 800)  
setProperty('timeTxt.y', 10)  
setProperty('timeTxt.scale.x', 1.80)
setProperty('timeTxt.scale.y', 1.80)
setTextColor('timeTxt', 'FFFFFF')
setTextFont('timeTxt', 'sonic-hud-font.ttf')

runTimer('tiempo1', 60);
runTimer('tiempo2', 120);
end



function CrearScoresUp()
  makeLuaText('Score', "score:", 210, -85+153, 60+572)
  setObjectCamera('Score', 'hud')
  setTextColor('Score', 'FFFFFF')
  setTextSize('Score', 25)
  setTextBorder('Score', 2, '000000');
  setTextAlignment('Score', 'right')
  setTextFont('Score', 'sonic-hud-font.ttf') 
  addLuaText('Score', true)

  makeLuaText('Miss', "misses:", 210, -75+153, 100+572)
  setObjectCamera('Miss', 'hud')
  setTextColor('Miss', 'FFFFFF')
  setTextSize('Miss', 25)
  setTextBorder('Miss', 2, '000000');
  setTextAlignment('Miss', 'right')
  setTextFont('Miss', 'sonic-hud-font.ttf')
  addLuaText('Miss', true)

  makeLuaText('ScoreCounter', "", 210, -10+153, 60+572)
  setObjectCamera('ScoreCounter', 'hud')
  setTextColor('ScoreCounter', 'FFFFFF')
  setTextSize('ScoreCounter', 25)
  setTextBorder('ScoreCounter', 2, '000000');
  setTextAlignment('ScoreCounter', 'right')
  setTextFont('ScoreCounter', 'sonic-hud-font.ttf')
  addLuaText('ScoreCounter', true)

  makeLuaText('MissCounter', "", 210, -25+153, 100+572)
  setObjectCamera('MissCounter', 'hud')
  setTextColor('MissCounter', 'FFFFFF')
  setTextSize('MissCounter', 25)
  setTextBorder('MissCounter', 2, '000000');
  setTextAlignment('MissCounter', 'right')
  setTextFont('MissCounter', 'sonic-hud-font.ttf')
  addLuaText('MissCounter', true)
end

function CrearScoresDown()
  makeLuaText('Score', "score:", 210, -85+153, 60+10)
  setObjectCamera('Score', 'hud')
  setTextColor('Score', 'FFFFFF')
  setTextSize('Score', 25)
  setTextBorder('Score', 2, '000000');
  setTextAlignment('Score', 'right')
  setTextFont('Score', 'sonic-hud-font.ttf') 
  addLuaText('Score', true)

  makeLuaText('Miss', "misses:", 210, -75+153, 100+10)
  setObjectCamera('Miss', 'hud')
  setTextColor('Miss', 'FFFFFF')
  setTextSize('Miss', 25)
  setTextBorder('Miss', 2, '000000');
  setTextAlignment('Miss', 'right')
  setTextFont('Miss', 'sonic-hud-font.ttf')
  addLuaText('Miss', true)

  makeLuaText('ScoreCounter', "", 210, -10+153, 60+10)
  setObjectCamera('ScoreCounter', 'hud')
  setTextColor('ScoreCounter', 'FFFFFF')
  setTextSize('ScoreCounter', 25)
  setTextBorder('ScoreCounter', 2, '000000');
  setTextAlignment('ScoreCounter', 'right')
  setTextFont('ScoreCounter', 'sonic-hud-font.ttf')
  addLuaText('ScoreCounter', true)

  makeLuaText('MissCounter', "", 210, -25+153, 100+10)
  setObjectCamera('MissCounter', 'hud')
  setTextColor('MissCounter', 'FFFFFF')
  setTextSize('MissCounter', 25)
  setTextBorder('MissCounter', 2, '000000');
  setTextAlignment('MissCounter', 'right')
  setTextFont('MissCounter', 'sonic-hud-font.ttf')
  addLuaText('MissCounter', true)
end

function onUpdate()
  setTextString('MissCounter', "" ..  misses)
  setTextString('ScoreCounter', "" ..  score)
  if getProperty('health') < 0.4 then
  doTweenY("cambioDOLL", "iconoDOLL", 275, 0.01, "linear")   
  doTweenY("cambioBF", "iconoBF", 375, 0.01, "linear")   
  elseif getProperty('health') > 1.6 then
  doTweenY("cambioDOLL", "iconoDOLL", 375, 0.01, "linear")   
  doTweenY("cambioBF", "iconoBF", 275, 0.01, "linear")   
  else
  doTweenY("cambioDOLL", "iconoDOLL", 275, 0.01, "linear")   
  doTweenY("cambioBF", "iconoBF", 375, 0.01, "linear")   
  end
end