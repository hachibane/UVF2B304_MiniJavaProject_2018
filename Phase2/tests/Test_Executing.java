package robin;

public class robin {
	public String toto() {
   		return "robin";
    }

	public static void main(String [] args) {
		String result = "test";
		result += "test";
  		s += "test";
  		int test = 56;
		test -= 1;
		test *= 2;
		test = 3+6;
		5 == 6;

		int i = 0;
		for(i = 0; i<20; i++) {
			test += 4;
		}	
		2++;
		while(i < 3) {
			i++;
		}
		int j = 2;
		try {
			int l = j/0;
		}
		catch(NullPointerException npe) {
		}
		catch(ArithmeticException e) {
			int test5 = 5
		}
		finally {
			int test = 8;
		}
		try {
			throw new MyException();
		}
		catch(MyException e) {
			int test6 = 30;
			test6 = e.testException();
		}
	}
}
