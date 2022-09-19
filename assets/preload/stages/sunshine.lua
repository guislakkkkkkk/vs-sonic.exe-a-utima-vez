local i =0
local yy = -690;

function onCreate()
addLuaScript('data/tutorial/splash')

makeLuaSprite('TailsBG', 'exe/TailsBG', -430, -115);
addLuaSprite('TailsBG', false);
scaleObject('TailsBG', 1.3, 1.2) 

setProperty('introSoundsSuffix', '-doll')

makeLuaSprite('Majin2', 'sonicUI/Majin2', -300, -70);
addLuaSprite('Majin2', false);
scaleObject('Majin2', 1.78, 1.68) 
setObjectCamera('Majin2', 'other');
setBlendMode('Majin2', 'MULTIPLY')

setProperty('defaultCamZoom', 0.75) 
end 

function onCreatePost()
doTweenColor('timeBar', 'timeBar', 'C24F00', 0.01, 'linear');
end

function onCountdownTick(swagCounter)
if swagCounter == 1 then
	setProperty('countdownReady.visible', false)
	makeLuaSprite('ready', 'exe/cd/ready', screenWidth / 2 - 369, screenHeight / 2 - 185);
	setObjectCamera('ready','other');
	doTweenAlpha('elpepe', 'ready', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('ready', true);	
end	
if swagCounter == 2 then
	setProperty('countdownSet.visible', false)
	makeLuaSprite('set', 'exe/cd/set', screenWidth / 2 - 330, screenHeight / 2 - 185);
	setObjectCamera('set','other');
	doTweenAlpha('elpepe', 'set', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('set', true);
end	
if swagCounter == 3 then
	setProperty('countdownGo.visible', false)
	makeLuaSprite('GO', 'exe/cd/go', screenWidth / 2 - 289, screenHeight / 2 - 215);
	setObjectCamera('GO','other');
	doTweenAlpha('elpepe', 'GO', 0, crochet / 1000, 'cubeInOut');
	addLuaSprite('GO', true);
	end
end

function onEvent(name,value1,value2)
if name == 'Change Character' then 
if value2 == 'tailsdoll_alt' then

setProperty('Score.visible', false)
setProperty('Miss.visible', false)
setProperty('ScoreCounter.visible', false)
setProperty('MissCounter.visible', false)
setProperty('iconoDOLL.visible', false)
setProperty('iconoBF.visible', false)
setProperty('1st.visible', false)
setProperty('2nd.visible', false)
setProperty('flechita.visible', false)
setProperty('notehits.visible', false)
setProperty('hits.visible', false)

setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)	

noteTweenX('doll0', 0, -1000, 0.01, 'linear')
noteTweenX('doll1', 1, -1000, 0.01, 'linear')
noteTweenX('doll2', 2, -1000, 0.01, 'linear')
noteTweenX('doll3', 3, -1000, 0.01, 'linear')

noteTweenX('bf0', 4, 415, 0.01, 'linear')
noteTweenX('bf1', 5, 525, 0.01, 'linear')
noteTweenX('bf2', 6, 635, 0.01, 'linear')
noteTweenX('bf3', 7, 745, 0.01, 'linear')	

setProperty('TailsBG.visible', false);
setProperty('boyfriend.visible', false);
end
if value2 == 'tailsdoll' then
setProperty('Score.visible', true)
setProperty('Miss.visible', true)
setProperty('ScoreCounter.visible', true)
setProperty('MissCounter.visible', true)
setProperty('iconoDOLL.visible', true)
setProperty('iconoBF.visible', true)
setProperty('1st.visible', true)
setProperty('2nd.visible', true)
setProperty('flechita.visible', true)
setProperty('notehits.visible', true)
setProperty('hits.visible', true)
setProperty('iconP1.visible', true)
setProperty('iconP2.visible', true)

noteTweenX('doll1', 0, 90+86, 0.01, 'linear');
noteTweenX('doll2', 1, 205+86, 0.01, 'linear');
noteTweenX('doll3', 2, 315+86, 0.01, 'linear');
noteTweenX('doll4', 3, 425+86, 0.01, 'linear');

noteTweenX('bf1', 4, 730-86, 0.01, 'linear');
noteTweenX('bf2', 5, 845-86, 0.01, 'linear');
noteTweenX('bf3', 6, 955-86, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-86, 0.01, 'linear');

setProperty('TailsBG.visible', true);
setProperty('boyfriend.visible', true);

doTweenAlpha('game', 'camGame', 1, 0.25, 'linear')
doTweenAlpha('hud', 'camHUD', 1, 0.25, 'linear')
end
end
if name == 'Pnotein' then 
doTweenAlpha('hud', 'camHUD', 0.6, 0.25, 'linear')
doTweenAlpha('game', 'camGame', 0.6, 0.25, 'linear')
end
if name == 'Pnotefade' then 
doTweenAlpha('hud', 'camHUD', 0, 0.25, 'linear')	
doTweenAlpha('game', 'camGame', 0, 0.25, 'linear')
end
end


function onUpdate(elapsed)
daElapsed = elapsed * 30
i = i + daElapsed
setProperty('dad.y', (math.sin(i/20)*100) + 200)
yy = (math.sin(i/20)*75) - 350
end