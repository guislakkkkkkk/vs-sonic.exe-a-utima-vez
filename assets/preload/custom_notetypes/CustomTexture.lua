textura = '' 

function onCreate()
if songName == 'you-cant-run' then
textura = 'sonicUI/texturas/sonicPixel' 	
end
if songName == 'endless' then
textura = 'sonicUI/texturas/NotesMajin' 	
end
if songName == 'manual-blast' then
textura = 'sonicUI/texturas/Glitch' 	
end
end

function onCountdownStarted()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'CustomTexture' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', textura); 
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end