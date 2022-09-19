function onCreate()
precacheImage('exe/FunInfiniteStage/1f');
precacheImage('exe/FunInfiniteStage/2f');
precacheImage('exe/FunInfiniteStage/3f');
precacheImage('exe/FunInfiniteStage/4go');
setProperty('grpNoteSplashes.visible', true)
end

function onCountdownStarted()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CustomTexture' then
setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'sonicUI/texturas/MajinSplash');
        end
    end
end


function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == '3' then
makeLuaSprite('3f', 'exe/FunInfiniteStage/3f', 0, 0);
setLuaSpriteScrollFactor('3f', 0, 0);
setProperty('3f.alpha', 1);
scaleLuaSprite('3f', 2, 2);
addLuaSprite('3f', true);
setObjectCamera('3f', 'hud');
doTweenAlpha('3f', '3f', 0, 0.3, 'linear');
end	
if value1 == '2' then
makeLuaSprite('2f', 'exe/FunInfiniteStage/2f', 0, 0);
setLuaSpriteScrollFactor('2f', 0, 0);
setProperty('2f.alpha', 1);
scaleLuaSprite('2f', 2, 2);
addLuaSprite('2f', true);
setObjectCamera('2f', 'hud');
doTweenAlpha('2f', '2f', 0, 0.3, 'linear');
end	
if value1 == '1' then
makeLuaSprite('1f', 'exe/FunInfiniteStage/1f', 0, 0);
setLuaSpriteScrollFactor('1f', 0, 0);
setProperty('1f.alpha', 1);
scaleLuaSprite('1f', 2, 2);
addLuaSprite('1f', true);
setObjectCamera('1f', 'hud');
doTweenAlpha('1f', '1f', 0, 0.3, 'linear');
end	
if value1 == 'go' then
makeLuaSprite('4go', 'exe/FunInfiniteStage/4go', 0, 0);
setLuaSpriteScrollFactor('4go', 0, 0);
setProperty('4go.alpha', 1);
scaleLuaSprite('4go', 2, 2);
addLuaSprite('4go', true);
setObjectCamera('4go', 'hud');
doTweenAlpha('4go', '4go', 0, 0.3, 'linear');
end	
end	
if value1 == 'cambio' then	
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'majinnotes');
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'majinnotes');
end
end
end