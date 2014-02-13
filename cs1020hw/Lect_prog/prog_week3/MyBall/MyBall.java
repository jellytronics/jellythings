// MyBall class:
//   Class attribute: quantity - number of balls created
//   Instance attributes: colour, radius
// Aaron Tan

class MyBall {

	/************** Data members **********************/
	private static int quantity = 0; 

	private String colour;
	private double radius;

	/************** Constructors **********************/
	// Default constructor creates a yellow, radius 10.0 ball

	public MyBall() {
		this("yellow", 10.0);
	}

	public MyBall(String colour, double radius) {
		setColour(colour);
		setRadius(radius);
		quantity++;
	}

	/**************** Accessors ***********************/
	public static int getQuantity() {
		return quantity; 
	}

	public String getColour() {
		return this.colour;   // 'this' is optional here
	}

	public double getRadius() {
		return this.radius;   // 'this is optional here
	}

	/**************** Mutators ************************/
	public void setColour(String colour) {
		this.colour = colour;  // 'this' is required here
	}

	public void setRadius(double radius) {
		this.radius = radius;  // 'this' is required here
	}

	/***************** Overriding methods ******************/
	// Overriding toString() method
	public String toString() {
		return "[" + getColour() + ", " + getRadius() + "]";
	}

	// Overriding equals() method
	public boolean equals(Object obj) {
		if (obj instanceof MyBall) {
			MyBall ball = (MyBall) obj;
			return this.getColour().equals(ball.getColour()) &&
				this.getRadius() == ball.getRadius();
		}
		else
			return false;
	}
}

