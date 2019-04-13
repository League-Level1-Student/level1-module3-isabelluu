
public class Athlete {

	static int nextBibNumber;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;


Athlete (String name, int speed){
	bibNumber = nextBibNumber++;
    this.name = name;
    this.speed = speed;
 
}

public static void main(String[] args) {
    //create two athletes      //print their names, bibNumbers, and the location of their race. 
	
	Athlete athlete1= new Athlete("Elena", 15);
	Athlete athlete2 = new Athlete("John", 20);
	
	int bib = athlete1.bibNumber;
	String name = athlete1.name;
	
	int bib2 = athlete2.bibNumber;
	String name2 = athlete2.name;
	
	System.out.println("The race is in " + raceLocation + " at " + raceStartTime);
	System.out.println(name + " is bib " + bib);
	
	System.out.println(name2 + " is bib " + bib2);
	
	
	
	}
}










