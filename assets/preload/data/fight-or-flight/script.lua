local bfx = 200;
local bfy = 0;
local zoomshit = 0;

function onCreate()

end

function onCountdownStarted()
doTweenColor('dad', 'dad', 'FFA099', 0.1, 'linear');
doTweenColor('boyfriend', 'boyfriend', 'FFA099', 0.1, 'linear');
doTweenColor('sonicisfuckingdead', 'sonicisfuckingdead', 'FF4043', 0.1, 'linear');

noteTweenX('egg0', 0, -1000, 0.01, 'quartInOut')
noteTweenX('egg1', 1, -1000, 0.01, 'quartInOut')
noteTweenX('egg2', 2, -1000, 0.01, 'quartInOut')
noteTweenX('egg3', 3, -1000, 0.01, 'quartInOut')
noteTweenX('tails0', 4, 415, 0.01, 'quartInOut')
noteTweenX('tails1', 5, 525, 0.01, 'quartInOut')
noteTweenX('tails2', 6, 635, 0.01, 'quartInOut')
noteTweenX('tails3', 7, 745, 0.01, 'quartInOut')
end

function onMoveCamera(focus)
if focus == 'dad' then
        setProperty('defaultCamZoom', 1)
    elseif focus == 'boyfriend' then
        setProperty('defaultCamZoom', 0.85)
    end
end

function onUpdate()
--fake 3d oooo
    zoomshit = (getProperty('camGame.zoom')/0.65);
    setCharacterX('boyfriend',bfx*zoomshit)
    setCharacterY('boyfriend',bfy*zoomshit)
    setProperty('boyfriend.scale.x',zoomshit)
    setProperty('boyfriend.scale.y',zoomshit)
end