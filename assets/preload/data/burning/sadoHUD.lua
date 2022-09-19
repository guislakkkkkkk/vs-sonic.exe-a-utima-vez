-- sadoHUD V1 by BigBrainedDev1234
-- snoc was here (yay)
-- please use psych 0.6.2
-- anyways, just enjoy or whatever, go just below for rating options

-- saraHUD my beloved /j but thanks for the idea of math.floor (used for the health thing)

local comboShit = -110 -- scrapped 3 useless vars, cleanz
local pixelStuff
local otherComboStuff = 0 -- no touchy >:(
local combo -- no touchy >:(
local ratingImage = '' -- no toucht >:( - this finally works though
local static = true -- ratings will stay static.
local multiple = false -- more then one rating appears at a time
local ratingCamera = 'game' -- its either game or other, choose your poison.
local pixMod = '' -- pixel end shiz
local pixPath =  'GUI/Sonic/' -- pixel path shiz
local pixSize = 0 -- pixel rating size is 5 but set to 0 unless it is a pixel stage
local healthValue -- health value, yay (unused)
local camZooming -- checks whether the camera is zooming every 4 beats or not
local comboBumps = false -- combo stuff bumps
local ratingBumps = true -- rating stuff bumps

function lerp(a, b, t)
	return a + (b - a) * t
end

function getRating(diff, noteType) -- thank you bbpanzu, you are a blessing
    if noteType == specialType then
        return '';  -- prevents rating so custom one can pop up, doesn't matter what it's called, just can't be sick, good, etc
    end

	diff = math.abs(diff);
	if diff <= getPropertyFromClass('ClientPrefs', 'badWindow') then
		if diff <= getPropertyFromClass('ClientPrefs', 'goodWindow') then
			if diff <= getPropertyFromClass('ClientPrefs', 'sickWindow') then
				return 'sick';
			end
			return 'good';
		end
		return 'bad';
	end
	return 'shit';
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if not isSustainNote then

		
		strumTime = getPropertyFromGroup('notes', id, 'strumTime');
      local rating = getRating(strumTime - getSongPosition() + getPropertyFromClass('ClientPrefs','ratingOffset'), noteType);
      ratingImage = rating
		
		-- debugPrint(pixPath .. ratingImage .. pixMod) -- debug shiz
		
		combo = getProperty('combo')
		otherComboStuff = otherComboStuff + 1
		if multiple == true then
			comboShit = comboShit + 1 -- yay, code
		else
			-- add smth for replacement
			-- print(comboShit)
		end
	
		makeLuaSprite('comboSiz' .. comboShit, pixPath .. ratingImage .. pixMod)
		screenCenter('comboSiz' .. comboShit)
		setProperty('comboSiz' .. comboShit .. '.alpha', 1)
		addLuaSprite('comboSiz' .. comboShit, true)
		setObjectCamera('comboSiz' .. comboShit, ratingCamera)
		if multiple == false then
			runTimer('bruh' .. otherComboStuff, 1)
		else
			doTweenAlpha('comboSizByeBye' .. comboShit, 'comboSiz' .. comboShit, 0, 2, 'cubeOut')
			runTimer('bruh2', 1)
		end
		if not downscroll then
		makeLuaText('comboTxt', combo)
		setProperty('comboTxt.y', 640)
		setTextAlignment('comboTxt', 'center')
		addLuaText('comboTxt')
		setProperty('comboTxt.scale.x', 0.4)
		setTextBorder('comboTxt', 6, '000000')
		setProperty('comboTxt.scale.y', 0.4)
		setTextSize('comboTxt', 100)
		setObjectCamera('comboTxt', 'camHUD')
		setTextFont("comboTxt", "sonic-hud-font.ttf");
		setObjectOrder('comboTxt', 10)
		end
		if downscroll then
		makeLuaText('comboTxt', combo)
		setProperty('comboTxt.y', 140)
		setTextAlignment('comboTxt', 'center')
		addLuaText('comboTxt')
		setProperty('comboTxt.scale.x', 0.4)
		setTextBorder('comboTxt', 6, '000000')
		setProperty('comboTxt.scale.y', 0.4)
		setTextSize('comboTxt', 100)
		setObjectCamera('comboTxt', 'camHUD')
		setTextFont("comboTxt", "sonic-hud-font.ttf");
		setObjectOrder('comboTxt', 10)
        end
		if comboBumps == true then
			setProperty('comboTxt.scale.x', 0.4)
			setProperty('comboTxt.scale.y', 0.4)
		else
			setProperty('comboTxt.scale.x', 0.4)
			setProperty('comboTxt.scale.y', 0.4)
		end
		
		if ratingBumps == true then
			setProperty('comboSiz' .. comboShit .. '.scale.x', 0.65 + pixSize)
			setProperty('comboSiz' .. comboShit .. '.scale.y', 0.65 + pixSize)
		else
			setProperty('comboSiz' .. comboShit .. '.scale.x', 0.4 + pixSize)
			setProperty('comboSiz' .. comboShit .. '.scale.y', 0.4 + pixSize)
		end
		
		if pixelStuff == '-pixel' then
			setProperty('comboTxt.x', getProperty('comboSiz' .. comboShit .. '.x') - 217.5)
			setProperty('comboSiz' .. comboShit .. '.antialiasing', false)
			if ratingBumps == true then
				setProperty('comboSiz' .. comboShit .. '.scale.x', 1.05 + pixSize)
				setProperty('comboSiz' .. comboShit .. '.scale.y', 1.05 + pixSize)
			else
				setProperty('comboSiz' .. comboShit .. '.scale.x', 0.5 + pixSize)
				setProperty('comboSiz' .. comboShit .. '.scale.y', 0.5 + pixSize)
			end
			doTweenX('comboBackX' .. comboShit, 'comboSiz' .. comboShit .. '.scale', 0.5 + pixSize, 0.65, 'cubeOut')
			doTweenY('comboBackY' .. comboShit, 'comboSiz' .. comboShit .. '.scale', 0.5 + pixSize, 0.65, 'cubeOut')
		else
			setProperty('comboTxt.x', getProperty('comboSiz' .. comboShit .. '.x') - 140)
			if ratingBumps == true then
				setProperty('comboSiz' .. comboShit .. '.scale.x', 0.65)
				setProperty('comboSiz' .. comboShit .. '.scale.y', 0.65)
			else
				setProperty('comboSiz' .. comboShit .. '.scale.x', 0.5)
				setProperty('comboSiz' .. comboShit .. '.scale.y', 0.5)
			end
			doTweenX('comboBackX' .. comboShit, 'comboSiz' .. comboShit .. '.scale', 0.5, 0.65, 'cubeOut')
			doTweenY('comboBackY' .. comboShit, 'comboSiz' .. comboShit .. '.scale', 0.5, 0.65, 'cubeOut')
		end
		
		doTweenX('comboBackX2', 'comboTxt.scale', 0.5, 0.65, 'cubeOut')
		doTweenY('comboBackY2', 'comboTxt.scale', 0.5, 0.65, 'cubeOut')
	end
end

function onTimerCompleted(name)
	if multiple == false and name == 'bruh' .. otherComboStuff and getProperty('comboSiz' .. comboShit .. '.scale.x') == 0.5 then
		doTweenAlpha('comboBackAlpha' .. comboShit, 'comboSiz' .. comboShit, 0.00000000001, 0.65, 'cubeOut')
	elseif multiple == false and name == 'bruh' .. otherComboStuff then
		doTweenAlpha('comboBackAlpha' .. comboShit, 'comboSiz' .. comboShit, 0.00000000001, 0.65, 'cubeOut')
	end
	
	if name == 'bruh2' then
		doTweenAlpha('comboTxt2', 'comboTxt', 0.00000000001, 0.65, 'cubeOut')
	end
end

function floor(val)
	math.floor(val)
end

function onUpdate() -- don't touch any of this yet, its for icon scaling and other important stuff
	if getProperty('comboSiz' .. comboShit .. '.alpha') == 0 and multiple == true then
		removeLuaSprite('comboSiz' .. comboShit) -- this is to save memory
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	doTweenZoom('camHUDZoom', 'camHUD', 1, 0.75, 'cubeOut')
	doTweenZoom('camGameZoom', 'camGame', getProperty('defaultCamZoom'), 0.75, 'cubeOut')
end