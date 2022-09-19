function onCreate()
setProperty('skipCountdown', true)
setProperty('defaultCamZoom', 1.5) 
addLuaScript('data/tutorial/Splash')
doTweenAlpha('hud', 'camHUD', 0, 0.001, 'linear')
doTweenAlpha('game', 'camGame', 0, 0.001, 'linear')

  makeLuaSprite('over', 'exe/xterion/over', 400, -100);
  setScrollFactor('over', 1, 1);
  scaleLuaSprite('over', 0.95, 1.5);
  addLuaSprite('over', true);
end

function onCountdownStarted()
setProperty('boyfriend.visible', false) 
end


function onEvent(name,value1)
if name == 'Asbel' then
if value1 == 'game' then
noteTweenAlpha("A1", 0, 0.000001, 1, "linear")
noteTweenAlpha("A2", 1, 0.000001, 1, "linear")
noteTweenAlpha("A3", 2, 0.000001, 1, "linear")
noteTweenAlpha("A4", 3, 0.000001, 1, "linear")
doTweenAlpha('gaym', 'camGame', 1, 28, 'linear')
end
if value1 == 'hud' then
doTweenAlpha('hud', 'camHUD', 1, 10, 'linear')
end
end
end