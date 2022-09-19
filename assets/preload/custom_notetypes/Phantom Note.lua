function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phantom Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PHANTOMNOTE_assets'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end

PuedeDrenar = false;
HD = 0.003;

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'Phantom Note' then
Aumento()
runTimer('Detener', 20, 1);
PuedeDrenar = true;
end
end

function Aumento()
HD = HD + 0.0023
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'Detener' then
PuedeDrenar = false
HD = 0.003;
end
end

function onStepHit()
if PuedeDrenar == true then
health = getProperty('health')
setProperty('health', getProperty('health')-HD);
end
end