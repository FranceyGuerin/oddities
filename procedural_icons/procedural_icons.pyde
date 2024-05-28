def setup():
    size(500, 500)
    colorMode(HSB, 360, 100, 100)
    noStroke()
    
def draw():
    background(125, 30, 99)
    pushMatrix()
    translate(width/2, height/2)
    icon()
    popMatrix()

def icon():
    fill(265, 50, 99)
    for i in range(5):
        for j in range(5):
            if random(1) >= 0.5:
                rect(i*20, j*20, 20, 20)
    
