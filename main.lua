-- Change Text along with transictions 
local blueSquare
function cStart()
myText.text="Your Object is moving..."
end
function cEnd()
myText.text="It's Over..."
end
function myHandler(event)
	transition.to(blueSquare,{y=1200, onStart=cStart,onComplete=cEnd, time=2000, rotation=700, alpha=0.7, xScale=2,yScale=2})
end
blueSquare=display.newRect(200,500,300,500)
blueSquare:setFillColor(0,0,1)
blueSquare:addEventListener("tap",myHandler)	
myText=display.newText("",display.contentWidth/2,display.contentHeight/2, Arial, 45)