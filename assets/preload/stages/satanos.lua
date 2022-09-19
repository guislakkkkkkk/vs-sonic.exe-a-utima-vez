function onCreate()
  addLuaScript('data/tutorial/splash')

	makeLuaSprite('satanos', 'exe/satanos', -600, -300);
	setScrollFactor('satanos', 1, 1);
	scaleLuaSprite('satanos', 1.4, 1.4);
	addLuaSprite('satanos', false);


    makeAnimatedLuaSprite('SatanosAnim', 'characters/Satanos/SatanosAnim', defaultOpponentX-320, defaultOpponentY+190);  
    addAnimationByIndices('SatanosAnim', 'SatanosAnim', 'SatanosAnim', '1,1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,27,27,27,27,27,27,27,27,27,27,27,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56', 12)
    objectPlayAnimation('SatanosAnim', 'SatanosAnim', true)
    scaleLuaSprite('SatanosAnim', 0.9, 0.9);
    setProperty('SatanosAnim.visible', false);
    addLuaSprite('SatanosAnim', true);

    setProperty('defaultCamZoom', 0.7) 

end

function onStepHit()
if curBeat == 1 then
doTweenColor('timeBar', 'timeBar', 'FF0001', 0.01, 'linear');
end
end

stepHitFuncs = {
[1712] = function()		
objectPlayAnimation('SatanosAnim', 'SatanosAnim', true)
setProperty('SatanosAnim.visible', true);
setProperty('dad.visible', false);
end,
[1775] = function()		
setProperty('SatanosAnim.visible', false);
setProperty('dad.visible', true);
end
}

function onStepHit()
	if stepHitFuncs[curStep] then
		stepHitFuncs[curStep]()
	end
end