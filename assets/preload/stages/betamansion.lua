function onCreate()
	-- background shit

	makeLuaSprite('sky', 'LuigiBeta/Beta_Luigi_BG_Assets_2', -450, -200);
	addLuaSprite('sky', false);
	setScrollFactor('sky', 0.7, 0.7);

	makeLuaSprite('mansion', 'LuigiBeta/Beta_Luigi_BG_Assets_1', -460, -185);
	addLuaSprite('mansion', false);

	makeLuaSprite('windows', 'LuigiBeta/Beta_Luigi_BG_Assets_3', 300, 115);
	addLuaSprite('windows', false);

	makeAnimatedLuaSprite('rain', 'LuigiBeta/Beta_Luigi_Rain_V1', 0, 0);
	addAnimationByPrefix('rain', 'droplets', 'RainLuigi', 12, true);
	objectPlayAnimation('rain', 'droplets', true);
	setObjectCamera('rain', 'other');
	setProperty('rain.visible', false);
	addLuaSprite('rain', true);

	makeAnimatedLuaSprite('hung', 'LuigiBeta/Beta_BF_Hang', 350, -500);
	addAnimationByPrefix('hung', 'shadowGlitch', 'BFHang', 36, true);
	objectPlayAnimation('hung', 'shadowGlitch', true);
	setObjectCamera('hung', 'hud');
	setProperty('hung.visible', false);
	scaleObject('hung', 1.5, 1.5);
	addLuaSprite('hung', true);

	makeLuaSprite('filta', 'LuigiBeta/126', 0, 0);
	addLuaSprite('filta', false);
	setObjectCamera('filta', 'other');

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfbeta');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverMM');

end
function onCreatePost()
	setProperty('introSoundsSuffix', 'bruh')
end
function onStepHit()
if curStep == 704 then
	setProperty('hung.visible', true);
	doTweenAlpha('fadeb', 'hung', 0, 0.8, 'quintOut');
end
if curStep == 712 then
	setProperty('hung.visible', false);
	doTweenAlpha('fadeb', 'hung', 1, 0.1, 'quintOut');
end
if curStep == 1184 then
	setProperty('hung.visible', true);
	doTweenAlpha('fadeb', 'hung', 0, 0.8, 'quintOut');
end
if curStep == 1192 then
	setProperty('hung.visible', false);
	doTweenAlpha('fadeb', 'hung', 1, 0.1, 'quintOut');
end
 if curStep == 960 then
	setProperty('rain.visible', true);
end
end