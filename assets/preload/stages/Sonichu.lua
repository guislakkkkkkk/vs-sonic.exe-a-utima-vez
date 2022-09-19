function lerp(a, b, ratio)
return a + ratio * (b - a)
end

local width = 0 

function onCreate()

  makeLuaSprite('Sky', 'exe/Sonichu/Sky', -900, -680);
  setScrollFactor('Sky', 0.1, 0.1);
  scaleLuaSprite('Sky', 2.55, 2.5);
  addLuaSprite('Sky', false);

  width = getProperty("Sky.width") 

  makeLuaSprite('Sky2', 'exe/Sonichu/Sky', width-920-920, -680);
  setScrollFactor('Sky2', 0.1, 0.1);
  scaleLuaSprite('Sky2', 2.55, 2.5);
  addLuaSprite('Sky2', false);

  makeLuaSprite('Mountain', 'exe/Sonichu/Mountain', -900, -650);
  setScrollFactor('Mountain', 0.4, 0.4);
  scaleLuaSprite('Mountain', 2.55, 2.5);
  addLuaSprite('Mountain', false);

  makeLuaSprite('Ground', 'exe/Sonichu/Ground', -900, -650);
  setScrollFactor('Ground', 1, 1);
  scaleLuaSprite('Ground', 2.55, 2.55);
  addLuaSprite('Ground', false);

velocidad = 10

setProperty('defaultCamZoom', 0.55) 

doTweenX("SkyTween", "Sky", -width, velocidad, "linear")  
doTweenX("Sky2Tween", "Sky2", -920, velocidad, "linear") 
end

function onTweenCompleted(tag)  
if tag == "SkyTween" then
setProperty("Sky.x", -880)
setProperty("Sky2.x", width-850-850) 
doTweenX("SkyTween", "Sky", -width, velocidad, "linear")  
doTweenX("Sky2Tween", "Sky2", -920, velocidad, "linear") 
end 
end

function onCreatePost()
doTweenColor('timeTxt', 'timeTxt', 'FF0000', 0.01, 'linear');
runHaxeCode([[
    for (strum in game.strumLineNotes)
    {
      strum.cameras = [game.camGame];
      strum.scrollFactor.set(1, 1);
    }

    for (note in game.unspawnNotes)
    {
      note.cameras = [game.camGame];
      note.scrollFactor.set(1, 1);
    }

    for (splash in game.grpNoteSplashes)
    {
      splash.cameras = [game.camGame];
      splash.scrollFactor.set(1, 1);
    }
  ]])
end

function onBeatHit()
if curBeat == 1 then
doTweenColor('timeBar', 'timeBar', 'FFE405', 0.01, 'linear');
     end
end

function onUpdate(elapsed)
setProperty('camHUD.zoom', lerp(getProperty('camHUD.zoom'), 0.96, elapsed))
setProperty('camGame.zoom', lerp(getProperty('camGame.zoom'), getProperty('defaultCamZoom') - 0.01, elapsed))
setProperty('camZooming', false)
end

--lo de el hud zoom no es mio, pero no se de quien son los creditos si lo encuentras dimelo