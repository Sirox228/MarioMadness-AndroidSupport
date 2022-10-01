function onCreate()
	-- background shit

	makeAnimatedLuaSprite('bigolCloud', 'MX/MX_Background_Assets_Cloud', 400, -140);
	addAnimationByPrefix('bigolCloud', 'cloudChomp', 'Cloud instancia', 24, true);
	objectPlayAnimation('bigolCloud', 'cloudChomp', true);
	addLuaSprite('bigolCloud', false);
	setScrollFactor('bigolCloud', 0.8, 0.8);


	makeAnimatedLuaSprite('hill', 'MX/MX_Background_Assets_Mountain2', 680, 280);
	addAnimationByPrefix('hill', 'blinkorwink', 'Mountain instancia', 24, true);
	objectPlayAnimation('hill', 'blinkorwink', true);
	scaleObject('hill', 1.1, 1.1);
	addLuaSprite('hill', false);

	makeLuaSprite('floor', 'MX/MXBC1', -300, -180);
	addLuaSprite('floor', false);
	scaleObject('floor', 1.2, 1.2);

	makeLuaSprite('bgshit', 'MX/MXBC2', -380, -370);
	addLuaSprite('bgshit', false);
	scaleObject('bgshit', 1.4, 1.4);

	makeLuaSprite('lucas', 'MX/MX_Background_Assets_Luigi', 1500, 180);
	addLuaSprite('lucas', false);

	makeLuaSprite('wahoo', 'MX/waho', 300, 10);
	addLuaSprite('wahoo', true);
	setProperty('wahoo.visible', false);

	makeLuaSprite('black', 'MX/black', 0, 0);
	addLuaSprite('black', false);
	setObjectCamera('black', 'hud');
	scaleObject('black', 10, 10);
	doTweenAlpha('fadeb', 'black', 0, 0.1, 'linear')
	setProperty('black.visible', false);

	makeLuaSprite('opening', 'MX/mxscreen', 0, 0);
	addLuaSprite('opening', false);
	setObjectCamera('opening', 'other');
	scaleObject('opening', 3, 3);

	makeAnimatedLuaSprite('innocence', 'MX/MX_Assets_Laugh_v1', 230, -50);
	addAnimationByPrefix('innocence', 'doesntgetyoufar', 'MXLaugh instancia', 24, true);
	objectPlayAnimation('innocence', 'doesntgetyoufar', true);
	setObjectCamera('innocence', 'hud');
	addLuaSprite('innocence', false);
	doTweenAlpha('fadeb', 'innocence', 0, 0.1, 'linear')
	setProperty('innocence.visible', false);

	makeLuaSprite('filta', 'MX/126', 0, 0);
	addLuaSprite('filta', false);
	setObjectCamera('filta', 'other');

	makeAnimatedLuaSprite('static', 'MX/static', 0, 0);
	addAnimationByPrefix('static', 'bzzzz', 'static play', 24, true);
	objectPlayAnimation('static', 'bzzzz', true);
	setObjectCamera('static', 'other');
	doTweenAlpha('fadeb', 'static', 0.05, 0.1, 'linear')
	addLuaSprite('static', false);
	scaleObject('static', 10, 10);

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfvhs');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverMM');

end
function onCreatePost()
	setProperty('introSoundsSuffix', 'bruh')
end

function onSongStart()
	doTweenAlpha('byebye', 'opening', 0, 0.7, 'quintOut');
end
function onStepHit()
 if curStep == 1 then
	doTweenAlpha('fadeb', 'innocence', 0, 0.1, 'linear')
end
 if curStep == 3 then
	setProperty('innocence.visible', true);
end
 if curStep == 5 then
	doTweenAlpha('fadeb', 'black', 0, 0.1, 'linear')
end
if curStep == 7 then
	setProperty('black.visible', true);
end
 if curStep == 1367 then
	doTweenAlpha('fadeb', 'black', 1, 0.4, 'linear')
end
 if curStep == 1384 then
	doTweenAlpha('fadeb', 'innocence', 1, 1, 'linear')
end
 if curStep == 1407 then
	doTweenAlpha('fadeb', 'innocence', 0, 0.6, 'linear')
end
 if curStep == 1430 then
	setProperty('innocence.visible', false);
	setProperty('black.visible', false);
	setProperty('wahoo.visible', true);
	doTweenY('wahooy', 'wahoo', -350, 1.6, 'sineOut')
	doTweenX('wahoox', 'wahoo', 650, 1.6, 'sineOut')
end
 if curStep == 1432 then
	doTweenAlpha('fadeb', 'wahoo', 0, 0.6, 'linear')
end
end