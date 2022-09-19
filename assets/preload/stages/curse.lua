function onCreate()

	makeLuaSprite('cielo', 'exe/curse/cielo', -600, -300);
	setScrollFactor('cielo', 0.3, 0.3);
	scaleLuaSprite('cielo', 1.9, 1.5);
	addLuaSprite('cielo', false);

  makeLuaSprite('mar', 'exe/curse/mar', -600, -300);
  setScrollFactor('mar', 0.7, 0.7);
  scaleLuaSprite('mar', 1.9, 1.5);
  addLuaSprite('mar', false);

  makeLuaSprite('piso', 'exe/curse/piso', -600, -250);
  setScrollFactor('piso', 1, 1);
  scaleLuaSprite('piso', 1.9, 1.55);
  addLuaSprite('piso', false);

    makeAnimatedLuaSprite('Curse_Dialogue', 'exe/curse/Curse_Dialogue', defaultOpponentX+50, defaultOpponentY+10);
    addAnimationByPrefix('Curse_Dialogue', 'Curse_Dialogue1', 'Femboy hablando 1', 24, false);  
    addAnimationByPrefix('Curse_Dialogue', 'Curse_Dialogue2', 'Femboy hablando 2', 24, false);  
    objectPlayAnimation('Curse_Dialogue', 'Curse_Dialogue1', true)
    scaleLuaSprite('Curse_Dialogue', 1.2, 1.2);
    setProperty('Curse_Dialogue.alpha', 0);
    addLuaSprite('Curse_Dialogue', true);

  makeLuaSprite('over', 'exe/xterion/over', -600, -400);
  setScrollFactor('over', 1, 1);
  scaleLuaSprite('over', 0.6, 1.5);
  addLuaSprite('over', true);
  setBlendMode('over', 'SCREEN')
  setProperty('over.alpha', 0.0000000001)

  makeLuaSprite('sombras', 'exe/curse/sombras', -900, -250);
  setScrollFactor('sombras', 1, 1);
  scaleLuaSprite('sombras', 2.2, 1.55);
  addLuaSprite('sombras', true);
  setProperty('sombras.alpha', 1)
  setBlendMode('sombras', 'MULTIPLY')

	setProperty('defaultCamZoom', 0.65) 
end


function onCountdownStarted()
doTweenColor('dad', 'dad', 'C3C3C3', 1, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'C3C3C3', 1, 'linear');
end

local xx = 500;
local yy = 450;
local xx2 = 500;
local yy2 = 450;
local ofs = 20;
local followchars = true;
local del = 0;
local del2 = 0;

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'anim1' then
xx = -50;
yy = 350;

doTweenAlpha('over','over', 1, 1, 'quadInOut');

setProperty('defaultCamZoom', 1.25) 

doTweenColor('mar', 'mar', '434343', 0.5, 'linear');
doTweenColor('cielo', 'cielo', '434343', 0.5, 'linear');
doTweenColor('piso', 'piso', '434343', 0.5, 'linear');
doTweenColor('boyfriend', 'boyfriend', '434343', 0.5, 'linear');

setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0.75)
objectPlayAnimation('Curse_Dialogue', 'Curse_Dialogue1', true)
setProperty('Curse_Dialogue.alpha', 1);
setProperty('dad.visible', false);
end
if value1 == 'anim2' then
xx = -50;
yy = 350; 

runTimer('bfcamina', 1.1);

doTweenAlpha('over','over', 1, 1, 'quadInOut');

setProperty('defaultCamZoom', 1.25) 

doTweenColor('mar', 'mar', '434343', 0.5, 'linear');
doTweenColor('cielo', 'cielo', '434343', 0.5, 'linear');
doTweenColor('piso', 'piso', '434343', 0.5, 'linear');
doTweenColor('boyfriend', 'boyfriend', '434343', 0.5, 'linear');
  
setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0.75)
objectPlayAnimation('Curse_Dialogue', 'Curse_Dialogue2', true)
setProperty('Curse_Dialogue.alpha', 1);
setProperty('dad.visible', false);
end
if value1 == 'noanim' then
xx = 500;
yy = 450;

doTweenAlpha('over','over', 0, 1, 'quadInOut');

setProperty('defaultCamZoom', 0.65) 

doTweenColor('mar', 'mar', 'FFFFFF', 0.5, 'linear');
doTweenColor('cielo', 'cielo', 'FFFFFF', 0.5, 'linear');
doTweenColor('piso', 'piso', 'FFFFFF', 0.5, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 0.5, 'linear');

setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
setProperty('dad.visible', true);
setProperty('Curse_Dialogue.alpha', 0);
end
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'bfcamina' then
setProperty('boyfriend.x',getProperty('boyfriend.x') - 300)
end 
end

function onUpdate()
  if del > 0 then
    del = del - 1
  end
  if del2 > 0 then
    del2 = del2 - 1
  end
    if followchars == true then
if mustHitSection == false then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
      if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end


function MM1()
noteTweenY('tetas1', 0, -1-10, 0.05, 'backInOut');
noteTweenY('tetas2', 1, -1-10, 0.05, 'backInOut');
noteTweenY('tetas3', 2, -1+10, 0.05, 'backInOut');
noteTweenY('tetas4', 3, -1+10, 0.05, 'backInOut');

noteTweenY('tits1', 4,  -1+10, 0.05, 'backInOut');
noteTweenY('tits2', 5,  -1+10, 0.05, 'backInOut');
noteTweenY('tits3', 6,  -1-10, 0.05, 'backInOut');
noteTweenY('tits4', 7,  -1-10, 0.05, 'backInOut');
end

function MM2()
noteTweenY('tetas1', 0, -1+10, 0.05, 'backInOut');
noteTweenY('tetas2', 1, -1+10, 0.05, 'backInOut');
noteTweenY('tetas3', 2, -1-10, 0.05, 'backInOut');
noteTweenY('tetas4', 3, -1-10, 0.05, 'backInOut');

noteTweenY('tits1', 4,  -1-10, 0.05, 'backInOut');
noteTweenY('tits2', 5, -1-10, 0.05, 'backInOut');
noteTweenY('tits3', 6, -1+10, 0.05, 'backInOut');
noteTweenY('tits4', 7, -1+10, 0.05, 'backInOut');
end