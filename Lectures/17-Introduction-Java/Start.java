public class Start {

	int addTwo(int num) {
		int toAdd = 2;
		int result = num + toAdd;

		System.out.println("Adding " + toAdd + " to " + num);

		return result;  		
	}

  public static void main(String [] args) {
		Start anObject = new Start();

		System.out.println("The result is " + anObject.addTwo(40) );
  }

}