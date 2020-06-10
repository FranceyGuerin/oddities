class Boid:

    def __init__(self, x, y, z, screen_wrap = True):
        self.position = PVector(x, y, z)
        self.diameter = random(10, 100)
        self.force = PVector(random(-10, 10), random(-10, 10), random(-10, 10))
        self.mass = self.diameter * self.diameter
        self.screen_wrap = screen_wrap

    def apply_force(self):
        self.force *= 0.999

    def iterate(self):
        position = self.position
        force = self.force
        
        if self.screen_wrap == True:
            self.wrap_screen()
        
        position.add(force)
        self.apply_force()

    def display(self):
        position = self.position
        diameter = self.diameter
        ellipse(position.x, position.y, diameter, diameter)

    def wrap_screen(self):
        position = self.position
        diameter = self.diameter

        if position.y < 0 - diameter:
            position.y = height + diameter

        if position.y > height + diameter:
            position.y = 0 - diameter
            
        if position.x < 0 - diameter:
            position.x = width + diameter
            
        if position.x > width + diameter:
            position.x = 0 - diameter

boids = []
def setup():
    size(displayWidth, displayHeight)
    fill(255, 255, 200)
    noStroke()

    for i in range(100):
        boids.append(
            Boid(random(0, displayWidth), random(0, displayHeight), 0))

def draw():
    background(255, 200, 255)
    #ellipse(500, 500, 400, 400)

    for b in boids:
        b.iterate()
        b.display()
