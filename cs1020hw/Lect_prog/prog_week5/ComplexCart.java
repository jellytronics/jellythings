class ComplexCart implements Complex { 
	private double real;
	private double imag;

	// CONSTRUCTOR
	public ComplexCart(double r, double i) { real = r; imag = i; }

	// ACCESSORS
	public double realpart() { return this.real; }
	public double imagpart() { return this.imag; }
	public double mag() { return Math.sqrt(real * real + imag * imag); }  
	public double angle() {
		if (real != 0) {
			if (real < 0) return (Math.PI + Math.atan(imag/real));
			else return Math.atan(imag/real);
		}
		else if (imag == 0) return 0;
		else if (imag > 0) return Math.PI/2; 
		else return -Math.PI/2; 
	}

	// MUTATORS
	public void add(Complex c) {
		this.real += c.realpart(); 
		this.imag += c.imagpart(); 
	}

	public void minus(Complex c) { 
		this.real -= c.realpart(); 
		this.imag -= c.imagpart(); 
	}

	public void times(Complex c) { 
		double tempReal = real * c.realpart() - imag * c.imagpart();    
		imag = real * c.imagpart() + imag * c.realpart(); 
		real = tempReal;
	}

	// for printing... 
	public String toString() {
		if (imag == 0) 
			return (real + "");
		else if (imag < 0) 
			return (real + "" + imag + "i");
		else 
			return (real + "+" + imag + "i");
	}
}

