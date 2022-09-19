function onCreate()
	makeLuaSprite('sunky BG', 'exe/sunky/BG', -790, -1200);
	setScrollFactor('sunky BG', 1, 1);
	addLuaSprite('sunky BG', false);
	
	makeLuaSprite('stage', 'exe/sunky/stage', 22, -600);
	setScrollFactor('stage', 1, 1);
	scaleObject('stage', 1.1, 1.1);
	addLuaSprite('stage', false);

	makeLuaSprite('ball', 'exe/sunky/ball', 100, -400);
    setScrollFactor('ball', 1, 1);
    scaleObject('ball', 1.1, 1.1);
	addLuaSprite('ball', false);	
end

function onCountdownStarted()
noteTweenX('fatal1', 0, 90+80, 0.01, 'linear');
noteTweenX('fatal2', 1, 205+80, 0.01, 'linear');
noteTweenX('fatal3', 2, 315+80, 0.01, 'linear');
noteTweenX('fatal4', 3, 425+80, 0.01, 'linear');

noteTweenX('bf1', 4, 730-80, 0.01, 'linear');
noteTweenX('bf2', 5, 845-80, 0.01, 'linear');
noteTweenX('bf3', 6, 955-80, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-80, 0.01, 'linear');

setTextFont('timeTxt', 'Sunky.otf')
setTextFont('scoreTxt', 'Sunky.otf')
setTextFont("botplayTxt", "Sunky.otf");
end	
