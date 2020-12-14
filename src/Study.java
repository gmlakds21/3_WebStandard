import java.util.ArrayList;
import java.util.Iterator;

public class Study {
    public static void main(String[] args) {

        // Foreach
        {   // ( 형태 A : 배열 명 )
            //      A
            ArrayList<String> names = new ArrayList<String>();

            names.add("혜교");
            names.add("지현");
            names.add("수지");

            for (String data : names) {
                System.out.println(data);
            }
        }
        // Iterator
        {   // Iterator<형태> iter = 배열명.iterator();
            // while ( iter.hasNext() )
            //          iter.next()

            ArrayList<String> names = new ArrayList<String>();
            Iterator<String> iter = names.iterator();
            // OOP 프로그래밍에서 배열이나그와 유사한 자료구조의 내부 요소를 순희하는 객체를 의미

            while (iter.hasNext()) {
                System.out.println(iter.next());
            }
        }
        //



    }
}
