public class TestBankAcct {

	public static void main(String[] args) {

		BankAcct ba1 = new BankAcct();
		BankAcct ba2 = new BankAcct(1234, 321.70);

		System.out.println("Before transactions:");
		ba1.print();
		ba2.print();

		ba1.deposit(1000);
		ba1.withdraw(200.50);

		ba2.withdraw(500.25);   

		System.out.println();
		System.out.println("After transactions:");
		ba1.print();
		ba2.print();
	}
} 

