local Songs = {
        'too-slow',
        'you-cant-run',
        'triple-trouble',
        'cycles',
        'Forestall-Desire',
        'Too-Fest',
        'perdition'
    }


function checkList(list, value)
    for i=0,table.maxn(list) do
        if list[i]==value then return true end
    end
end

function onCountdownStarted()
if checkList(Songs, songName) == true then
    setProperty('scoreTxt.visible', false)

    makeLuaText('scoreTxt2', 'Score:0 | Combo Breaks:0 | Accuracy:0%', 1400, -58, getProperty('healthBarBG.y') + 36)
    setTextSize('scoreTxt2', 20)
    setTextBorder('scoreTxt2', 1, '000000')
    addLuaText('scoreTxt2')
    setObjectCamera('scoreTxt2', 'hud')
    setObjectOrder('scoreTxt2', 10)
end
end

function onRecalculateRating()
setTextString('scoreTxt2', 'Score:' .. score .. ' | Combo Breaks:' .. misses .. ' | Accuracy :' .. round(rating * 100, 2))
end

function round(x, n)
    n = math.pow(10, n or 0)
    x = x * n
    if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end
    return x / n
end
