function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'WiggleIntensDec' then
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false);
			end
		end
	end
end


function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'WiggleIntensDec' then	
triggerEvent('WiggleNotes', '60', '55');
runTimer('WiggleDec1', 0.1);
runTimer('WiggleDec2', 0.3);
runTimer('WiggleDec3', 0.5);
runTimer('WiggleDec4', 0.8);
runTimer('WiggleDec5', 0.9);
runTimer('WiggleDec6', 1);
end
end	

function opponentNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'WiggleIntensDec' then	
triggerEvent('WiggleNotes', '60', '55');
runTimer('WiggleDec1', 0.1);
runTimer('WiggleDec2', 0.3);
runTimer('WiggleDec3', 0.5);
runTimer('WiggleDec4', 0.8);
runTimer('WiggleDec5', 0.9);
runTimer('WiggleDec6', 1);
end
end	

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'WiggleDec1' then
triggerEvent('WiggleNotes', '50', '45');
end
if tag == 'WiggleDec2' then
triggerEvent('WiggleNotes', '40', '35');
end
if tag == 'WiggleDec3' then
triggerEvent('WiggleNotes', '30', '25');
end
if tag == 'WiggleDec4' then
triggerEvent('WiggleNotes', '20', '15');
end
if tag == 'WiggleDec5' then
triggerEvent('WiggleNotes', '10', '5');
end
if tag == 'WiggleDec6' then
triggerEvent('WiggleNotes', '0', '0');
end
end