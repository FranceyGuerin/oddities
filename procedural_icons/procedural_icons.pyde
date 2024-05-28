def setup():
    size(500, 500)
    
    colorMode(HSB, 360, 100, 100)
    
    rectMode(CENTER)
    noStroke()
    fill(265, 50, 99)

    
def draw():
    background(125, 30, 99)
    pushMatrix()
    translate(width/2, height/2)
    icon(20, 4)
    popMatrix()
    noLoop()
    
def icon(pixel_size, pixel_count):
    for i in range(pixel_count):
        for j in range(pixel_count):
            if random(1) >= 0.5:
                rect(i*pixel_size, j*pixel_size, pixel_size, pixel_size)
                rect(i*-pixel_size, j*pixel_size, pixel_size, pixel_size)
    
