function onCreate()

  makeLuaSprite('cielitolindo', 'exe/burning/cielitolindo', -600, -600);
  setScrollFactor('cielitolindo', 0.7, 0.3);
  scaleLuaSprite('cielitolindo', 11, 9);
  addLuaSprite('cielitolindo', false);

  makeLuaSprite('pisoshit', 'exe/burning/pisoshit', -900, -500);
  setScrollFactor('pisoshit', 1, 1);
  scaleLuaSprite('pisoshit', 9, 9.5);
  addLuaSprite('pisoshit', false);

  makeLuaSprite('pisoshit2', 'exe/burning/pisoshit', 1400, -500);
  setScrollFactor('pisoshit2', 1, 1);
  scaleLuaSprite('pisoshit2', 9, 9.5);
  addLuaSprite('pisoshit2', false);

  setProperty('pisoshit2.antialiasing', false);
  setProperty('pisoshit.antialiasing', false);
  setProperty('cielitolindo.antialiasing', false);

  addLuaScript('data/tutorial/splashP')
 
setProperty('defaultCamZoom', 0.55) 

addLuaScript('data/tutorial/Intro')
end

function onCountdownStarted()
setProperty('gf.scale.x', 4)
setProperty('gf.scale.y', 4) 
end

function onBeatHit()
if curBeat == 87 then
doTweenX("huevosright", "gf", 1300, 8, "linear")   
end
end 

local Flip = false

function onTweenCompleted(tag)  
if tag == "huevosright" then
doTweenX("huevosleft", "gf", 200, 5, "linear") 
setProperty('gf.flipX', true);
Flip = true
end 
if tag == "huevosleft" then
doTweenX("huevosright", "gf", 1600, 5, "linear")   
setProperty('gf.flipX', false);
Flip = false
end
end

function onUpdate()
if mustHitSection == true then
setProperty('defaultCamZoom', 0.55)
triggerEvent('Camera Follow Pos', getProperty('boyfriend.x')-100, getProperty('boyfriend.y')-100)
else
setProperty('defaultCamZoom', 0.55)
triggerEvent('Camera Follow Pos', getProperty('dad.x')+100, getProperty('dad.y')-100)
if gfSection == true and Flip then
setProperty('defaultCamZoom', 1)
triggerEvent('Camera Follow Pos', getProperty('gf.x') -240, getProperty('gf.y'))
end
if gfSection == true and not Flip then
setProperty('defaultCamZoom', 1)
triggerEvent('Camera Follow Pos', getProperty('gf.x') +200, getProperty('gf.y'))
end
end
end