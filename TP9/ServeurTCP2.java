import java.net.*;
import java.io.*;

public class ServeurTCP2 {
    public static void main(String[] args) {
        try {
            while(true) {
            ServerSocket socketserveur = new ServerSocket(2016);
            System.out.println("Server ready");
            Socket socket = socketserveur.accept();

            System.out.println("Connection established");
            DataInputStream dIn = new DataInputStream(socket.getInputStream());
            System.out.println("Message : " + dIn.readUTF());
            socket.close();
            socketserveur.close();
        }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
}