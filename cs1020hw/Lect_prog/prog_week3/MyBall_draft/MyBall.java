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
		setColour("yellow");
		setRadius(10.0);
		quantity++;
	}

	public MyBall(String newColour, double newRadius) {
		setColour(newColour);
		setRadius(newRadius);
		quantity++;
	}

	/**************** Accessors ***********************/
	public static int getQuantity() {
		return quantity;
	}

	public String getColour() {
		return colour;
	}

	public double getRadius() {
		return radius;
	}

	/**************** Mutators ************************/
	public void setColour(String newColour) {
		colour = newColour;
	}

	public void setRadius(double newRadius) {
		radius = newRadius;
	}
}
