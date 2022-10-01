
function onCreate()
	-- background shit

	makeAnimatedLuaSprite('hall', 'Wario/wea_mala_ctm', -130, 15);
	addAnimationByPrefix('hall', 'zoom', 'fondo instancia', 24, true);
	objectPlayAnimation('hall', 'zoom', true);
	addLuaSprite('hall', false);
	scaleObject('hall', 1.6, 1.6);

	makeAnimatedLuaSprite('run', 'Wario/BoyFriend_Wario_Assets_v3_Body1', 445, 700);
	addAnimationByPrefix('run', 'stomp', 'BF Body Idle', 24, true);
	objectPlayAnimation('run', 'stomp', true);
	addLuaSprite('run', false);

	makeAnimatedLuaSprite('hands', 'Wario/BoyFriend_Wario_Assets_v3_Body2', 385, 660);
	addAnimationByPrefix('hands', 'AAAA', 'BF Body Idle', 24, true);
	objectPlayAnimation('hands', 'AAAA', true);
	addLuaSprite('hands', false);

	makeAnimatedLuaSprite('filter', 'Wario/Wario_Apparition_Overlay_v1', 0, 0);
	addAnimationByPrefix('filter', 'scary', 'WarioOverlay', 24, true);
	objectPlayAnimation('filter', 'scary', true);
	doTweenAlpha('fadeb', 'filter', 0, 0.1, 'linear')
	setObjectCamera('filter', 'other');
	addLuaSprite('filter', false);


	setObjectOrder('dadGroup', 1);
	setObjectOrder('boyfriendGroup', 3);

	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'bowlaugh');
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'bruh');
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'gameoverwario');

end

function onGameOver()
	gameOver = 1
	return Function_Continue;
end
function onCreatePost()
	doTweenX('scaleTweenX', 'dad.scale', 0, 0.1, 'elasticInOut');
	doTweenY('scaleTweenY', 'dad.scale', 0, 0.1, 'elasticInOut');
end
function onUpdate()
if gameOver == 1 then
	makeLuaSprite('gameover', 'Wario/wariodeath', 0, 0);
	addLuaSprite('gameover', true);
	setObjectCamera('gameover', 'other');
end
end
function onStepHit()
 if curStep == 1 then
	doTweenX('scaleTweenX', 'dad.scale', 1.2, 1.2, 'sineInOut');
	doTweenY('scaleTweenY', 'dad.scale', 1.2, 1.2, 'sineInOut');
end
 if curStep == 384 then
	doTweenAlpha('HUDgone', 'camHUD', 0, 1.2, linear);
end
 if curStep == 400 then
	doTweenAlpha('fadeb', 'filter', 0.9, 10.6, linear);
end
 if curStep == 512 then
	setProperty('filter.visible', false);
	doTweenAlpha('HUDgone', 'camHUD', 1, 0.1, linear);
end
end