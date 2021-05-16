import java.util.ArrayList;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class App {
	private static final Log log = LogFactory.getLog(App.class);
//

	public static void main(String[] args) {
		// Declaration
		ArrayList<ArrayList<Integer>> nodes = new ArrayList<ArrayList<Integer>>();
		ArrayList<Integer> nodeList = new ArrayList<Integer>();

		// Ajout d elements liste No 1
		nodeList.add(1);
		nodeList.add(2);
		nodeList.add(3);
		nodeList.add(4);

		// Ajout de la liste dans le tableau
		nodes.add(nodeList);

		nodeList = new ArrayList<Integer>();

		// Ajout d elements liste No 2
		nodeList.add(9);
		nodeList.add(8);
		nodeList.add(7);
		nodeList.add(6);
		// Ajout de la liste dans e tableau
		nodes.add(nodeList);
		// Affichage
		for (int a = 0; a < nodes.size(); a++) {
			System.out.println("Taille tableau : " + nodes.size());
			for (int i = 0; i < nodes.get(a).size(); i++) {
				System.out.println("No du tableau : " + a);
				System.out.println("Taille liste : " + nodes.get(a).size());
				System.out.println("Element " + nodes.get(a).get(i));
			}
		}
	}
}
