import java.io.* ;
import java.net.* ;

class ServeurUDP {
    public static void main(String[] args){
        try {
            DatagramSocket sock = new DatagramSocket(1234);
            while (true) {
                System.out.println("-Waiting data");
                DatagramPacket packet = new DatagramPacket(new byte[1024], 1024);
                sock.receive(packet);


                System.out.println("Data received");
                String str = new String(packet.getData());
                System.out.println("str= " + str);


                DatagramPacket packet2 = new DatagramPacket(packet.getData(), packet.getLength(), packet.getAddress(), 12345);
                sock.send(packet2);
                System.out.println("Data sent");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}