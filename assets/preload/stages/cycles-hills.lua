function onCreate()

addLuaScript('data/tutorial/Splash')
addLuaScript('data/tutorial/Intro')
addLuaScript('data/tutorial/huds/LordXHud')

makeLuaSprite('hills1', 'exe/LordXStage/hills1', -400, -200);
addLuaSprite('hills1', false);
scaleObject('hills1', 2.05, 2) 

makeLuaSprite('floor', 'exe/LordXStage/floor', -400, -50);
addLuaSprite('floor', false);
scaleObject('floor', 1.05, 1) 

makeAnimatedLuaSprite('NotKnuckles_Assets_papuh', 'exe/LordXStage/NotKnuckles_Assets_papuh', 297,-115);
addAnimationByPrefix('NotKnuckles_Assets_papuh', 'NotKnuckles_Assets_papuh', 'Notknuckles', 24, true)
objectPlayAnimation('NotKnuckles_Assets_papuh', 'NotKnuckles_Assets_papuh', true);
addLuaSprite('NotKnuckles_Assets_papuh', false);
scaleObject('NotKnuckles_Assets_papuh', 1, 1)   

makeAnimatedLuaSprite('WeirdAssFlower_Assets', 'exe/LordXStage/WeirdAssFlower_Assets', -210, 20);
addAnimationByPrefix('WeirdAssFlower_Assets', 'WeirdAssFlower_Assets', 'flower', 24, true)
objectPlayAnimation('WeirdAssFlower_Assets', 'WeirdAssFlower_Assets', true);
addLuaSprite('WeirdAssFlower_Assets', false);
scaleObject('WeirdAssFlower_Assets', 0.8, 0.8)   

makeLuaSprite('Lord', 'exe/Lord', 0, 0);
addLuaSprite('Lord', false);
scaleObject('Lord', 1, 1) 
setObjectCamera('Lord', 'hud');
end