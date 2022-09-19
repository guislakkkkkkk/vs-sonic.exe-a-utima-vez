--original pos dad = -900, 100
--modded pos dad = -700, 600
--local allowCountdown = false
local allowCountdown = false
local followDad = false

function onStartCountdown()
	if not allowCountdown then
		doTweenAlpha('camHUD1', 'camHUD', 0, 1, circInOut)
		objectPlayAnimation('The Chamber', 'Sonic no Fall', true)
		setProperty('dad.alpha', 0);
		setProperty('dad.x', -700);
		setProperty('dad.y', 600);
		setProperty('camHUD.visible', false);
		triggerEvent('Camera Follow Pos','-300','420')
		runTimer('CSStart', 0.5)
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onSoundFinished(tag)
	if tag == 'sonic' then
		runTimer('fall', 0.8)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'CSStart' then
		playSound('robot', 1, 'robot');
		cameraFlash('other', 'ff0000', 0.3, false)
		doTweenZoom('zoom', 'camGame', 1.2, 1.8, 'sineOut');
		runTimer('roboto', 1.05)
		doTweenColor('EmeraldBeamCharged', 'EmeraldBeamCharged', 'E7E2EA', 0.5, 'linear');
		doTweenColor('Asbel', 'Asbel', '00FFFF', 0.5, 'linear');
	end
	if tag == 'roboto' then
		playSound('sonic', 1, 'sonic');
		objectPlayAnimation('TheChamber', 'TheChamber2', true)
	end
	if tag == 'fall' then
		doTweenZoom('zoom', 'camGame', .67, .2, 'sineOut');
		cameraFlash('other', 'FFFFFF', .2, false)
		triggerEvent('Screen Shake', '0.2, 0.1')
		playSound('beam', 1, 'beamIgLolThoImNotGoingToUseThisTagForAnyThingSoItDoesNotMatterWhatICallItLmao');
		objectPlayAnimation('Floor', 'Floor2', true)
		objectPlayAnimation('FleetwayBGshit', 'BGyellow', true)
		objectPlayAnimation('Pebles', 'pebles instance 2', true)
		setProperty('Emerald Beam Charged.visible', true)
		setProperty('Emerald Beam.visible', false)
		setProperty('defaultCamZoom',0.67)
		runTimer('starting', .4)
		doTweenColor('EmeraldBeamCharged', 'EmeraldBeamCharged', 'FFF4CA', 0.1, 'linear');
		doTweenColor('FleetwayBGshit', 'FleetwayBGshit', 'FFF4CA', 0.1, 'linear');
		doTweenColor('FleetwayBGshit', 'FleetwayBGshit', 'FFF4CA', 0.1, 'linear');
		doTweenColor('TheChamber', 'TheChamber', 'FFF4CA', 0.1, 'linear');
	end
	if tag == 'starting' then
		startCountdown()
	end
end

function onStepHit()
	if curStep == 8 then
		setProperty('dad.alpha', 1);
		doTweenY('dady', 'dad', -300, 0.7, 'sineOut');
        setProperty('defaultCamZoom',0.67)
	end
	if curStep == 9 then
		followDad = true
	end
	if curStep == 14 then
		doTweenX('dadx', 'dad', -1100, 1.6, 'circInOut');
	end
	if curStep == 20 then
	    started = true
		setProperty('opponentDefault.x', -900)
		setProperty('opponentDefault.y', 100)
	end
	if curStep == 62 then
		setObjectCamera('barbot','hud') 
		setObjectCamera('barbot','hud') 
        skull()
		setProperty('camHUD.visible', true)
		doTweenAlpha('camHUD1', 'camHUD', 1, .7, 'circInOut')
	end
	if curStep == 64 then
		followDad = false
		setProperty('camHUD.visible', true)
	end
	if curStep == 1008 then
		playSound('SUPERBF', 1, 'SUPERBF');
	end

function onUpdate(elapsed)
	if followDad then
		triggerEvent('Camera Follow Pos', getProperty('dad.x') + 450, getProperty('dad.y') + 300)
	else
		triggerEvent('Camera Follow Pos', '', '')
	end
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/60)
		doTweenY('opponentmove', 'dad', -400 - 150*math.sin((currentBeat+12*12)*math.pi), 2)
		doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
		doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)
	end
