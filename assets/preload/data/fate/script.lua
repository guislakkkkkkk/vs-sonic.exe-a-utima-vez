local where = 'left' -- left, right, or center
local bfIconOnly = false -- only bf's icon is shown | Doesn't work quite right with swap directions yet

local gravity = false -- constant down (health drain) heheh | cool, but needs some tweakin for higher bpms
local lowestHp = 0.5 -- absolute lowest hp can drain (don't make it kill you please, I'm beggin ya)  | Weird, may try to improve some time
local droppinPowr = 0.0041 -- every step hit, hp goes down by

local rotatIconBf = false -- icon faces up or down
local rotatIconDad = false -- icon faces up or down

local swapDirections = false -- bf's up top and dad's down bottom (flips direction of health gain)

local ENABLED = true -- An on or off button I guess

local winnin = false
local losin = false
local okin = false

function onCountdownStarted()


makeLuaSprite('lord', 'sonicUI/lordx/lord', 0, 0);
addLuaSprite('lord', false);
scaleObject('lord', 1, 1) 
setObjectCamera('lord', 'hud');

setProperty("healthBarBG.visible", false)
setProperty("healthBar.visible", false)
setProperty('timeBar.visible',false)
setProperty('timeBarBG.visible',false)
setProperty('scoreTxt.visible',false)

setProperty('timeTxt.x', 794)
setTextFont('timeTxt', 'Lord.otf')

noteTweenX('Lorx1', 0, 90+86, 0.01, 'linear');
noteTweenX('Lorx2', 1, 205+86, 0.01, 'linear');
noteTweenX('Lorx3', 2, 315+86, 0.01, 'linear');
noteTweenX('Lorx4', 3, 425+86, 0.01, 'linear');

noteTweenX('bf1', 4, 730-86, 0.01, 'linear');
noteTweenX('bf2', 5, 845-86, 0.01, 'linear');
noteTweenX('bf3', 6, 955-86, 0.01, 'linear');
noteTweenX('bf4', 7, 1065-86, 0.01, 'linear');

if downscroll then
setProperty('timeTxt.y', 50)
makeLuaSprite('tiempojuegouwu', 'sonicUI/lordx/tiempojuegouwu', 830, 0);
addLuaSprite('tiempojuegouwu', false);
scaleObject('tiempojuegouwu', 1, 1) 
setObjectCamera('tiempojuegouwu', 'hud');
end
if not downscroll then
setProperty('timeTxt.y', 660)
makeLuaSprite('tiempojuegouwu', 'sonicUI/lordx/tiempojuegouwu', 830, 610);
addLuaSprite('tiempojuegouwu', false);
scaleObject('tiempojuegouwu', 1, 1) 
setObjectCamera('tiempojuegouwu', 'hud');
end
end


----- EVENT STUFFF ---------------------------------------------------------------------
local what = false
function onEvent(name, value1, value2)
    if name == 'Rotat e Hp bar' then
    	location = tonumber(value1)
		numwhat = tonumber(value2)
		if numwhat > 1 then
			numwhat = 1
		end
		x = 0
		if location == 0 then
			where = 'left'
			x = -150
		elseif location == 1 then
			where = 'center'
			x = 345
		elseif location == 2 then
			where = 'right'
			x = 725
		else
			where = 'right' -- default
			x = 725
		end

		if numwhat == 0 then
			what = true -- dooo
		elseif numwhat == 1 then
			what = false -- undooo
		end

		doTweenAlpha('iconP', 'iconP1', 0, 0.2, 'linear')
		doTweenAlpha('iconPU', 'iconP2', 0, 0.2, 'linear')
		doHealthX(x)
	end
end
-- this stuff is probably bad practice but it works so ehh
function doHealthX(x)
	if what == true then
		doTweenX('shove', 'healthBar', x, 0.5, 'circInOut')
		doTweenX('shrink', 'healthBar.scale', 0.93, 0.5, 'circInOut')
		doTweenX('shrinkBg', 'healthBarBG.scale', 0.93, 0.5, 'circInOut')

		doTweenAngle('rotat', 'healthBar', 90, 1, 'circInOut')
		runTimer('ycheck', 0.5)
	elseif what == false then
		doTweenX('pull', 'healthBar', screenWidth / 3.76, 0.5, 'circInOut')
		doTweenX('grow', 'healthBar.scale', 1, 0.5, 'circInOut')
		doTweenX('groBG', 'healthBarBG.scale', 1, 0.5, 'circInOut')

		doTweenAngle('ion', 'healthBar', 0, 1, 'circInOut')
		runTimer('yundcheck', 0.5)
	end
end

