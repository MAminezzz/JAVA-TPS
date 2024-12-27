
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import java.io.IOException;
import java.io.PrintWriter;
public class Exemple {

	public static void main(String[] args) {
	try {
		File f1=new File("test1.txt");
		f1.createNewFile();
		File f2=new File("Fichier2.txt");
		f2.createNewFile();
		FileInputStream fis =new FileInputStream(f1);
		FileOutputStream fos =new FileOutputStream(f1);
		int b=0;
		
		PrintWriter w=new PrintWriter("test1.txt","UTF-8");
		w.println("JAVA");
		w.close();

		while((b=fis.read())!= -1) {
		System.out.println(b);
		fos.write(b);
		System.out.println(b+"("+(char)b+")'");
	}
		System.out.println("Copie terminée");
		if(fis!=null)fis.close();
		if(fos!=null)fis.close();
		
		}catch(FileNotFoundException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
	}

}