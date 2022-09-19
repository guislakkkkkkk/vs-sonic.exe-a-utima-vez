local PermitirParticulas = false

function onEvent(name,value1,value2)
if name == 'Asbel' then
if value1 == 'fase3' then
PermitirParticulas = true
spawnParticles();
end
end
end

function onUpdate(elapsed)
if PermitirParticulas == true then
	particleThink();
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'particleSpawn' and PermitirParticulas == true then
		particleTimer();
	end

	if tag == 'particleSpawnFRONT' and PermitirParticulas == true then
		particleTimerFront();
	end
end

-- particle logic
particleCount = 0;
particleLimit = 90;
particleTime = 2.5;

function spawnParticles()
	for i = 1, particleLimit do
		tag = ('pixelParticle'..i);
		makeLuaSprite(tag, 'exe/particulas/particulaHX', -10000, -900);
		addLuaSprite(tag, false);
		setBlendMode(tag, 'add');
	end
	runTimer('particleSpawn', 0.1, 0);

	for i = 1, particleLimit do
		tag = ('pixelParticlefront'..i);
		makeLuaSprite(tag, 'exe/particulas/particulaHX', -10000, -900);
		addLuaSprite(tag, true);
	end
	runTimer('particleSpawnFRONT', 0.2, 0);
end

function particleTimer()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end

	tag = ('pixelParticle'..particleCount);
	setProperty(tag..'.scale.x', getRandomFloat(1000, 1500) / 1000);
	setProperty(tag..'.x', getRandomFloat(-500, 2000));
	velX = getRandomFloat(-50, 50);
	setProperty(tag..'.velocity.x', velX);
	setProperty(tag..'.scale.y', getRandomFloat(1000, 1500) / 1000);
	setProperty(tag..'.y', getRandomFloat(100, 1000));
	setProperty(tag..'.velocity.y', getRandomFloat(-75, -150));
	setProperty(tag..'.alpha', 1);

	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');
	doTweenX(tag..'ScaleX', tag..'.scale', 0, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 0, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -0.75, particleTime/2, 'linear');
end

function particleTimerFront()
	particleCount = particleCount + 1;
	if particleCount > particleLimit then
		particleCount = 1;
	end

	tag = ('pixelParticlefront'..particleCount);
	setProperty(tag..'.scale.x', getRandomFloat(1000, 1500) / 300);
	setProperty(tag..'.x', getRandomFloat(-700, 2200));
	velX = getRandomFloat(-50, 50);
	setProperty(tag..'.velocity.x', velX);
	setProperty(tag..'.scale.y', getRandomFloat(1000, 1500) / 300);
	setProperty(tag..'.y', getRandomFloat(300, 1200));
	setProperty(tag..'.velocity.y', getRandomFloat(-75, -150));
	setProperty(tag..'.alpha', 1);

	doTweenAlpha(tag..'AlphaTween', tag, 0, particleTime, 'linear');
	doTweenX(tag..'ScaleX', tag..'.scale', 0, particleTime, 'linear');
	doTweenY(tag..'ScaleY', tag..'.scale', 0, particleTime, 'linear');
	doTweenX(tag..'SpeedX', tag..'.velocity', velX * -0.75, particleTime/2, 'linear');
end