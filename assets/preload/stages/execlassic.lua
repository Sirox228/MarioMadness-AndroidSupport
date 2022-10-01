function onCreate()
	-- background shit
	makeLuaSprite('Brick3', 'EXE1/Brick3', -325, -150);
	addLuaSprite('Brick3', false);
	scaleObject('Brick3', 1.2, 1.2);
	setScrollFactor('Brick3', 0.5, 0.5);

	makeLuaSprite('Brick4', 'EXE1/Brick4', -325, -150);
	addLuaSprite('Brick4', false);
	scaleObject('Brick4', 1.2, 1.2);

	makeLuaSprite('BricksBG1', 'EXE1/BricksBG1', -300, -100);
	addLuaSprite('BricksBG1', false);
	scaleObject('BricksBG1', 1.2, 1.2);

	makeLuaSprite('Brick5', 'EXE1/Brick5', -40, 250);
	addLuaSprite('Brick5', false);
	scaleObject('Brick5', 1.1, 1.1);

	makeLuaSprite('BricksBG2', 'EXE1/BricksBG2', -200, -100);
	addLuaSprite('BricksBG2', false);
	scaleObject('BricksBG2', 1.2, 1.2);

	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfexe');
        setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverMM');

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then

	end


	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end