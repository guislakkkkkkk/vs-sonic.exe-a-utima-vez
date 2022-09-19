function onCreate()

makeLuaSprite('black', 'exe/BiColorTB/black', 297.5+137, 20+5)
addLuaSprite('black', false)
scaleObject('black', 1.2, .065)
setObjectCamera('black', 'hud')

makeLuaSprite('color1', 'exe/BiColorTB/color1', 303+137, 25.25+5)
addLuaSprite('color1', false)
scaleObject('color1', 1.165, .035)
setObjectCamera('color1', 'hud')

makeLuaSprite('color2', 'exe/BiColorTB/color2', 303+137, 25.25+5)
addLuaSprite('color2', false)
setObjectCamera('color2', 'hud')
scaleObject('color2', 1.165, .0325)
setProperty('color2.alpha', 0.0001) 

end 

function onCreatePost()	
setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)

if downscroll then 
setProperty('black.y', 685)
setProperty('color1.y', 690)
setProperty('color2.y', 690)
end
end

function onCountdownStarted()
doTweenColor('color1', 'color1', 'FF0000', 0.01, 'linear');
doTweenColor('color2', 'color2', '000000', 0.01, 'linear');
end

function onUpdate()
scaleObject('color2', 1.165 * getProperty("songPercent"), .035)
end 