function onCreate()
makeAnimatedLuaSprite('STATIC', 'exe/STATIC', 0, 0);
addAnimationByPrefix('STATIC', 'STATIC', 'STATIC', 24, true);  
objectPlayAnimation('STATIC', 'STATIC', true)
addLuaSprite('STATIC', true);
scaleLuaSprite('STATIC', 4, 4);
setObjectCamera('STATIC','other')
setPropertyLuaSprite('STATIC', 'alpha', 0)

makeLuaSprite('Eggman', 'exe/JUMPSCARES/Eggman', 0, 0);
addLuaSprite('Eggman', true);
scaleObject('Eggman', 1, 1) 
setObjectCamera('Eggman', 'other');

makeLuaSprite('Knuckles', 'exe/JUMPSCARES/Knuckles', 0, 0);
addLuaSprite('Knuckles', true);
scaleObject('Knuckles', 1, 1) 
setObjectCamera('Knuckles', 'other');

makeLuaSprite('Tails', 'exe/JUMPSCARES/Tails', 0, 0);
addLuaSprite('Tails', true);
scaleObject('Tails', 1, 1) 
setObjectCamera('Tails', 'other');

makeLuaSprite('Xeno1', 'exe/JUMPSCARES/Xeno1', 0, 0);
addLuaSprite('Xeno1', true);
scaleObject('Xeno1', 1, 1) 
setObjectCamera('Xeno1', 'other');

makeLuaSprite('Xeno2', 'exe/JUMPSCARES/Xeno2', 0, 0);
addLuaSprite('Xeno2', true);
scaleObject('Xeno2', 1, 1) 
setObjectCamera('Xeno2', 'other');

setPropertyLuaSprite('Tails', 'alpha', 0)
setPropertyLuaSprite('Knuckles', 'alpha', 0)
setPropertyLuaSprite('Eggman', 'alpha', 0)
setPropertyLuaSprite('Xeno1', 'alpha', 0)
setPropertyLuaSprite('Xeno2', 'alpha', 0)
end

function onEvent(name,value1,value2)
if name == 'startstatic' and value1 == '' then
setPropertyLuaSprite('STATIC', 'alpha', 0.85)
objectPlayAnimation('STATIC', 'STATIC', true)
runTimer('AS', 0.01, 1)
end
if value1 == 'x1' then
setPropertyLuaSprite('Xeno1', 'alpha', 1)
runTimer('AJ', 0.1, 1)
end
if value1 == 'x2' then
setPropertyLuaSprite('Xeno2', 'alpha', 1)
runTimer('AJ', 0.1, 1)
end
if name == 'tailsjump' then
setPropertyLuaSprite('Tails', 'alpha', 1)
runTimer('AJ', 0.1, 1)
end
if name == 'knuxjump' then
setPropertyLuaSprite('Knuckles', 'alpha', 1)
runTimer('AJ', 0.1, 1)
end
if name == 'eggjump' then
setPropertyLuaSprite('Eggman', 'alpha', 1)
runTimer('AJ', 0.1, 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'AS' then
doTweenAlpha('STATIC', 'STATIC', 0, 2.6,'quardInOut')
end
if tag == 'AJ' then
doTweenAlpha('Tails', 'Tails', 0, 0.0001,'quardInOut')
doTweenAlpha('Eggman', 'Eggman', 0, 0.0001,'quardInOut')
doTweenAlpha('Knuckles', 'Knuckles', 0, 0.0001,'quardInOut')
doTweenAlpha('Xeno1', 'Xeno1', 0, 0.0001,'quardInOut')
doTweenAlpha('Xeno2', 'Xeno2', 0, 0.0001,'quardInOut')
end
end