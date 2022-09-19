function onCreate()
	makeAnimatedLuaSprite('dancekisde', 'exe/sunky/sunker', 250, -40)
	addAnimationByPrefix('dancekisde', 'dance', 'sunker0',24,true)
	setObjectCamera('dancekisde','other')
	scaleObject('dancekisde', '4.8','4.8')

	makeLuaSprite('cereal','exe/sunky/cereal', 100, -800)
	setObjectCamera('cereal','hud')
	addLuaSprite('cereal')
	setObjectOrder('cereal',20)

	makeLuaSprite('muchh','exe/sunky/sunkyMunch', 1300, 50)
	setObjectCamera('muchh','hud')
    addLuaSprite('muchh')
	setObjectOrder('muchh',21)

	makeLuaSprite('pose','exe/sunky/sunkyPose', -800, 50)
	setObjectCamera('pose','hud')
    addLuaSprite('pose')
	setObjectOrder('pose',22)

	makeLuaSprite('kemiedo','exe/sunky/sunkage', 0, 0)
	setObjectCamera('kemiedo','other')
    

end

stepHitFuncs = {

	[132] = function()		
		addLuaSprite('dancekisde', true);
	end,

	[144] = function()		
		removeLuaSprite('dancekisde')
	end,
	[361] = function()
		doTweenY('move', 'cereal', 800, 10, 'smootherStepOut')
	end,
	[692] = function()
		doTweenX('move', 'pose', 1400, 10, 'smootherStepOut')
	end,
	[911] = function()
		doTweenX('move', 'muchh', -800, 10, 'smootherStepOut')
	end,
	[1436] = function()
	addLuaSprite('kemiedo')
	setObjectOrder('kemiedo', 33)
	doTweenAlpha('kevinsitooo', 'kemiedo', 1, 0.00001, 'smootherStepOut')
	end,

	[1441] = function()
		doTweenAlpha('kevinsitooo', 'kemiedo', 0, 3.1, 'linear')
	end
}

function onStepHit()
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end
end