function doHealthY()
	if what == true then
		doTweenY('shoeve', 'healthBar', 360, 0.3, 'circInOut')
		doTweenY('shirnk', 'healthBar.scale', 0.93, 0.5, 'circInOut')

		runTimer('iconHold', 0.7)
		if where == 'left' then
			setProperty('iconP1.flipX', true)
		elseif where == 'center' then
			setObjectOrder('timeBarBG', getObjectOrder('iconP2')+1)
			setObjectOrder('timeBar', getObjectOrder('iconP2')+2)
			setObjectOrder('timeTxt', getObjectOrder('iconP2')+3)
		elseif where == 'right' then
			setProperty('iconP2.flipX', true)
		end	
		ENABLED = true
	elseif what == false then
		--debugPrint("undoooooooooooo")
		doTweenY('pulleve', 'healthBar', screenHeight * 0.897, 1, 'circInOut')
		doTweenY('groing', 'healthBar.scale', 1, 0.5, 'circInOut')
		
		runTimer('iconHoldIn', 1.2)
		
		setProperty('iconP1.flipX', false)
		setProperty('iconP2.flipX', false)

		ENABLED = false
		--debugPrint("undidddid")
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'ycheck' then
		doHealthY()
	end

	if tag == 'yundcheck' then
		doHealthY()
	end

	if tag == 'iconHold' then
		doTweenAlpha('icon', 'iconP1', 1, 0.5, 'linear')
		doTweenAlpha('icoPU', 'iconP2', 1, 0.5, 'linear')
	end

	if tag == 'iconHoldIn' then -- looks broke without this
		doTweenAlpha('iconI', 'iconP1', 1, 0.5, 'linear')
		doTweenAlpha('icoPe', 'iconP2', 1, 0.5, 'linear')
	end
end
----- ENDVENT STUFFFF ------------------------------------------------------------

function onCreatePost()
	--[[if bpm <= 115 then
		if droppinPowr < 0.01 then
			droppinPowr = droppinPowr * 2
		end
	end]]
	if ENABLED == true then

		if where == 'left' then
			where = -210
			setProperty('iconP1.flipX', true)
		elseif where == 'center' then
			where = 345
			-- timebar in front so stupid icons don't block it
			setObjectOrder('timeBarBG', getObjectOrder('iconP2')+1)
			setObjectOrder('timeBar', getObjectOrder('iconP2')+2)
			setObjectOrder('timeTxt', getObjectOrder('iconP2')+3)

		elseif where == 'right' then
			where = 780
			setProperty('iconP2.flipX', true)
		end

		if bfIconOnly == true then
			setProperty('iconP2.visible', false)
		end

		setProperty('healthBar.angle', 90)
		setProperty('healthBar.x', where) -- right is 920 | center is 345 | left is -240
		setProperty('healthBar.y', 360)

		setProperty('healthBar.scale.x', 0.93) -- initial size is a bit too big
		setProperty('healthBar.scale.y', 0.93)

		setProperty('healthBarBG.scale.x', 0.93)
		setProperty('healthBarBG.scale.y', 0.93)

		if swapDirections == true then
			setProperty('healthBar.flipX', true)
			setProperty('healthBarBG.flipX', true)
		end
	end
end

function onStepHit()
	if gravity == true then
		if curStep % 2 == 0 then
			if getProperty('health') > lowestHp then
				if curBpm <= 115 then
					setProperty('health', getProperty('health')- droppinPowr) -- works, but needs tweakin for higher bpm songs
				else
					setProperty('health', getProperty('health')- droppinPowr * (stepCrochet/50)) -- works, but needs tweakin for higher bpm songs
				end
			end
		end
	end	
end

function goodNoteHit()
	setProperty('health', getProperty('health')+ 0)
end

function onUpdate()


	setTextString('txttt', 'Score: ' .. score .. '            Misses: ' .. misses);
health = getProperty('health');
if 0 > health - 0.5 then
setProperty('health', 0);
end
end

function onUpdatePost()

