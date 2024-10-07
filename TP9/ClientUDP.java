import java.io.* ;
import java.net.* ;

class ClientUDP {
    public static void main(String[] args){
        try {
            String s = "Hello World";
            byte[] data = s.getBytes();


            InetAddress addr = InetAddress.getLocalHost();  
            System.out.println("addr = " + addr);


            DatagramPacket packet = new DatagramPacket(data, data.length, addr, 1234);
            DatagramSocket sock = new DatagramSocket();
            sock.send(packet);
            System.out.println("Data sent");
            sock.close();

            DatagramSocket sock2 = new DatagramSocket(12345);
            
            DatagramPacket packet2 = new DatagramPacket(new byte[1024], 1024);
            sock2.receive(packet2);
            String str = new String(packet2.getData());
            System.out.println("str= " + str);

            sock2.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}