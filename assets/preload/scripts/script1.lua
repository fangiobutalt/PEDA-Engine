function onStartCountdown()
    if getPropertyFromClass('ClientPrefs', 'optimizedMode', true) then
        triggerEvent('Change Character', 'dad', 'none')
        triggerEvent('Change Character', 'bf', 'none');
        triggerEvent('Change Character', 'gf', 'none');
        setProperty('camGame.alpha', 0);
    end
end