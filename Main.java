import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;

public class Main implements HttpHandler {
    public static void main(String[] args) throws Exception {
        HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);
        server.createContext("/helloworld", new Main());
        server.createContext("/", new Main());
        server.setExecutor(null); // creates a default executor
        server.start();

        System.out.println("Started!");
    }

    @Override
    public void handle(HttpExchange t) throws IOException {
        String response = "Hello World! 7";
        t.sendResponseHeaders(200, response.length());
        OutputStream os = t.getResponseBody();
        os.write(response.getBytes());
        os.close();
    }
}
