local i =0

function onCreate()
	-- background shit

	makeLuaSprite('sky', 'Races/Race_Mario_BG2', -250, -250);
	addLuaSprite('sky', false);
	setScrollFactor('sky', 0.5, 0.5);
	scaleObject('sky', 1.2, 1.2);

	makeLuaSprite('hill', 'Races/Race_Mario_BG3', -450, -250);
	addLuaSprite('hill', false);
	setScrollFactor('hill', 0.5, 0.5);
	scaleObject('hill', 1.2, 1.2);

	makeAnimatedLuaSprite('drive', 'Races/Race_Mario_BG1', -320, -250);
	addAnimationByPrefix('drive', 'vroom', 'Ground', 24, true);
	objectPlayAnimation('drive', 'vroom', true);
	addLuaSprite('drive', false);
	scaleObject('drive', 1.3, 1.3);

	makeAnimatedLuaSprite('items', 'Races/cajamk', 600, -140);
	addAnimationByPrefix('items', 'speeen', 'cajamk random', 24, true);
	objectPlayAnimation('items', 'speeen', true);
	addLuaSprite('items', false);
	setObjectCamera('items', 'hud');

	makeLuaSprite('shell', 'Races/redshell', -100, 620);
	addLuaSprite('shell', false);
	setObjectCamera('shell', 'hud');

end
function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed
	
	setProperty('boyfriend.x', (math.sin(i/15)*75) + 850)
	xx = (math.sin(i/20)*75) - 350
end
function onCreatePost()
	setProperty('dad.x', 2000);
	doTweenAlpha('HUDgone', 'camHUD', 0, 0.1, linear);
	setProperty('introSoundsSuffix', 'bruh')
end
function onStepHit()
 if curStep == 8 then
	doTweenX('dadx', 'dad', -20, 0.8, 'sineOut')
end
 if curStep == 80 then
	doTweenAlpha('HUDgone', 'camHUD', 1, 0.3, linear);
end
 if curStep == 344 then
	doTweenY('itemsy', 'items', 50, 1, 'sineInOut')
end
 if curStep == 350 then
	doTweenX('shellx', 'shell', 280, 0.17, 'sineInOut')
end
 if curStep == 352 then
	addAnimationByPrefix('items', 'shell', 'cajamk shell', 24, true);
	objectPlayAnimation('items', 'shell', true);
        cameraShake('hud', 0.015, 0.1);
	playSound('shellhit', 1)
	setProperty('shell.x', -140);
end
 if curStep == 362 then
	doTweenX('shellx', 'shell', 280, 0.17, 'sineInOut')
end
 if curStep == 364 then
        cameraShake('hud', 0.015, 0.1);
	playSound('shellhit', 1)
	setProperty('shell.x', -140);
end
 if curStep == 378 then
	doTweenX('shellx', 'shell', 320, 0.17, 'sineInOut')
end
 if curStep == 380 then
        cameraShake('hud', 0.015, 0.1);
	playSound('shellhit', 1)
	setProperty('shell.x', -140);
end
 if curStep == 413 then
	doTweenX('shellx', 'shell', 450, 0.17, 'sineInOut')
end
 if curStep == 415 then
        cameraShake('hud', 0.015, 0.1);
	playSound('shellhit', 1)
	setProperty('shell.x', -100);
end
 if curStep == 478 then
	doTweenX('shellx', 'shell', 280, 0.17, 'sineInOut')
end
 if curStep == 480 then
	addAnimationByPrefix('items', 'BOO', 'cajamk ghost', 24, true);
	objectPlayAnimation('items', 'BOO', true);
        cameraShake('hud', 0.015, 0.1);
	playSound('shellhit', 1)
	setProperty('shell.x', -140);
end
 if curStep == 608 then
	addAnimationByPrefix('items', 'bobomb', 'cajamk bomb', 24, true);
	objectPlayAnimation('items', 'bobomb', true);
end
 if curStep == 751 then
	doTweenY('itemsy', 'items', -140, 1, 'sineInOut')
end
end