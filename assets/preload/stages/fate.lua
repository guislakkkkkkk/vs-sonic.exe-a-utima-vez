function onCreate()
addLuaScript('data/tutorial/huds/LordXHud')

addCharacterToList('LordX-EncoreF', 'dad') 
addCharacterToList('lord_x_fate', 'dad') 
addCharacterToList('bf-super', 'boyfriend') 
addCharacterToList('BF-Sad', 'boyfriend') 

makeLuaSprite('Sky', 'exe/fate/Sky', -1300, -650);
setScrollFactor('Sky', 1, 1);
scaleLuaSprite('Sky', 3.2, 3);
addLuaSprite('Sky', false);

makeLuaSprite('Water2', 'exe/fate/Water2', -1300, -700);
setScrollFactor('Water2', 1, 1);
scaleLuaSprite('Water2', 1.6, 1.5);
addLuaSprite('Water2', false);

makeAnimatedLuaSprite('water_effect', 'exe/fate/water_effect', -1700, -1670);
addAnimationByPrefix('water_effect', 'water_effect', 'water effect idle', 15, true)
objectPlayAnimation('water_effect', 'water_effect', true);
addLuaSprite('water_effect', false);
scaleObject('water_effect', 4, 4.6)   

makeAnimatedLuaSprite('water_effect2', 'exe/fate/water_effects_2', -2000, -1400);
addAnimationByPrefix('water_effect2', 'water_effect2', 'water effects 2 idle', 15, true)
objectPlayAnimation('water_effect2', 'water_effect2', true);
addLuaSprite('water_effect2', false);
scaleObject('water_effect2', 4, 4.6)   

makeLuaSprite('Mountainfront', 'exe/fate/Mountainfront', -1300, 100);
setScrollFactor('Mountainfront', 1, 1);
scaleLuaSprite('Mountainfront', 3.2, 4);
addLuaSprite('Mountainfront', false);

makeAnimatedLuaSprite('assending', 'exe/fate/assending', -1100, -900);
addAnimationByPrefix('assending', 'assending', 'water effect idle', 15, true)
objectPlayAnimation('assending', 'assending', true);
addLuaSprite('assending', false);
scaleObject('assending', 1.8, 2)   

makeLuaSprite('Clouds', 'exe/fate/Clouds', -1300, -700);
setScrollFactor('Clouds', 1, 1);
scaleLuaSprite('Clouds', 6.4, 6);
addLuaSprite('Clouds', false);

makeLuaSprite('plataforma', 'exe/fate/Lordxground', -580, 760);
addLuaSprite('plataforma', false);
scaleObject('plataforma', 2, 2) 

makeLuaSprite('plataforma2', 'exe/fate/Bfground', 1030, 780);
addLuaSprite('plataforma2', false);
scaleObject('plataforma2', 2, 2) 

makeLuaSprite('encore', 'exe/fate/encore', -1300, -750);
setScrollFactor('encore', 1, 1);
scaleLuaSprite('encore', 1.9, 1.8);
addLuaSprite('encore', false);


makeLuaSprite('Grad', 'Grad', 0, 100);
addLuaSprite('Grad', false);
scaleObject('Grad', 2, 2) 
setObjectCamera('Grad', 'hud');
setBlendMode('Grad', 'ALPHA')

setProperty('defaultCamZoom', 0.85) 

  makeLuaSprite('over', 'exe/xterion/over', -1200, -400);
  setScrollFactor('over', 1, 1);
  scaleLuaSprite('over', 1.1, 1.5);
  addLuaSprite('over', true);
  setProperty('over.alpha', 0.0000000001)


setProperty('GrMountainfrontad.alpha', 0.1)
setProperty('assending.alpha', 0.1)
setProperty('Clouds.alpha', 0.1)
setProperty('Sky.alpha', 0.1)
setProperty('Water2.alpha', 0.1)
setProperty('water_effect.alpha', 0.1)
setProperty('water_effect2.alpha', 0.1)
setProperty('Mountainfront.alpha', 0.1)
setProperty('plataforma2.alpha', 0.1)
setProperty('plataforma.alpha', 0.1)
setProperty('encore.alpha', 0.00001)

makeLuaSprite('Saturacion','', 0, 0)
makeGraphic('Saturacion', screenWidth, screenHeight, '646464')
setObjectCamera('Saturacion', 'other')
setProperty('Saturacion.alpha', 0)
addLuaSprite('Saturacion', true)
setBlendMode('Saturacion','SUBTRACT')
end

