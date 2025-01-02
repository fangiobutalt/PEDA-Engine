function onCreate()
addCharacterToList('bf-pixel-hey', 'bf');
end
function onEvent(name, value1, value2)
	if name == 'pixelHey' then
    triggerEvent('Change Character', 'bf', 'bf-pixel-hey');
    playAnim('boyfriend', 'hey', true, false, 0)
    runTimer('bfAnim', 0.5);
	end
end

function onTimerCompleted(tag)
    if tag == 'bfAnim' then
        triggerEvent('Change Character', 'bf', 'bf-pixel');
    end
end
