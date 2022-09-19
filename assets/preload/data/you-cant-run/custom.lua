local TposY = 585
local TposYD = 20

function onCreate()


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

makeLuaSprite('hudSonic', 'sonicUI/hudSonic', 30+150, 30)
setObjectCamera('hudSonic', 'hudSonic')
setGraphicSize('hudSonic', 230, 200)
setObjectOrder('hudSonic', '9000')
setObjectCamera('hudSonic', 'hud')
addLuaSprite('hudSonic', true)
setProperty('hudSonic.visible', false);

makeLuaText('MissesT', "", 500, 260+150, 40)
setObjectCamera('MissesT', 'hud')
setTextColor('MissesT', 'FFFFFF')
setTextSize('MissesT', 70)
setTextFont('MissesT', 'sonic-hud-font.ttf')
setTextBorder('MissesT', 4, '000000');
setTextAlignment('MissesT', 'left')
addLuaText('MissesT')

makeLuaText('ScoreT', "", 500, 220+150, 160)
setObjectCamera('ScoreT', 'hud')
setTextColor('ScoreT', 'FFFFFF')
setTextSize('ScoreT', 70)
setTextFont('ScoreT', 'sonic-hud-font.ttf')
setTextBorder('ScoreT', 4, '000000');
setTextAlignment('ScoreT', 'left')
addLuaText('ScoreT')

setProperty('barraD.visible', false);
setProperty('barraI.visible', false);

setProperty('MissesT.visible', false);
setProperty('ScoreT.visible', false);
setProperty('hud.visible', false);
setProperty('scoreTxt.visible', true)
setProperty('timeBar.visible', true)
setProperty('timeBarBG.visible', true)

end

function onSongStart()
if downscroll then
TposY = 110
TposYD = 675
end

if not downscroll then
setProperty('ScoreT.y', getProperty('ScoreT.y')+ 475)
setProperty('MissesT.y', getProperty('MissesT.y')+ 475)
setProperty('hudSonic.y', getProperty('hudSonic.y')+ 475)
end
end

function onUpdate(elapsed)
setTextString('MissesT', "" ..  misses)
setTextString('ScoreT', "" ..  score)
end

function onEvent(name,value1,value2)
if name == 'Asbel' then 
if value1 == 'pixel' then
setProperty('timeTxt.x', 190)  	
setProperty('timeTxt.y', TposY)		
setProperty('timeTxt.scale.x', 1.80)
setProperty('timeTxt.scale.y', 1.80)
setTextFont('timeTxt', 'sonic-hud-font.ttf')
end
if value1 == 'normal' then
setProperty('timeTxt.x', 430)  
setProperty('timeTxt.y', TposYD)
setProperty('timeTxt.scale.x', 1)
setProperty('timeTxt.scale.y', 1)
setTextFont('timeTxt', 'vcr.ttf')		
end
end
end