function onCountdownStarted()
doTweenColor('Grad', 'Grad', '292929', 0.01, 'linear');
doTweenColor('dad', 'dad', '474747', 0.01, 'linear');
doTweenColor('boyfriend', 'boyfriend', '474747', 0.01, 'linear');
end

function onEvent(name,value1)
if name == 'Asbel' then
if value1 == 'inicio' then
setProperty('defaultCamZoom', 0.46) 
doTweenAlpha('GrMountainfrontad','GrMountainfrontad', 1, 0.85, 'quadInOut');
doTweenAlpha('assending','assending', 1, 0.85, 'quadInOut');
doTweenAlpha('Clouds','Clouds', 1, 0.85, 'quadInOut');
doTweenAlpha('Water2','Water2', 1, 0.85, 'quadInOut');
doTweenAlpha('Sky','Sky', 1, 0.85, 'quadInOut');
doTweenAlpha('water_effect','water_effect', 1, 0.85, 'quadInOut');
doTweenAlpha('water_effect2','water_effect2', 1, 0.85, 'quadInOut');
doTweenAlpha('Mountainfront','Mountainfront', 1, 0.85, 'quadInOut');
doTweenAlpha('plataforma2','plataforma2', 1, 0.85, 'quadInOut');
doTweenAlpha('plataforma','plataforma', 1, 0.85, 'quadInOut');
doTweenColor('Grad', 'Grad', 'FF0000', 0.85, 'linear');
doTweenColor('dad', 'dad', 'EF8AD1', 0.85, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'EF8AD1', 0.85, 'linear');
end
if value1 == 'encore' then
encore()
runTimer('color2', 0.01,1);
end
if value1 == 'premortem' then
setProperty('dad.y',getProperty('dad.y') - 200)
fp()
runTimer('color', 0.01,1);
end
if value1 == 'die' then
doTweenAlpha('over','over', 0, 0.85, 'quadInOut');
triggerEvent('Camera Follow Pos', '', '')
setProperty('defaultCamZoom', 1)
end
if value1 == 'mementomori' then
triggerEvent('Change Character', 'bf', 'BF-Sad');
doTweenAlpha('camGame','camGame', 1, 2, 'quadInOut');
triggerEvent('Camera Follow Pos', getProperty('boyfriend.x') + 450, getProperty('boyfriend.y') + 100)
end
if value1 == 'normal' then
runTimer('color4', 0.01,1);
normal()
end
if value1 == 'queeee' then
setProperty('Sky.alpha', 1)
setProperty('plataforma.alpha', 1)
setProperty('plataforma2.alpha', 1)
setProperty('defaultCamZoom', 0.7)
triggerEvent('Camera Follow Pos', '', '')
triggerEvent('Change Character', 'boyfriend', 'bf');
triggerEvent('Change Character', 'dad', 'lordx');
setProperty('dad.y',getProperty('dad.y') + 200)
runTimer('color', 0.01,1);
end
if value1 == 'final' then
cameraFlash('other', 'FFFFFF', 0.5, false)
juicio()
runTimer('colorf', 0.01,1);
setProperty('plataforma2.alpha', 1)
setProperty('plataforma.alpha', 0.001)
setProperty('plataforma2.x',getProperty('plataforma2.x') - 600)
setProperty('plataforma2.y',getProperty('plataforma2.y') + 100)
triggerEvent('Change Character', 'dad', 'lord_x_fate');
triggerEvent('Change Character', 'boyfriend', 'bf-super');
setProperty('dad.x',getProperty('dad.x') + 600)
setProperty('boyfriend.x',getProperty('boyfriend.x') - 200)
setProperty('boyfriend.y',getProperty('boyfriend.y') - 100)
setProperty('plataforma2.scale.x', getProperty('plataforma2.scale.x') + 2.2)
setProperty('plataforma2.scale.y', getProperty('plataforma2.scale.y') + 2)
end
if value1 == 'fadef' then
doTweenAlpha('GrMountainfrontad','GrMountainfrontad', 0, 5, 'quadInOut');
doTweenAlpha('assending','assending', 0, 5, 'quadInOut');
doTweenAlpha('Clouds','Clouds', 0, 5, 'quadInOut');
doTweenAlpha('Water2','Water2', 0, 5, 'quadInOut');
doTweenAlpha('Sky','Sky', 0, 5, 'quadInOut');
doTweenAlpha('water_effect','water_effect', 0, 5, 'quadInOut');
doTweenAlpha('water_effect2','water_effect2', 0, 5, 'quadInOut');
doTweenAlpha('Mountainfront','Mountainfront', 0, 5, 'quadInOut');
doTweenAlpha('plataforma','plataforma', 0, 5, 'quadInOut');

