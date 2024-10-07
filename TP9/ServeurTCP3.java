import java.net.*;
import java.io.*;

public class ServeurTCP3 {
    public static void main(String[] args) {
        try {
            while(true) {
            ServerSocket socketserveur = new ServerSocket(2016);
            System.out.println("- Server ready");
            Socket socket = socketserveur.accept();

            System.out.println("Connection established");
            try {
            DataInputStream dIn = new DataInputStream(socket.getInputStream());
            String res = dIn.readUTF();
            System.out.println("Message : " + res);
            

            DataOutputStream dOut = new DataOutputStream(socket.getOutputStream());
            String rev = new StringBuilder(res).reverse ().toString();
            dOut.writeUTF(rev);
            }
            catch (IOException e) {
                e.printStackTrace();
            }
            socket.close();
            socketserveur.close();
        }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
}