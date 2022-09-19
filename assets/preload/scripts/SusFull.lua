function onUpdate()
	for i = 0, getProperty('notes.length') - 1 do
		sus = getPropertyFromGroup('notes', i, 'isSustainNote');
		if sus then
			setPropertyFromGroup('notes', i, 'alpha', 1);
			setPropertyFromGroup('notes', i, 'multAlpha', 1);
		end
	end
end