doTweenAlpha('boyfriend','boyfriend', 0, 5, 'quadInOut');
doTweenAlpha('camHUD','camHUD', 0, 5, 'quadInOut');

doTweenColor('dad', 'dad', '0500FF', 5, 'linear');
doTweenColor('plataforma2', 'plataforma2', '0500FF', 5, 'linear');
end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'color' then
doTweenColor('dad', 'dad', 'EF8AD1', 0.01, 'linear');
end
if tag == 'color2' then
doTweenColor('dad', 'dad', 'FFFFFF', 0.01, 'linear');
end
if tag == 'color3' then
doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 0.01, 'linear');
end
if tag == 'color4' then
doTweenColor('dad', 'dad', 'EF8AD1', 0.01, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'EF8AD1', 0.01, 'linear');
end
if tag == 'colorf' then
doTweenColor('dad', 'dad', 'EF8AD1', 0.01, 'linear');
doTweenColor('Grad', 'Grad', 'FF0000', 0.01, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'EF8AD1', 0.01, 'linear');
end
end

function fp()
setProperty('defaultCamZoom', 0.7)
setProperty('GrMountainfrontad.alpha', 0.0000001)
setProperty('assending.alpha', 0.0000001)
setProperty('Clouds.alpha', 0.0000001)
setProperty('Sky.alpha', 0.0000001)
setProperty('Water2.alpha', 0.0000001)
setProperty('water_effect.alpha', 0.0000001)
setProperty('water_effect2.alpha', 0.0000001)
setProperty('Mountainfront.alpha', 0.0000001)
setProperty('plataforma2.alpha', 0.0000001)
setProperty('plataforma.alpha', 0.0000001)
triggerEvent('Change Character', 'dad', 'LordX-EncoreF');
triggerEvent('Camera Follow Pos', getProperty('dad.x') + 650, getProperty('dad.y') + 400)
setProperty('Grad.alpha', 1)
setProperty('encore.alpha', 0.00001)
doTweenAlpha('over','over', 1, 0.85, 'quadInOut');
setProperty('defaultCamZoom', 0.7) 
doTweenAlpha('sat', 'Saturacion', 1, 1, 'linear')
end


function encore()
setProperty('dad.y',getProperty('dad.y') + 500)
setProperty('Grad.alpha', 0.00001)
doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 0.01, 'linear');
setProperty('defaultCamZoom', 0.65) 
triggerEvent('Change Character', 'dad', 'LordX-EncoreF');
setProperty('encore.alpha', 1)
end

function normal()
triggerEvent('Change Character', 'dad', 'lordx');
setProperty('Grad.alpha', 1)
setProperty('encore.alpha', 0.00001)
setProperty('GrMountainfrontad.alpha', 1)
setProperty('assending.alpha', 1)
setProperty('Clouds.alpha', 1)
setProperty('Sky.alpha', 1)
setProperty('Water2.alpha', 1)
setProperty('water_effect.alpha', 1)
setProperty('water_effect2.alpha', 1)
setProperty('Mountainfront.alpha', 1)
setProperty('plataforma2.alpha', 1)
setProperty('plataforma.alpha', 1)
doTweenAlpha('sat', 'Saturacion', 0, 1, 'linear')
setProperty('defaultCamZoom', 0.5)
end

function juicio()
setProperty('Grad.alpha', 1)
setProperty('encore.alpha', 0.00001)
setProperty('GrMountainfrontad.alpha', 1)
setProperty('assending.alpha', 1)
setProperty('Clouds.alpha', 1)
setProperty('Sky.alpha', 1)
setProperty('Water2.alpha', 1)
setProperty('water_effect.alpha', 1)
setProperty('water_effect2.alpha', 1)
setProperty('Mountainfront.alpha', 1)
setProperty('plataforma2.alpha',  1)
setProperty('plataforma.alpha',  0.001)
doTweenAlpha('sat', 'Saturacion', 0.6, 1, 'linear')
setProperty('defaultCamZoom', 0.5)
end