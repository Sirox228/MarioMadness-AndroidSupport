function onCreate()
	-- background shit
	makeLuaSprite('wall', 'IHY/Luigi_IHY_Background_Assets_ete_sech', -340, 90);
	addLuaSprite('wall', false);
	setScrollFactor('wall', 0.5, 0.5);
	scaleObject('wall', 1.1, 1.1);

	makeAnimatedLuaSprite('torch', 'IHY/Luigi_IHY_Background_Assets_Candle', -80, 100);
	addAnimationByPrefix('torch', 'FireCrackle', 'fuegoaaaaaaaaa instancia', 36, true);
	objectPlayAnimation('torch', 'FireCrackle', true);
	addLuaSprite('torch', false);
	setScrollFactor('torch', 0.5, 0.5);

	makeAnimatedLuaSprite('torch2', 'IHY/Luigi_IHY_Background_Assets_Candle', 1200, 100);
	addAnimationByPrefix('torch2', 'FireCrackle', 'fuegoaaaaaaaaa instancia', 36, true);
	objectPlayAnimation('torch2', 'FireCrackle', true);
	setScrollFactor('torch2', 0.5, 0.5);
	addLuaSprite('torch2', false);

	makeLuaSprite('blood', 'IHY/Luigi_IHY_Background_Assets_ete_sech_v2', 1250, 400);
	setScrollFactor('blood', 0.5, 0.5);
	scaleObject('blood', 0.9, 0.9);
	setProperty('blood.visible', false);
	addLuaSprite('blood', false);

	makeAnimatedLuaSprite('boo', 'IHY/Luigi_IHY_Background_Assets_Boo', 1000, 300);
	addAnimationByPrefix('boo', 'boo bop', 'Boo', 36, true);
	objectPlayAnimation('boo', 'boo bop', true);
	setScrollFactor('boo', 0.6, 0.6);
	setProperty('boo.visible', false);
	addLuaSprite('boo', false);

	makeAnimatedLuaSprite('boo2', 'IHY/Luigi_IHY_Background_Assets_Boo', 1150, 100);
	addAnimationByPrefix('boo2', 'boo bop', 'Boo', 36, true);
	objectPlayAnimation('boo2', 'boo bop', true);
	setProperty('boo2.visible', false);
	setScrollFactor('boo2', 0.6, 0.6);
	addLuaSprite('boo2', false);

	makeAnimatedLuaSprite('boo3', 'IHY/Luigi_IHY_Background_Assets_Boo', 300, 200);
	addAnimationByPrefix('boo3', 'boo bop', 'Boo', 36, true);
	objectPlayAnimation('boo3', 'boo bop', true);
	setScrollFactor('boo3', 0.6, 0.6);
	setProperty('boo3.visible', false);
	setProperty('boo3.flipX', true);
	addLuaSprite('boo3', false);

	makeLuaSprite('floor', 'IHY/Luigi_IHY_Background_Assets_Floor', -850, -90);
	addLuaSprite('floor', false);

	makeAnimatedLuaSprite('drownedMario', 'IHY/Luigi_IHY_Background_Assets_DrownedMario', -350, 410);
	addAnimationByPrefix('drownedMario', 'grabber', 'DrownedMarioGrab', 24, true)
	addAnimationByPrefix('drownedMario', 'marioBop', 'DrownedMarioIdle', 24, true);
	scaleObject('drownedMario', 1.1, 1.1);
	setProperty('drownedMario.visible', false);
	addLuaSprite('drownedMario', false);

	makeAnimatedLuaSprite('drownedMario2', 'IHY/Luigi_IHY_Background_Assets_DrownedMario', 1050, 410);
	addAnimationByPrefix('drownedMario2', 'grabber', 'DrownedMarioGrab', 24, true)
	addAnimationByPrefix('drownedMario2', 'marioBop', 'DrownedMarioIdle', 24, true);
	scaleObject('drownedMario2', 1.1, 1.1);
	setProperty('drownedMario2.visible', false);
	addLuaSprite('drownedMario2', false);

	makeAnimatedLuaSprite('boil', 'IHY/Luigi_IHY_Background_Assets_Lava', -10, 800);
	addAnimationByPrefix('boil', 'bubblin', 'Lava', 12, true);
	objectPlayAnimation('boil', 'bubblin', true);
	setObjectCamera('boil', 'hud');
	addLuaSprite('boil', true);

	makeLuaSprite('black', 'IHY/black', 0, 0);
	addLuaSprite('black', false);
	setObjectCamera('black', 'other');
	scaleObject('black', 10, 10);

	makeLuaSprite('opening', 'IHY/hatestart', 580, 350);
	addLuaSprite('opening', false);
	setObjectCamera('opening', 'other');
	scaleObject('opening', 2, 2);

	makeLuaSprite('burning', 'IHY/asset_deg', -800, -400);
	addLuaSprite('burning', true);
	scaleObject('burning', 4, 4);
	setObjectCamera('burning', 'hud');

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfnew');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverMM');

