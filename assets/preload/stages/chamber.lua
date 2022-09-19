function onCreate()
makeAnimatedLuaSprite('Wall', 'exe/Chamber/Wall', -3600, -1570);
addAnimationByPrefix('Wall', 'Wall', 'Wall', 24, true);  
objectPlayAnimation('Wall', 'Wall', true)
addLuaSprite('Wall', false);
scaleObject('Wall', 1*4, 1*4) 

makeAnimatedLuaSprite('EmeraldBeamCharged', 'exe/Chamber/Emerald Beam Charged', -1470, -1800);
addAnimationByPrefix('EmeraldBeamCharged', 'EmeraldBeamCharged', 'Emerald Beam Charged', 24, true);  
objectPlayAnimation('EmeraldBeamCharged', 'EmeraldBeamCharged', true)
addLuaSprite('EmeraldBeamCharged', false);
scaleObject('EmeraldBeamCharged', 1*4, 1*4) 

makeAnimatedLuaSprite('Floor', 'exe/Chamber/Floor', -3850, 700);
addAnimationByPrefix('Floor', 'Floor', 'floor blue', 24, true);  
addAnimationByPrefix('Floor', 'Floor2', 'floor yellow', 24, true);  
objectPlayAnimation('Floor', 'Floor', true)
addLuaSprite('Floor', false);
scaleObject('Floor', 1*4, 1.4*4) 

makeAnimatedLuaSprite('FleetwayBGshit', 'exe/Chamber/FleetwayBGshit', -3857, -1555);
addAnimationByPrefix('FleetwayBGshit', 'FleetwayBGshit', 'FleetwayBGshit', 24, true);  
objectPlayAnimation('FleetwayBGshit', 'FleetwayBGshit', true)
addLuaSprite('FleetwayBGshit', false);
scaleObject('FleetwayBGshit', 1*2, 1*2) 

makeAnimatedLuaSprite('TheChamber', 'exe/Chamber/The Chamber', -1470, 270);
addAnimationByPrefix('TheChamber', 'TheChamber', 'Chamber Sonic Fall', 1, false);  
addAnimationByPrefix('TheChamber', 'TheChamber2', 'Chamber Sonic Fall', 24, false);  
objectPlayAnimation('TheChamber', 'TheChamber', true)
addLuaSprite('TheChamber', true);
scaleObject('TheChamber', 1*2, 1*2) 

makeAnimatedLuaSprite('Porker Lewis', 'exe/Chamber/Porker Lewis', 1100, -900);
addAnimationByPrefix('Porker Lewis', 'Porker Lewis', 'Porker FG', 24, true);  
objectPlayAnimation('Porker Lewis', 'Porker Lewis', true)
addLuaSprite('Porker Lewis', true);
scaleObject('Porker Lewis', 1*4, 1*4) 

setProperty('cameraSpeed', 2)
end