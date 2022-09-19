function onCreate()

addLuaScript('data/tutorial/healthbars/healthbarMajin')
addLuaScript('data/tutorial/COMPLEMENTO')
addLuaScript('data/tutorial/Intro')

makeLuaSprite('sonicFUNsky', 'exe/FunInfiniteStage/sonicFUNsky', -563, -305);
addLuaSprite('sonicFUNsky', false);
setScrollFactor('sonicFUNsky', 0.5, 0.5);
scaleObject('sonicFUNsky', 1, 1) 

makeAnimatedLuaSprite('Majins2', 'exe/FunInfiniteStage/Majins2', -100, -311);
addAnimationByPrefix('Majins2', 'Majins2', 'Majins2', 24, true)
objectPlayAnimation('Majins2', 'Majins2', true);
setScrollFactor('Majins2', 0.5, 0.5);
addLuaSprite('Majins2', false);
scaleObject('Majins2', 1, 1) 

setProperty('cameraSpeed', 1.3)

makeAnimatedLuaSprite('Majins3', 'exe/FunInfiniteStage/Majins2', 1400, -311);
addAnimationByPrefix('Majins3', 'Majins3', 'Majins2', 24, true)
setScrollFactor('Majins3', 0.5, 0.5);
objectPlayAnimation('Majins3', 'Majins3', true);
addLuaSprite('Majins3', false);
scaleObject('Majins3', 1, 1) 

makeAnimatedLuaSprite('Majins1', 'exe/FunInfiniteStage/Majins1', -450, -382);
addAnimationByPrefix('Majins1', 'Majins1', 'Majins1', 24, true)
setScrollFactor('Majins1', 0.75, 0.75);
objectPlayAnimation('Majins1', 'Majins1', true);
addLuaSprite('Majins1', false);
scaleObject('Majins1', 1.25, 1.25)  

makeLuaSprite('Bush 1', 'exe/FunInfiniteStage/Bush 1', -570, 343);
addLuaSprite('Bush 1', false);
scaleObject('Bush 1', 1.2, 1.2) 

makeLuaSprite('floor BG', 'exe/FunInfiniteStage/floor BG', -650, 443);
addLuaSprite('floor BG', false);
scaleObject('floor BG', 1.1, 1) 

if not songName == 'endless-moyai' then

makeAnimatedLuaSprite('majin FG1', 'exe/FunInfiniteStage/majin FG1', 1450, 550);
addAnimationByPrefix('majin FG1', 'majin FG1', 'majin FG1', 24, true)
objectPlayAnimation('majin FG1', 'majin FG1', true);
addLuaSprite('majin FG1', true);
scaleObject('majin FG1', 1, 1)  

makeAnimatedLuaSprite('majin FG2', 'exe/FunInfiniteStage/majin FG2', -680, 550);
addAnimationByPrefix('majin FG2', 'majin FG2', 'majin FG2', 24, true)
objectPlayAnimation('majin FG2', 'majin FG2', true);
addLuaSprite('majin FG2', true);
scaleObject('majin FG2', 1, 1)  
end
end 

function onCreatePost()
doTweenColor('timeBar', 'timeBar', '0000BA', 1, 'linear');
end