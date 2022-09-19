function onCountdownStarted()
        for i=0,4,1 do
            setPropertyFromGroup('opponentStrums', i, 'texture', 'sonicUI/texturas/Faker_assets')
        end
        for i = 0, getProperty('unspawnNotes.length')-1 do
            if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'sonicUI/texturas/Faker_assets'); --Change texture
        end
    end
end