end

function skull()
makeLuaText('txttt', 'Score: 0    Misses: 0', getPropertyFromClass('flixel.FlxG', 'width'),
getProperty('scoreTxt.x'), 10);
setTextSize('txttt', 22);
setTextBorder('txttt', 1, '000000');
setTextAlignment('txttt', 'center');
addLuaText('txttt');
setObjectCamera('txttt', 'other');

		setPropertyFromGroup('playerStrums', 0, 'scale.x', 0.64)
		setPropertyFromGroup('playerStrums', 1, 'scale.x', 0.64)
		setPropertyFromGroup('playerStrums', 2, 'scale.x', 0.64)
		setPropertyFromGroup('playerStrums', 3, 'scale.x', 0.64)

		setPropertyFromGroup('playerStrums', 0, 'scale.y', 0.64)
		setPropertyFromGroup('playerStrums', 1, 'scale.y', 0.64)
		setPropertyFromGroup('playerStrums', 2, 'scale.y', 0.64)
		setPropertyFromGroup('playerStrums', 3, 'scale.y', 0.64)

		setPropertyFromGroup('opponentStrums', 0, 'scale.x', 0.64)
		setPropertyFromGroup('opponentStrums', 1, 'scale.x', 0.64)
		setPropertyFromGroup('opponentStrums', 2, 'scale.x', 0.64)
		setPropertyFromGroup('opponentStrums', 3, 'scale.x', 0.64)

		setPropertyFromGroup('opponentStrums', 0, 'scale.y', 0.64)
		setPropertyFromGroup('opponentStrums', 1, 'scale.y', 0.64)
		setPropertyFromGroup('opponentStrums', 2, 'scale.y', 0.64)
		setPropertyFromGroup('opponentStrums', 3, 'scale.y', 0.64)

if not downscroll then
noteTweenY("nose1", 0, 70, 0.01, "linear")
noteTweenY("nose2", 1, 70, 0.01, "linear")
noteTweenY("nose3", 2, 70, 0.01, "linear")
noteTweenY("nose4", 3, 70, 0.01, "linear")

noteTweenY("nose5", 4, 70, 0.01, "linear")
noteTweenY("nose6", 5, 70, 0.01, "linear")
noteTweenY("nose7", 6, 70, 0.01, "linear")
noteTweenY("nose8", 7, 70, 0.01, "linear")

setProperty('timeTxt.scale.x', 1.25)
setProperty('timeTxt.scale.y', 1.25) 
setProperty('timeTxt.x', 1020)
setProperty('timeTxt.y', 650)
setProperty('timeTxt.angle', -9)
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('scoreTxt.visible', false);

setTextFont("txttt", "Fleetway.ttf");
setTextFont("botplayTxt", "Fleetway.ttf");
setTextFont("timeTxt", "Fleetway.ttf");
end
if downscroll then
noteTweenY("nose1", 0, 550, 0.01, "linear")
noteTweenY("nose2", 1, 550, 0.01, "linear")
noteTweenY("nose3", 2, 550, 0.01, "linear")
noteTweenY("nose4", 3, 550, 0.01, "linear")

noteTweenY("nose5", 4, 550, 0.01, "linear")
noteTweenY("nose6", 5, 550, 0.01, "linear")
noteTweenY("nose7", 6, 550, 0.01, "linear")
noteTweenY("nose8", 7, 550, 0.01, "linear")

setProperty('timeTxt.scale.x', 1.25)
setProperty('timeTxt.scale.y', 1.25) 
setProperty('timeTxt.x', 1020)
setProperty('timeTxt.y', 30)
setProperty('timeTxt.angle', -9)
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('scoreTxt.visible', false);

setProperty('txttt.y', getProperty('txttt.y')+670)

setTextFont("txttt", "Fleetway.ttf");
setTextFont("botplayTxt", "Fleetway.ttf");
setTextFont("timeTxt", "Fleetway.ttf");
end
end

function onEvent(name, value1, value2)
if name == "Change Character" then
doTweenY('dady', 'dad', -300, 0.01, 'sineOut');
end
end