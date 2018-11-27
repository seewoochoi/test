package secure;
 
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
 
public class Cmd {
  public static void main(String args[]) {
    String s;
 
    try {
      /*
       * �ڹ� 1.4 ���� Runtime oRuntime = Runtime.getRuntime(); Process oProcess =
       * oRuntime.exec("cmd /c dir /?");
       */
 
      // �ڹ� 1.5 �̻�, "/c"�� ��ɾ� ���� �� Console ����
      // Process oProcess = new ProcessBuilder("cmd", "/c", "dir").start();
      // Process oProcess = new ProcessBuilder("cmd", "/c", "dir", "/?").start();
      String dir = args[0];
      StringBuffer cmd = new StringBuffer("");
      cmd.append(dir);
      Process oProcess = new ProcessBuilder("cmd", "/c",cmd.toString()).start();
 
      // �ܺ� ���α׷� ��� �б�
      BufferedReader stdOut = new BufferedReader(new InputStreamReader(oProcess.getInputStream()));
      BufferedReader stdError = new BufferedReader(new InputStreamReader(oProcess.getErrorStream()));
 
      // "ǥ�� ���"�� "ǥ�� ���� ���"�� ���
      while ((s = stdOut.readLine()) != null)
        System.out.println(s);
      while ((s = stdError.readLine()) != null)
        System.err.println(s);
 
      // �ܺ� ���α׷� ��ȯ�� ���
      System.out.println("Exit Code: " + oProcess.exitValue());
      System.exit(oProcess.exitValue()); // �ܺ� ���α׷��� ��ȯ����, �� �ڹ� ���α׷� ��ü�� ��ȯ������
                                         // ���
 
    } catch (IOException e) { // ���� ó��
      System.err.println("����! �ܺ� ��� ���࿡ �����߽��ϴ�.\n" + e.getMessage());
      System.exit(-1);
    }
  }
}