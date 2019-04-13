package backpack;

public class BackpackRunner {
	public static void main(String[] args) {
		new Backpack().packAndCheck();
		
		Backpack bp = new Backpack();
		Pencil pencil = new Pencil();
		Ruler ruler = new Ruler();
		Textbook textbook = new Textbook();
		
		
		bp.putInBackpack(pencil);
		bp.putInBackpack(ruler);
		bp.putInBackpack(textbook);
		
		bp.packAndCheck();
		
		bp.goToSchool();

		
	}
}
