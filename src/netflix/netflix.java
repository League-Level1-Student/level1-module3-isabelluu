package netflix;

public class netflix {

	public static void main(String[] args) {
		
		Movie movie = new Movie("The Bee movie", 2);
		Movie movie2 = new Movie("Chasing Mavericks", 5);
		
		String ticket = movie.getTicketPrice();
		
		System.out.println(ticket);
		
		int rate = movie.getRating();
		
		System.out.println(rate);
		
		String title = movie.getTitle();
		
		System.out.println(title);

		int better = movie.compareTo(movie2);
		
		System.out.println(better);
		
String ticket1 = movie2.getTicketPrice();
		
		System.out.println(ticket1);
		
		int rate1 = movie2.getRating();
		
		System.out.println(rate1);
		
		String title1 = movie2.getTitle();
		
		System.out.println(title1);
	}
	
}
