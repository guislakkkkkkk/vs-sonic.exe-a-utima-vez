function onCreate()

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

	setProperty('defaultCamZoom', 0.65) 

end