end
function onCreatePost()
	playSound('smw_coin', 1)
	setProperty('introSoundsSuffix', 'bruh')
end
function onSongStart()
	doTweenAlpha('byebye', 'black', 0, 0.7, 'quintOut');
	setProperty('opening.visible', false);
end
function onStepHit()
 if curStep == 399 then
	doTweenY('boily', 'boil', 600, 0.2, 'sineInOut')
end
 if curStep == 912 then
	setProperty('boo3.visible', true);
	setProperty('boo2.visible', true);
	setProperty('boo.visible', true);
end
 if curStep == 976 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 980 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 984 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 988 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 992 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 996 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 1000 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1004 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 1008 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1012 then
	doTweenY('boily', 'boil', 650, 0.8, 'sineInOut')
end
 if curStep == 1016 then
	doTweenY('boily', 'boil', 550, 0.8, 'sineInOut')
end
 if curStep == 1020 then
	doTweenY('boily', 'boil', 650, 0.8, 'sineInOut')
end
 if curStep == 1024 then
	doTweenY('boily', 'boil', 550, 0.8, 'sineInOut')
end
 if curStep == 1028 then
	doTweenY('boily', 'boil', 640, 0.8, 'sineInOut')
end
 if curStep == 1032 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1036 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 1040 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1044 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 1048 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1052 then
	doTweenY('boily', 'boil', 670, 0.8, 'sineInOut')
end
 if curStep == 1056 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1060 then
	doTweenY('boily', 'boil', 620, 0.8, 'sineInOut')
end
 if curStep == 1064 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1068 then
	doTweenY('boily', 'boil', 650, 0.8, 'sineInOut')
end
 if curStep == 1072 then
	doTweenY('boily', 'boil', 550, 0.8, 'sineInOut')
end
 if curStep == 1076 then
	doTweenY('boily', 'boil', 620, 0.8, 'sineInOut')
end
 if curStep == 1080 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1084 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 1088 then
	doTweenY('boily', 'boil', 500, 0.8, 'sineInOut')
end
 if curStep == 1092 then
	doTweenY('boily', 'boil', 630, 0.8, 'sineInOut')
end
 if curStep == 1096 then
	doTweenY('boily', 'boil', 520, 0.8, 'sineInOut')
end
 if curStep == 1098 then
	setProperty('blood.visible', true);
end
 if curStep == 1100 then
	doTweenY('boily', 'boil', 600, 0.8, 'sineInOut')
end
 if curStep == 1104 then
	doTweenY('boily', 'boil', 600, 0.2, 'sineInOut')
end
 if curStep == 1105 then
	doTweenY('boily', 'boil', 430, 7, 'sineInOut')
end
 if curStep == 1232 then
	doTweenY('boily', 'boil', 600, 1.6, 'sineInOut')
end
 if curStep == 1262 then
	setProperty('drownedMario.visible', true);
	objectPlayAnimation('drownedMario', 'grabber', true)
end
 if curStep == 1283 then
	objectPlayAnimation('drownedMario', 'grabber', false)
	objectPlayAnimation('drownedMario', 'marioBop', true);
	setProperty('drownedMario.x', -300);
	setProperty('drownedMario.y', 435);
end
 if curStep == 1295 then
	setProperty('drownedMario2.visible', true);
end
 if curStep == 1296 then
	objectPlayAnimation('drownedMario2', 'grabber', true)
end
 if curStep == 1317 then
	objectPlayAnimation('drownedMario2', 'grabber', false)
	objectPlayAnimation('drownedMario2', 'marioBop', true);
	setProperty('drownedMario2.x', 1100);
	setProperty('drownedMario2.y', 435);
end
 if curStep == 1360 then
	doTweenY('boily', 'boil', 560, 0.2, 'sineInOut')
end
 if curStep == 1376 then
	doTweenY('boily', 'boil', 520, 0.2, 'sineInOut')
end
 if curStep == 1392 then
	doTweenY('boily', 'boil', 480, 0.2, 'sineInOut')
end
 if curStep == 1408 then
	doTweenY('boily', 'boil', 440, 0.2, 'sineInOut')
end
 if curStep == 1416 then
	doTweenY('boily', 'boil', 430, 0.2, 'sineInOut')
end
 if curStep == 1424 then
	doTweenY('boily', 'boil', 800, 0.2, 'sineInOut')
end
end