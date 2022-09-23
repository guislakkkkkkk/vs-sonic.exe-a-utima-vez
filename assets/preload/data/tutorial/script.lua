local CirculoTextura = ''
local TextoTextura = ''
local Skip = true

function onCreate()

if songName == 'too-slow' then
CirculoTextura = 'Exe/Inicio/Circle-too-slow';
TextoTextura = 'Exe/Inicio/Text-too-slow';
end
if songName == 'too-slow-encore' then
CirculoTextura = 'Exe/Inicio/Circle-too-slow';
TextoTextura = 'Exe/Inicio/Text-too-slow-encore';
end
if songName == 'you-cant-run' then
CirculoTextura = 'Exe/Inicio/Circle-you-cant-run';
TextoTextura = 'Exe/Inicio/Text-you-cant-run';
end
if songName == 'endless' then
CirculoTextura = 'Exe/Inicio/Circle-endless';
TextoTextura = 'Exe/Inicio/Text-endless';
end
if songName == 'cycles' then
CirculoTextura = 'Exe/Inicio/Circle-cycles';
TextoTextura = 'Exe/Inicio/Text-cycles';
end
if songName == 'execution' then
CirculoTextura = 'Exe/Inicio/Circle-execution';
TextoTextura = 'Exe/Inicio/Text-execution';
end
if songName == 'Fight or Flight' then
CirculoTextura = 'Exe/Inicio/Circle-fight-or-flight';
TextoTextura = 'Exe/Inicio/Text-fight-or-flight';
end
if songName == 'burning' then
CirculoTextura = 'Exe/Inicio/Circle-burning';
TextoTextura = 'Exe/Inicio/Text-burning';
end
if songName == 'My-Horizon' then
CirculoTextura = 'Exe/Inicio/si';
TextoTextura = 'Exe/Inicio/si';
end

makeLuaSprite('PantallaNegra', '', 0, 0)
makeGraphic('PantallaNegra', screenWidth, screenHeight,'000000')
setObjectCamera('PantallaNegra', 'other')
addLuaSprite('PantallaNegra', true)

makeLuaSprite('Circulo', CirculoTextura, 1400, 0);
setObjectCamera('Circulo', 'other');
scaleObject('Circulo', 1, 1);
addLuaSprite('Circulo', true);

makeLuaSprite('Texto', TextoTextura, -1400, 0);
setObjectCamera('Texto', 'other');
scaleObject('Texto', 1, 1);
addLuaSprite('Texto', true);

setProperty('skipCountdown', Skip)
end	

function onCountdownStarted()
doTweenX('TweenTexto', 'Texto', 0, 0.9, 'linear');
doTweenX('TweenCirculo', 'Circulo', 0, 0.9, 'linear');
runTimer('Adios', 2);
end

function onTimerCompleted(tag)
if tag == 'Adios' then
doTweenAlpha('PantallaNegra', 'PantallaNegra', 0, 1.25, 'linear');
doTweenAlpha('Circulo', 'Circulo', 0, 1.25, 'linear');
doTweenAlpha('Texto', 'Texto', 0, 1.25, 'linear');
end
end

function onTweenCompleted(tag)
if tag == 'PantallaNegra' then
removeLuaSprite('bg', true);
removeLuaSprite('Circle', true);
removeLuaSprite('Text', true);
end
end