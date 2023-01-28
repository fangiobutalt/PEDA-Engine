-- Script by Fang (me)

local paused = 0
local button_X = 1150
local button_Y = 582
local buttonimage = 'buttongames'

function onCreate()
    makeAnimatedLuaSprite('buttongames', 'buttongames', button_X, button_Y);
    setObjectCamera('buttongames', 'camHud')
    addAnimationByPrefix('buttongames', 'nonPress', 'nonPress', 12, false)
    addAnimationByPrefix('buttongames', 'Pressed', 'Pressed', 12, false);
    addLuaSprite('buttongames', false)
    objectPlayAnimation('buttongames', 'nonPress', false);
end
function onUpdate(elapsed)
      if (getMouseX('hud') > getProperty('buttongames.x') and getMouseY('hud') > getProperty('buttongames.y') and getMouseX('hud') < getProperty('buttongames.x') + getProperty('buttongames.width') and getMouseY('hud') < getProperty('buttongames.y') + getProperty('buttongames.height')) and mouseClicked('left') or keyJustPressed('space') then
        setProperty('buttongames.alpha', 1)
        runTimer('buttonanim', 0.1)
        objectPlayAnimation('buttongames', 'nonPress', false);
        objectPlayAnimation('buttongames', 'Pressed', false)
        playSound('hey', 1);
        characterPlayAnim('boyfriend', 'hey', false)
      end
 end

function onTimerCompleted(tag, loops, loopsLeft)
        objectPlayAnimation('buttongames', 'nonPress', false);
end