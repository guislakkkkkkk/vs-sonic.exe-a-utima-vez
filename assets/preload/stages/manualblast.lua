function onCreate()

precacheImage('exe/hog/Corcho/essearmstrong');
precacheImage('exe/hog/Corcho/esamierda');
precacheImage('exe/hog/Corcho/piso');
precacheImage('exe/hog/Corcho/ski');

addCharacterToList('Glitch', 'dad')
addCharacterToList('scorched', 'dad')

	makeLuaSprite('Glitch', 'exe/hog/Glitch', -750, -100);
	setScrollFactor('Glitch', 1, 1);
	scaleLuaSprite('Glitch', 1.2*2, 1*2);
	addLuaSprite('Glitch', false);

	makeLuaSprite('bg', 'exe/hog/bg', -750, -250);
	setScrollFactor('bg', 1, 1);
	scaleLuaSprite('bg', 4, 5);
	addLuaSprite('bg', false);

	makeAnimatedLuaSprite('Waterfalls', 'exe/hog/Waterfalls', -1800, 200);
    addAnimationByPrefix('Waterfalls', 'Waterfalls', 'Waterfalls', 24, true);  
    scaleLuaSprite('Waterfalls', 1.25, 1);
    objectPlayAnimation('Waterfalls', 'Waterfalls', true)
    addLuaSprite('Waterfalls', false);

    makeAnimatedLuaSprite('HillsandHills', 'exe/hog/HillsandHills', -450, 150);
    addAnimationByPrefix('HillsandHills', 'HillsandHills', 'HillsandHills', 20, true);  
    objectPlayAnimation('HillsandHills', 'HillsandHills', true)
    scaleLuaSprite('HillsandHills', 2.5, 2.2);
    addLuaSprite('HillsandHills', false);

	makeLuaSprite('HogAIO', 'exe/hog/HogAIO', -750, -100);
	setScrollFactor('HogAIO', 1, 1);
	scaleLuaSprite('HogAIO', 1.2*2, 1*2);
	addLuaSprite('HogAIO', false);

makeAnimatedLuaSprite('Transformaticon_Hog', 'exe/hog/Transformaticon_Hog', defaultOpponentX-27, defaultOpponentY+290);
addAnimationByPrefix('Transformaticon_Hog', 'Transformaticon_Hog', 'HogDead', 24, true);  
scaleLuaSprite('Transformaticon_Hog', 2, 2);
addLuaSprite('Transformaticon_Hog', true);
setProperty('Transformaticon_Hog.visible', false);

	setProperty('defaultCamZoom', 0.55) 

setObjectOrder('bg', 1)
setObjectOrder('Waterfalls', 2)
setObjectOrder('HillsandHills', 3)
setObjectOrder('HogAIO', 4)
end

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'ct' then
objectPlayAnimation('Transformaticon_Hog', 'Transformaticon_Hog', true)
setProperty('Transformaticon_Hog.visible', true);
setProperty('dad.visible', false);
end
if value1 == 'fase2' then
escorcho()
removeLuaSprite('Transformaticon_Hog')
setProperty('dad.visible', true);
triggerEvent('Change Character', 'dad', 'scorched');
removeLuaSprite('overlay')
removeLuaSprite('HogAIO')
removeLuaSprite('HillsandHills')
removeLuaSprite('bg')
runTimer('Scorched', 0.1, 1);
end		
if value1 == 'gh' then
objectPlayAnimation('scorchedhud', 'glitch', true)
triggerEvent('TooSlowFlashinShit', '1', '1');
setProperty('ski.visible', false)
setProperty('essearmstrong.visible', false)
setProperty('Waterfalls.visible', false)
setProperty('esamierda.visible', false)
setProperty('piso.visible', false)
runTimer('TimerG1', 0.001, 1);
runTimer('Glitch', 0.01, 1);
runTimer('TimerG2', 0.3, 1);
runTimer('Scorched', 0.4, 1);
end
if value1 == 'fase3' then
setPropertyFromClass("openfl.Lib", "application.window.title", "Friday Night Funkin': Sonic.EXE (Not respond)")
objectPlayAnimation('scorchedhud', 'glitch', true)
triggerEvent('Change Character', 'dad', 'Glitch');
removeLuaSprite('ski')
removeLuaSprite('essearmstrong')
removeLuaSprite('Waterfalls')
removeLuaSprite('esamierda')
removeLuaSprite('piso')
runTimer('Glitch', 0.1, 1);
end		
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Scorched' then
doTweenColor('Waterfalls', 'Waterfalls', 'CF0000', 0.5, 'linear');
doTweenColor('dad', 'dad', 'FF9C9C', 0.5, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'FF9C9C', 0.5, 'linear');
doTweenColor('piso', 'piso', 'FF9C9C', 0.5, 'linear');
end
if tag == 'Glitch' then
doTweenColor('dad', 'dad', 'B2FCFF', 0.00001, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'B2FCFF', 0.001, 'linear');
end
if tag == 'TimerG1' then
triggerEvent('Change Character', 'dad', 'Glitch');
end
if tag == 'TimerG2' then
objectPlayAnimation('scorchedhud', 'scorched', true)
setProperty('ski.visible', true)
setProperty('essearmstrong.visible', true)
setProperty('Waterfalls.visible', true)
setProperty('esamierda.visible', true)
setProperty('piso.visible', true)
triggerEvent('Change Character', 'dad', 'scorched');
end
end

function escorcho()

makeLuaSprite('ski', 'exe/hog/Corcho/ski', -1100, -700);
setScrollFactor('ski', 1, 1);
scaleLuaSprite('ski', 4, 4.76);
addLuaSprite('ski', false);

makeLuaSprite('essearmstrong', 'exe/hog/Corcho/essearmstrong', -800, -200);
setScrollFactor('essearmstrong', 1, 1);
scaleLuaSprite('essearmstrong', 2.5, 2.5);
addLuaSprite('essearmstrong', false);

makeLuaSprite('esamierda', 'exe/hog/Corcho/esamierda', -500, 100);
setScrollFactor('esamierda', 1, 1);
scaleLuaSprite('esamierda', 2.5, 2.7);
addLuaSprite('esamierda', false);

makeLuaSprite('piso', 'exe/hog/Corcho/piso', -1000, -600);
setScrollFactor('piso', 1, 1);
scaleLuaSprite('piso', 2.75, 2.75);
addLuaSprite('piso', false);

setObjectOrder('ski', 1)
setObjectOrder('essearmstrong', 2)
setObjectOrder('Waterfalls', 3)
setObjectOrder('esamierda', 4)
setObjectOrder('piso', 5)
end