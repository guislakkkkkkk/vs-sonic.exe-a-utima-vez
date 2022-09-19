function onCreate()
precacheImage('exe/FunInfiniteStage/1f');
precacheImage('exe/FunInfiniteStage/2f');
precacheImage('exe/FunInfiniteStage/3f');
precacheImage('exe/FunInfiniteStage/4go');
setProperty('grpNoteSplashes.visible', true)

makeLuaSprite('mojain', 'exe/FunInfiniteStage/mojain', -515, 515);
addLuaSprite('mojain', false);
scaleObject('mojain', 1, 1)  
setProperty('mojain.flipX', true); 
setObjectCamera('mojain', 'hud')
doTweenX("mojain", "mojain", 315, 5, "linear")
end

function onCreatePost()
doTweenColor('bfcolor', 'boyfriend', '774CFF', 0.01, 'linear');
doTweenColor('floorcolor', 'floor BG', '774CFF', 0.01, 'linear');     
end

local texturaSplash = 'MajinSplash' 

function onStartCountdown()
doTweenColor('boyfriend', 'boyfriend', '3C48ED', 0.01, 'linear');    
    makeAnimatedLuaSprite('splashLeft', texturaSplash)
    makeAnimatedLuaSprite('splashDown', texturaSplash)
    makeAnimatedLuaSprite('splashUp', texturaSplash)
    makeAnimatedLuaSprite('splashRight', texturaSplash)

    for i=1, 3 do
        addAnimationByPrefix('splashLeft', 'splash' ..i, 'note splash purple ' ..i, 24, false)
        addAnimationByPrefix('splashDown', 'splash' ..i, 'note splash blue ' ..i, 24, false)
        addAnimationByPrefix('splashUp', 'splash' ..i, 'note splash green ' ..i, 24, false)
        addAnimationByPrefix('splashRight', 'splash' ..i, 'note splash red ' ..i, 24, false)
    end

    setProperty('splashLeft.alpha', 0)
    setProperty('splashDown.alpha', 0)
    setProperty('splashUp.alpha', 0)
    setProperty('splashRight.alpha', 0)

    setObjectCamera('splashLeft', 'other')
    setObjectCamera('splashDown', 'other')
    setObjectCamera('splashUp', 'other')
    setObjectCamera('splashRight', 'other')

    setProperty('splashLeft.visible', true)
    setProperty('splashDown.visible', true)
    setProperty('splashUp.visible', true)
    setProperty('splashRight.visible', true)

    setProperty('splashLeft.offset.x', 10)
    setProperty('splashLeft.offset.y', 10)
    setProperty('splashDown.offset.x', 10)
    setProperty('splashDown.offset.y', 10)
    setProperty('splashUp.offset.x', 10)
    setProperty('splashUp.offset.y', 10)
    setProperty('splashRight.offset.x', 10)
    setProperty('splashRight.offset.y', 10)

    addLuaSprite('splashLeft')
    addLuaSprite('splashDown')
    addLuaSprite('splashUp')
    addLuaSprite('splashRight')
    return Function_Continue
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
    strumTime = getPropertyFromGroup('notes', id, 'strumTime');
    local rating = getRating(strumTime - getSongPosition() + getPropertyFromClass('ClientPrefs','ratingOffset'), noteType)
    rate = rating
    if rate == 'sick' then	
    if noteData == 0 and not isSustainNote then
        setProperty('splashLeft.x', getPropertyFromGroup('playerStrums', 0, 'x')-(160*0.7)*0.95)
        setProperty('splashLeft.y', getPropertyFromGroup('playerStrums', 0, 'y')-(160*0.7))
        setProperty('splashLeft.visible', true)
        objectPlayAnimation('splashLeft', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashLeft.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 1 and not isSustainNote  then
        setProperty('splashDown.x', getPropertyFromGroup('playerStrums', 1, 'x')-(160*0.7)*0.95)
        setProperty('splashDown.y', getPropertyFromGroup('playerStrums', 1, 'y')-(160*0.7))
        setProperty('splashDown.visible', true)
        objectPlayAnimation('splashDown', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashDown.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 2 and not isSustainNote then
        setProperty('splashUp.x', getPropertyFromGroup('playerStrums', 2, 'x')-(160*0.7)*0.95)
        setProperty('splashUp.y', getPropertyFromGroup('playerStrums', 2, 'y')-(160*0.7))
        setProperty('splashUp.visible', true)
        objectPlayAnimation('splashUp', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashUp.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif noteData == 3 and not isSustainNote then
        setProperty('splashRight.x', getPropertyFromGroup('playerStrums', 3, 'x')-(160*0.7)*0.95)
        setProperty('splashRight.y', getPropertyFromGroup('playerStrums', 3, 'y')-(160*0.7))
        setProperty('splashRight.visible', true)
        objectPlayAnimation('splashRight', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashRight.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    end
end
end
--Asbel sen estuvo aqui

function onUpdate()
    if getProperty('splashLeft.animation.curAnim.finished') and getProperty('splashLeft.visible') then
        setProperty('splashLeft.visible', false)
    end
    if getProperty('splashDown.animation.curAnim.finished') and getProperty('splashDown.visible') then
        setProperty('splashDown.visible', false)
    end
    if getProperty('splashUp.animation.curAnim.finished') and getProperty('splashUp.visible') then
        setProperty('splashUp.visible', false)
    end
    if getProperty('splashRight.animation.curAnim.finished') and getProperty('splashRight.visible') then
        setProperty('splashRight.visible', false)
    end
end

function getRating(diff, noteType)
    if noteType == specialType then
        return '';  
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

volteado = false
limite = 2

function goodNoteHit()
    health = getProperty('health')
    if(getProperty('health') > limite)then
        setProperty('health', limite);
    end
end

function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'gremlin1'then 
setProperty('mojain.x', getProperty('iconP1.x')+55)
setProperty('health', 1.7);
limite = 1.7
end    
if value1 == 'gremlin2'then 
setProperty('mojain.x', getProperty('iconP1.x')+55)
setProperty('health', 1.4);
limite = 1.4
end    
if value1 == 'gremlin3'then 
setProperty('mojain.x', getProperty('iconP1.x')+80)
setProperty('health', 1);
limite = 1
end    
if value1 == 'gremlin4'then 
setProperty('mojain.x', getProperty('iconP1.x')+95)
setProperty('health', 0.5);
limite = 0.5
end  
if value1 == 'gremlin5'then 
setProperty('mojain.x', getProperty('iconP1.x')+75)
setProperty('health', 0.25);
limite = 0.25
end  
if value1 == 'giro' and volteado == false then 
doTweenAngle('flip1', 'camHUD', 180, 0.1, 'linear')
volteado = true
elseif value1 == 'giro' and volteado == true then 
doTweenAngle('flip2', 'camHUD', 360, 0.1, 'linear')
volteado = false
end    
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
setProperty('grpNoteSplashes.visible', false)	
setProperty('splashLeft.alpha', 0.6)
setProperty('splashDown.alpha', 0.6)
setProperty('splashUp.alpha', 0.6)
setProperty('splashRight.alpha', 0.6)
for i = 0, getProperty('opponentStrums.length')-1 do
setPropertyFromGroup('opponentStrums', i, 'texture', 'majinnotes');
end
for i = 0, getProperty('playerStrums.length')-1 do
setPropertyFromGroup('playerStrums', i, 'texture', 'majinnotes');
end
end
end