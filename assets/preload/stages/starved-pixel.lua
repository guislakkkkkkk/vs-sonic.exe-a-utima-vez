local width = 0 

function onCreate()
	
 addLuaScript('data/tutorial/splashP')
    addLuaScript('data/tutorial/pixelpack/custom1')
    addLuaScript('data/tutorial/pixelpack/custom2')

	makeLuaSprite('stardustBg', 'exe/starved/stardustBg', -800, -500);
	setScrollFactor('stardustBg', 0, 1);
	scaleLuaSprite('stardustBg', 4, 4);
	setProperty('stardustBg.antialiasing', false);
	addLuaSprite('stardustBg', false);

    makeAnimatedLuaSprite('oliwis', 'exe/starved/oliwis', -1350, 930);
    addAnimationByPrefix('oliwis', 'oliwis', 'oliwis', 24, true);  
    objectPlayAnimation('oliwis', 'oliwis', true)
    scaleLuaSprite('oliwis', 6, 6);
	setProperty('oliwis.antialiasing', false);
    addLuaSprite('oliwis', true);


	width = getProperty("stardustBg.width") 

	makeLuaSprite('stardustBg2', 'exe/starved/stardustBg', width-1520, -500);
	setScrollFactor('stardustBg2', 0, 1);
	scaleLuaSprite('stardustBg2', 4, 4);
	setProperty('stardustBg2.antialiasing', false);
	addLuaSprite('stardustBg2', false);

	makeLuaSprite('furnacegotcha', 'exe/starved/furnacegotcha', 2800, 470);
	setScrollFactor('furnacegotcha', 1, 1);
	scaleLuaSprite('furnacegotcha', 6, 6);
	setProperty('furnacegotcha.antialiasing', false);
	setProperty('furnacegotcha.flipX', true);
	addLuaSprite('furnacegotcha', false);

    makeAnimatedLuaSprite('elanillodemipitote', 'exe/starved/elanillodemipitote', 2800, 560);
    addAnimationByPrefix('elanillodemipitote', 'elanillodemipitote', 'idle', 24, true);  
    objectPlayAnimation('elanillodemipitote', 'elanillodemipitote', true)
    scaleLuaSprite('elanillodemipitote',1,1);
	setProperty('elanillodemipitote.antialiasing', false);
    addLuaSprite('elanillodemipitote', true);

    makeAnimatedLuaSprite('esquive', 'exe/starved/esquive', 10, 10);
    addAnimationByPrefix('esquive', 'esquive', 'fuareloco', 24, true);  
    objectPlayAnimation('esquive', 'esquive', true)
    scaleLuaSprite('esquive', 6, 6);
	setProperty('esquive.antialiasing', false);
    addLuaSprite('esquive', true);

	makeLuaSprite('stardustFloor', 'exe/starved/stardustFloor', -800, -900);
	setScrollFactor('stardustFloor', 1, 1);
	scaleLuaSprite('stardustFloor', 4, 4);
	setProperty('stardustFloor.antialiasing', false);
	addLuaSprite('stardustFloor', true);

	makeLuaSprite('stardustFloor2', 'exe/starved/stardustFloor', width-1520, -900);
	setScrollFactor('stardustFloor2', 1, 1);
	scaleLuaSprite('stardustFloor2', 4, 4);
	setProperty('stardustFloor2.antialiasing', false);
	addLuaSprite('stardustFloor2', true);

    makeLuaSprite('Luz','', 0, 0)
    makeGraphic('Luz', screenWidth, screenHeight,'FF0000')
    setObjectCamera('Luz','other')
    setProperty('Luz.alpha', 0)
    addLuaSprite('Luz', false)

    makeLuaSprite('bartop', '' ,0, -200)
    makeGraphic('bartop', 1280, 200,'000000')
    addLuaSprite('bartop',false)
    setObjectCamera('bartop','other')
    setScrollFactor('bartop',0,0)

    makeLuaSprite('barbot', '', 0, 850)
    makeGraphic('barbot', 1280, 200,'000000')
    addLuaSprite('barbot',false)
    setScrollFactor('barbot',0,0)
    setObjectCamera('barbot','other')

setProperty('stardustBg.alpha', 0.001);
setProperty('stardustBg2.alpha', 0.001);
setProperty('stardustFloor.alpha', 0.001);
setProperty('stardustFloor2.alpha', 0.001);
doTweenAlpha('hud', 'camHUD', 0, 0.001, 'linear');	

setProperty('skipCountdown', true)

velocidad1 = 2.35
velocidad2 = 1.5

