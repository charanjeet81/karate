package examples;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

public class JavaFunctions 
{
	public String getRequest()
	{
		return "{ \r\n"
				+ "	\"name\": \"morpheus\", \r\n"
				+ "	\"job\": \"leader\" \r\n"
				+ "}";
	}
	
	public static void storeResponse(String response) throws FileNotFoundException
	{
		PrintWriter pw = new PrintWriter("Response.txt");
		pw.write(response);
		pw.flush();
		pw.close();
	}
}
