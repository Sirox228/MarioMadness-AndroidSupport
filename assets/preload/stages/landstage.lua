function onStartSong()

setPropertyFromClass('flixel.FlxG','sound.music.volume',1)

end

function onCreate()
	-- background shit

	makeLuaSprite('sky', 'EXE2/Nubes', -250, 0);
	addLuaSprite('sky', false);
	setScrollFactor('sky', 0.7, 0.7);
	scaleObject('sky', 2, 2);
	setProperty('sky.antialiasing', false);

	makeAnimatedLuaSprite('evilsky', 'EXE2/Mario_Phase2_Background_Assets_Static', -50, 0);
	addAnimationByPrefix('evilsky', 'scary', 'Estatica papu instancia', 24, true);
	objectPlayAnimation('evilsky', 'scary', true);
	scaleObject('evilsky', 2, 2);
	addLuaSprite('evilsky', false);
	setProperty('evilsky.antialiasing', false);
	setProperty('evilsky.visible', false);

	makeLuaSprite('watah', 'EXE2/Nubes2', -250, 600);
	addLuaSprite('watah', false);
	setScrollFactor('watah', 0.7, 0.7);
	scaleObject('watah', 2, 2);
	setProperty('evilwatah.antialiasing', false);
	setProperty('watah.antialiasing', false);

	makeLuaSprite('evilwatah', 'EXE2/weaspuki2', -250, 600);
	addLuaSprite('evilwatah', false);
	scaleObject('evilwatah', 2, 2);
	setProperty('evilwatah.visible', false);
	setProperty('evilwatah.antialiasing', false);

	makeLuaSprite('blocks', 'EXE2/Nubes4', 500, 200);
	addLuaSprite('blocks', false);
	scaleObject('blocks', 2.7, 2.7);
	setProperty('blocks.antialiasing', false);

	makeLuaSprite('grass', 'EXE2/Nubes3', -250, 740);
	addLuaSprite('grass', false);
	scaleObject('grass', 2, 2);

	makeLuaSprite('evilgrass', 'EXE2/weaspuki1', -250, 740);
	addLuaSprite('evilgrass', false);
	scaleObject('evilgrass', 2, 2);
	setProperty('evilgrass.visible', false);
	setProperty('evilgrass.antialiasing', false);

	makeAnimatedLuaSprite('filter', 'EXE2/Mario_Phase2_Background_Assets_Overlay', 0, 0);
	addAnimationByPrefix('filter', 'aaaa', 'aeiuo instancia', 24, true);
	objectPlayAnimation('filter', 'aaaa', true);
	setObjectCamera('filter', 'other');
	doTweenAlpha('fadeb', 'filter', 0.2, 0.1, 'linear')
	scaleObject('filter', 2, 2);
	addLuaSprite('filter', false);
	setProperty('filter.visible', false);

        makeLuaSprite('barbot','',0,850)
        makeGraphic('barbot',1280,100,'000000')
        addLuaSprite('barbot',true)
        scaleObject('barbot', 2, 2);
        setScrollFactor('barbot',0,0)
        setObjectCamera('barbot','hud')

        makeLuaSprite('bartop','',0,-300)
        makeGraphic('bartop',1280,100,'000000')
        addLuaSprite('bartop',true)
        scaleObject('bartop', 2, 2);
        setScrollFactor('bartop',0,0)
        setObjectCamera('bartop','hud')


	setObjectOrder('gfGroup', 4);
	setPropertyFromClass('flixel.FlxG','sound.music.volume',0)
	setProperty('skipCountdown', false)
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfgb');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverMM'); 
end
function onCreatePost()
	setProperty('introSoundsSuffix', 'bruh')
end
function onStepHit()
 if curStep == 448 then
	setProperty('evilsky.visible', true);
	setProperty('evilwatah.visible', true);
	setProperty('evilgrass.visible', true);
	setProperty('filter.visible', true);
	setProperty('sky.visible', false);
	setProperty('watah.visible', false);
	setProperty('grass.visible', false);
end
 if curStep == 448 then
end
 if curStep == 719 then
	doTweenY('gfy', 'gf', 200, 1, 'sineInOut')

end
 if curStep == 1102 then
        setObjectCamera('bartop','other')
        setObjectCamera('barbot','other')
	doTweenY('bartopy', 'bartop', 0, 0.2, 'sineInOut')
	doTweenY('barboty', 'barbot', 550, 0.2, 'sineInOut')
end
 if curStep == 1103 then
	doTweenAlpha('HUDgone', 'camHUD', 0, 0.2, linear);
end
 if curStep == 1119 then
        setObjectCamera('bartop','hud')
        setObjectCamera('barbot','hud')
	doTweenY('bartopy', 'bartop', -300, 0.2, 'sineInOut')
	doTweenY('barboty', 'barbot', 850, 0.2, 'sineInOut')
	doTweenAlpha('HUDgone', 'camHUD', 1, 0.2, linear);
end
 if curStep == 1374 then
	doTweenY('bartopy', 'bartop', -200, 0.2, 'sineInOut')
	doTweenY('barboty', 'barbot', 750, 0.2, 'sineInOut')
end
 if curStep == 1390 then
	doTweenY('bartopy', 'bartop', -100, 0.2, 'sineInOut')
	doTweenY('barboty', 'barbot', 650, 0.2, 'sineInOut')
end
 if curStep == 1406 then
	doTweenY('bartopy', 'bartop', -50, 0.2, 'sineInOut')
	doTweenY('barboty', 'barbot', 600, 0.2, 'sineInOut')
end
 if curStep == 1422 then
	doTweenY('bartopy', 'bartop', 0, 0.2, 'sineInOut')
	doTweenY('barboty', 'barbot', 550, 0.2, 'sineInOut')
end
 if curStep == 1438 then
	doTweenY('bartopy', 'bartop', -300, 0.2, 'sineInOut')
	doTweenY('barboty', 'barbot', 850, 0.2, 'sineInOut')
end
end