doTweenX("stardustBg", "stardustBg", -width, velocidad1, "linear") 	
doTweenX("stardustBg2", "stardustBg2", -820, velocidad1, "linear") 
doTweenX("stardustFloor", "stardustFloor", -width, velocidad2, "linear") 	
doTweenX("stardustFloor2", "stardustFloor2", -820, velocidad2, "linear") 
end

function onCountdownStarted()
makeLuaText('Alerta', '3', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x')-20, getProperty('scoreTxt.y')-100);
setTextSize('Alerta', 25);
setTextAlignment('Alerta', 'center');
setObjectCamera('Alerta', 'other');
addLuaText('Alerta');
setProperty('Alerta.visible', false)



setProperty('esquive.visible', false)
end


function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'intro1' then
doTweenAlpha('intro1', 'stardustFloor', 1, 1, 'linear');
doTweenAlpha('intro2', 'stardustFloor2', 1, 1, 'linear');
end
if value1 == 'intro2' then
doTweenAlpha('intro3', 'stardustBg', 1, 1, 'linear');
doTweenAlpha('intro4', 'stardustBg2', 1, 1, 'linear');
end
if value1 == 'intro3' then
cameraSetTarget('dad')	
doTweenX("intro5", "dad", 100, 3, "linear") 	
end
if value1 == 'intro4' then
cameraSetTarget('boyfriend')		
doTweenAlpha('hud', 'camHUD', 1, 2, 'linear');	
end
if value1 == 'Adios' then
cameraSetTarget('boyfriend')		
doTweenX("adios", "dad", -1200, 1.5, "linear") 	
end
if value1 == 'anim' then	
doTweenY('barbot', 'barbot', 550, 1, 'linear');
doTweenY('bartop', 'bartop', -30, 1, 'linear');		
doTweenAlpha('hud', 'camHUD', 0, 1, 'linear');		
triggerEvent('Play Animation', 'dialogue', 'dad')	
end
if value1 == 'ohmierda' then
cameraSetTarget('dad')		
doTweenX("adios", "dad", 1070, 2, "linear") 	
end
if value1 == 'speed' then
setProperty('defaultCamZoom', 0.57) 		
doTweenY('barbot', 'barbot', 850, 1, 'linear');
doTweenY('bartop', 'bartop', -200, 1, 'linear'); 	
doTweenAlpha('hud', 'camHUD', 1, 2, 'linear');			
velocidad1 = 2.25
velocidad2 = 0.75
end
if value1 == 'red' then
makeLuaText('red', 'Hey Red Head!', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x')-20, getProperty('scoreTxt.y')-100);
setTextSize('red', 25);
setTextAlignment('red', 'center');
setObjectCamera('red', 'other');
runTimer('adiosR', 1);
addLuaText('red');
end
if value1 == 'toys' then
makeLuaText('toys', 'Might Wanna repair your toys', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x')-20, getProperty('scoreTxt.y')-100);
setTextSize('toys', 25);
setTextAlignment('toys', 'center');
setObjectCamera('toys', 'other');
runTimer('adiosT', 1.1);
addLuaText('toys');
end
if value1 == 'bucket' then
makeLuaText('bucket', 'Seems that bucket of bolts had to lay off the nitro this time arround!', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x')-20, getProperty('scoreTxt.y')-100);
setTextSize('bucket', 25);
setTextAlignment('bucket', 'center');
runTimer('adiosB', 3);
setObjectCamera('bucket', 'other');
addLuaText('bucket');
end
if value1 == 'fate' then
makeLuaText('fate', 'You dont even know your fate, hedgehog', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x')-20, getProperty('scoreTxt.y')-100);
setTextSize('fate', 25);
setTextColor('fate', 'FF0000')
setTextAlignment('fate', 'center');
setObjectCamera('fate', 'other');
runTimer('adiosF', 3.7);
addLuaText('fate');
end
if value1 == 'maniacal' then
makeLuaText('maniacal', '*Maniacal klackling*', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x')-20, getProperty('scoreTxt.y')-100);
setTextSize('maniacal', 25);
setTextColor('maniacal', 'FF0000')
setTextAlignment('maniacal', 'center');
setObjectCamera('maniacal', 'other');
runTimer('adiosM', 8.9);
addLuaText('maniacal');
CambioDeValores()
end
if value1 == 'olazorras' then
doTweenX("oliwis", "oliwis", 2600, 7, "linear") 
runTimer('adiosiwis', 7.3);
end
if value1 == 'dentro' then
setProperty('defaultCamZoom', 0.7) 	
doTweenX("jajaquependejo", "dad", -1400, 2, "linear") 	
doTweenY('barbot', 'barbot', 550, 0.5, 'linear');
doTweenY('bartop', 'bartop', -30, 0.5, 'linear');	
doTweenAlpha('hud', 'camHUD', 0, 0.4, 'linear');		
end
if value1 == 'man' then
triggerEvent('Play Animation', 'dialogue', 'bf')		
makeLuaText('man', 'Man, you really like scrambling your own plans, dont chan-', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x')-20, getProperty('scoreTxt.y')-100);
setTextSize('man', 25);
setTextAlignment('man', 'center');
setObjectCamera('man', 'other');
addLuaText('man');
runTimer('adiosP', 3);
end
if value1 == 'adiossonki' then
doTweenX("furnacegotcha", "furnacegotcha", 800, 0.4, "linear") 
runTimer('cagaste', 0.4);
end
if value1 == 'dg' then
Anillo()
setProperty('Alerta.visible', true)
end
end
end

local BFSaltoPos = 520
local BFCaidaPos = 130
local EsquivePosX = 220
local EsquivePosY = 370

function CambioDeValores()
EsquivePosX = 110
EsquivePosY = 270
BFCaidaPos = 10
end

Esquivado = false;
PuedeEsquivar = false;
Saltado = false;

function Anillo()

cameraSetTarget('boyfriend')
setProperty('isCameraOnForcedPos',true)
runTimer('PreMipito', 0.1);
runTimer('AnilloT', 0.4);
runTimer('AnilloTe', 0.6);
runTimer('Muerte', 1.1);
runTimer('Target', 1);
end

function onUpdate()
setProperty('esquive.x', getProperty('boyfriend.x')+EsquivePosX)
setProperty('esquive.y', getProperty('boyfriend.y')+EsquivePosY)
if PuedeEsquivar == true and Saltado == false then
if keyJustPressed('space') or botPlay or mouseReleased() then
Saltado = true;
Esquivado = true;
setProperty('Alerta.visible', false)
setProperty('esquive.visible', true)
setProperty('boyfriend.visible', false)
doTweenY('Loesquivowe', 'boyfriend', defaultBoyfriendY-BFSaltoPos, 0.3, 'linear');
end
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'adiosR' then
doTweenX("red", "red", -1500, 0.01, "linear") 	
end	
if tag == 'adiosT' then
doTweenX("toys", "toys", -1500, 0.01, "linear") 	
end	
if tag == 'adiosB' then
doTweenX("bucket", "bucket", -1500, 0.01, "linear") 	
end	
if tag == 'adiosF' then
doTweenX("fate", "fate", -1500, 0.01, "linear") 	
end	
if tag == 'adiosM' then
doTweenX("maniacal", "maniacal", -1500, 0.01, "linear") 	
end
if tag == 'adiosP' then
doTweenX("man", "man", -1500, 0.01, "linear") 	
end
if tag == 'adiosiwis' then
removeLuaSprite('oliwis')
end	
if tag == 'adiosR' then
doTweenX("red", "red", -1500, 0.01, "linear") 	
end
if tag == 'cagaste' then
doTweenAlpha('Luz', 'Luz', 1, 0.1, 'linear');
end
if tag == 'PreMipito' then
setTextString('Alerta', "2")
end
if tag == 'AnilloT' then
setTextString('Alerta', "1")
doTweenX('EADMP', 'elanillodemipitote', -1100, velocidad1/1.45, 'linear');  
end
if tag == 'AnilloTe' then
setTextString('Alerta', "dodge!")
cameraFlash('camGame', 'FF0000', 0.1)
Saltado = false;
PuedeEsquivar = true;
end
if tag == 'Target' then
setProperty('isCameraOnForcedPos', false)
end
if tag == 'Muerte' and Esquivado == false then
setProperty('health', 0);
elseif tag == 'Muerte' and Esquivado == true then
Esquivado = false;
PuedeEsquivar = false;
end 
end


function onTweenCompleted(tag) 	
if tag == "stardustBg" then
setProperty("stardustBg.x", -800)
setProperty("stardustBg2.x", width-1520) 
doTweenX("stardustBg", "stardustBg", -width, velocidad1, "linear") 	
doTweenX("stardustBg2", "stardustBg2", -820, velocidad1, "linear") 
end 
if tag == "stardustFloor" then
setProperty("stardustFloor.x", -800)
setProperty("stardustFloor2.x", width-1520) 
doTweenX("stardustFloor", "stardustFloor", -width, velocidad2, "linear") 	
doTweenX("stardustFloor2", "stardustFloor2", -820, velocidad2, "linear") 
end
if tag == 'Loesquivowe' then
doTweenY('pabajo', 'boyfriend', defaultBoyfriendY-BFCaidaPos, 0.4, 'linear');
setProperty('esquive.visible', false)
setProperty('boyfriend.visible', true)
setTextString('Alerta', "3")
end
if tag == 'EADMP' then
setProperty('elanillodemipitote.x', 2800)
end
end