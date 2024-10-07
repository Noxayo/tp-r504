import java.net.*;
import java.io.*;

public class ClientTCP1 {
    public static void main(String[] args) {
        try {
            Socket socket = new Socket("localhost", 2016);
            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
            dOut.writeUTF("Hello World");
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
}
