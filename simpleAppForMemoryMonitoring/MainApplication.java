public class MainApplication {
	public MainApplication() {
	}
	public void runOnce() {
		System.out.println("Hello World");
	}

	public static void main( String... args ) {
		MainApplication mainApplication = new MainApplication();
		while(true) {
			try {
				mainApplication.runOnce();
				Thread.sleep( Long.valueOf(args[0])*1000 );
			}catch( Exception ignored ) {}
		}
	}
}