setProperty('iconP1.scale.x', 0.75)
setProperty('iconP1.scale.y', 0.75) 
setProperty('iconP2.scale.x', 0.75)
setProperty('iconP2.scale.y', 0.75) 

	if ENABLED == true then
		-- so you can actually see the losing icons for yourself or opponents
		if getProperty('healthBar.percent') >= 95 then
			if winnin == false then
				winnin = true
				if swapDirections == true then
					doTweenY('winSwp', 'healthBar', 360 - 30, 0.2 + (crochet/5000), 'circOut')
				else
					doTweenY('win', 'healthBar', 360 + 30, 0.2 + (crochet/5000), 'circOut')
				end
			end
		else
			winnin = false
		end

		if getProperty('healthBar.percent') <= 5 then
			if losin == false then
				losin = true
				if swapDirections == true then
					doTweenY('oopsSwp', 'healthBar', 360 + 30, 0.2 + (crochet/5000), 'circOut')
				else
					doTweenY('oops', 'healthBar', 360 - 30, 0.2 + (crochet/5000), 'circOut')
				end
			end
		else
			losin = false
		end

		if getProperty('healthBar.percent') < 95 and getProperty('healthBar.percent') > 5 then
			if okin == false and getProperty('healthBar.y') ~= 360 then
				okin = true
				doTweenY('reg', 'healthBar', 360, 0.2 + (crochet/5000), 'circOut')
			end

		else
			okin = false
		end

		if swapDirections == true then
			if bfIconOnly == true then -- this works only with the size I have it set to, if changed, this will probably break | by break I mean the icon'll be off
				--P1Mult = getProperty('healthBar.y') + ((getProperty('healthBar.width') * (getProperty('healthBar.percent') / getProperty('healthBar.scale.y') - 0.005) * 0.01) + (150 * 		getProperty('iconP1.scale.x') - 150)) - 310 -- wip

				P1Mult = getProperty('healthBar.y') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * getProperty('healthBar.scale.y') * 0.01) + (150 * getProperty		('iconP1.scale.x') - 150)) - 390
			else
				P1Mult = getProperty('healthBar.y') + ((getProperty('healthBar.width') * getProperty('healthBar.percent') * getProperty('healthBar.scale.y') * 0.01) + (150 * getProperty		('iconP1.scale.x') - 150)) - 390
			end

			P2Mult =100

			if rotatIconBf == true then
				setProperty('iconP1.flipX', true) -- ewwww wtf
				setProperty('iconP1.angle', 90)
				setProperty('iconP1.x', getProperty('healthBar.x') + 130)
				setProperty('iconP1.origin.x', 150) -- not perfect, but better than leaving it
				setProperty('iconP1.origin.y', 100) -- not perfect, but better than leaving it
				setProperty('iconP1.y', P1Mult + 40)
			else
				setProperty('iconP1.x', getProperty('healthBar.x') + 220)
				setProperty('iconP1.origin.y', 190) -- stops weird icon bop
				setProperty('iconP1.y', P1Mult)
			end
		
			if rotatIconDad == true then
				setProperty('iconP2.flipX', true)
				setProperty('iconP2.angle', 90)
				setProperty('iconP2.x', getProperty('healthBar.x') + 370)
				setProperty('iconP2.origin.x', -20)
				setProperty('iconP2.origin.y', 40)
				setProperty('iconP2.y', P2Mult - 65)
			else
				setProperty('iconP2.x', getProperty('healthBar.x') + 220)
				setProperty('iconP2.origin.y', -120)
				setProperty('iconP2.y', P2Mult)
			end

		else

			if bfIconOnly == true then -- this works only with the size I have it set to, if changed, this will probably break | by break I mean the icon'll be off
				P1Mult = getProperty('healthBar.y') - ((getProperty('healthBar.width') * (getProperty('healthBar.percent') / getProperty('healthBar.scale.y') - 0.005) * 0.01) + (150 * 		getProperty('iconP1.scale.x') - 150)) + 290
			else
				P1Mult = getProperty('healthBar.y') - ((getProperty('healthBar.width') * getProperty('healthBar.percent') * getProperty('healthBar.scale.y') * 0.01) + (150 * getProperty		('iconP1.scale.x') - 150)) + 270
			end

			P2Mult = 450

			if rotatIconBf == true then
				setProperty('iconP1.flipX', false)
				setProperty('iconP1.angle', 90)
				setProperty('iconP1.x', getProperty('healthBar.x') + 350)
				setProperty('iconP1.origin.x', -50) -- not perfect, but better than leaving it
				setProperty('iconP1.origin.y', 70) -- not perfect, but better than leaving it
				setProperty('iconP1.y', P1Mult - 120)
			else
				setProperty('iconP1.x', getProperty('healthBar.x') + 220)
				setProperty('iconP1.origin.y', -100) -- stops weird icon bop
				setProperty('iconP1.y', P1Mult)
			end
		
			if rotatIconDad == true then
				setProperty('iconP2.flipX', false)
				setProperty('iconP2.angle', 90)
				setProperty('iconP2.x', getProperty('healthBar.x') + 170)
				setProperty('iconP2.origin.x', 170)
				setProperty('iconP2.origin.y', 40)
				setProperty('iconP2.y', P2Mult + 130)
			else
				setProperty('iconP2.x', getProperty('healthBar.x') + 220)
				setProperty('iconP2.origin.y', 200)
				setProperty('iconP2.y', P2Mult)
			end

		end


		if gravity == true then
			setProperty('arro.visible', true)
			setProperty('arro.x', getProperty('iconP1.x') - 20)
			setProperty('arro.y', getProperty('iconP1.y') + 100)
			if getProperty('health') <= lowestHp then
				setTextString('arro', '||')
				setProperty('arro.angle', 90)
				setProperty('arro.y', 676)
			else
				setTextString('arro', '>>')
				setProperty('arro.angle', 90)
			end
		else
			setProperty('arro.visible', false)
		end
	end
end