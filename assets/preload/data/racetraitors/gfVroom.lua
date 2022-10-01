local i =0
function onUpdate(elapsed)

	daElapsed = elapsed * 30
	i = i + daElapsed
	
	setProperty('gf.x', (math.sin(i/30)*65) + 380)
	xx = (math.sin(i/30)*75) - 350
end