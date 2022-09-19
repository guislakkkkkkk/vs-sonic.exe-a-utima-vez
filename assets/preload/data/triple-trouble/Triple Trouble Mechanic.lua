local Anillos = 0;

function onCreate()
    
    makeLuaSprite('Counter', 'exe/Counter', 1120, 600);
    scaleObject('Counter', 1, 1);
    setObjectCamera('Counter', 'hud');
    addLuaSprite("Counter", true);

    makeLuaText("Anillos", Anillos, 400, 1015, 600)
    setTextSize("Anillos", 58)
    setTextColor("Anillos", 'FFD537')
    setTextBorder("Anillos", 2.9, 'CF6E0D')
    setTextFont("Anillos", 'sonic4.ttf')
    addLuaText("Anillos")
end

function onCountdownStarted()
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CustomTexture' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'STATICNOTE_assets'); 
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
makeAnimatedLuaSprite('hitstatic', 'exe/hitStatic', -380, -90);
luaSpriteAddAnimationByPrefix('hitstatic', 'static', 'staticANIMATION', 24, true);
setLuaSpriteCamera('hitstatic', 'camHUD')
setPropertyLuaSprite('hitstatic', 'alpha', 0)
scaleObject('hitstatic', 3, 3);
addLuaSprite('hitstatic', true);
end
end
end
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CustomTexture2' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'PHANTOMNOTE_assets');
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then 
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
end
end
end
for i = 0, getProperty('unspawnNotes.length')-1 do
if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CustomTexture3' then
setPropertyFromGroup('unspawnNotes', i, 'texture', 'Ring-Notes'); --Change texture
setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
end
end
end
end

function noteMiss(id, direction, noteType, isSustainNote)
if Anillos > 0 then
Anillos = Anillos - 1;
end
if noteType == 'CustomTexture' and Anillos > 0 then
Anillos = Anillos - 3;
end
if noteType == 'CustomTexture' and Anillos == 0 then
runTimer('HS', 0.01);
playSound('hitStatic1', 0.5);
characterPlayAnim('boyfriend', 'hurt', true);
runTimer('Nostat', 0.5);
end
end

PuedeDrenar = false;
HD = 0.003;

function goodNoteHit(id, noteData, noteType)
if noteType == 'CustomTexture3' then
Anillos = Anillos + 1;
playSound("Ring", 1)
end
if noteType == 'CustomTexture2' and Anillos > 0 then
Anillos = Anillos - 3;
end
if noteType == 'CustomTexture2' and Anillos == 0 then
Aumento()
runTimer('Detener', 20, 1);
PuedeDrenar = true;
end
end

function Aumento()
HD = HD + 0.0023
end

function onUpdate()
setTextString('Anillos', "" ..  Anillos)
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Detener' then
PuedeDrenar = false
HD = 0.003;
end
if tag == 'Nostat' then
setPropertyLuaSprite('hitstatic', 'alpha', 0)
end
if tag == 'HS' then
setPropertyLuaSprite('hitstatic', 'alpha', 0.85)
end
end

function onStepHit()
if PuedeDrenar == true then
health = getProperty('health')
setProperty('health', getProperty('health')-HD);
end
end