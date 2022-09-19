
function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'No Anim Space' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Ring-Notes'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true);
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0'); --Default value is: 0.0475, health lost on miss
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); 
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType)
	if noteType == 'No Anim Space' then
		playSound("Ring", 1)
		-- put something here if you want
	end
end

function opponentNoteHit(id, direction, noteType)
	if noteType == 'No Anim Space' then
		playSound("Ring", 1)
	end
end
