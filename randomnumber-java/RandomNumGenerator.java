package com.mahesh.test;
import java.net.HttpURLConnection;
import java.net.URL;

public class RandomNumGenerator {
	
	public static void main (String args[]) throws Exception {
		
		int i = 0;
		while(true) {
			if(i == 1000000) System.exit(0);
			System.out.println("Generating randoms number...");
			System.out.println(Math.random());
			URL url = new URL("http://google.com");
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.connect();
			System.out.println("Calling google....."+con.getContent().toString());
			i++;
			Thread.sleep(5000);
			
		}
	}

}
