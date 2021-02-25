public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{  

  for (int i = 0; i < e.length() - 10; i++) {
    String stringed = e.substring(i, i+10);
    Double numbers = Double.parseDouble(stringed);
    if (numbers < 5) {
      continue;
    } else {
      if (checkPrime(numbers) == true) {
      System.out.println("first 10-digit prime found in consecutive digits of \'e\': " + stringed);
      break;
    }
    }
  }
}  
public void draw()  
{   

}  
public boolean checkPrime(double dNum)  
{   
    boolean isPrime = true;
    if (dNum <= 1) {
      isPrime = false;
    } else {
      for (int i = 2; i < (int)Math.sqrt(dNum) + 1; i++) {
      if (dNum % i == 0) {
        isPrime = false;
      }
    }
    }
    
    return isPrime;
} 
