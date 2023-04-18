package testPack;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class OutStreamIO {

	public static void main(String[] args) {
		File file = new File("TestFile");
		FileOutputStream fos = null;
		
		try {
			fos = new FileOutputStream(file, true);
		//출력할때 어떤 형식/목적지로 출력을 할것인가 -> (file)
			fos.write(69);//1byte만 들어가야한다 그이상이면 해당숫자의 의미를 잃는다
		//FileOutputStream fos를 이용해서 해당데이터를 write한다
		}catch(IOException e) {
			e.printStackTrace();
		}finally {
			if(fos != null) {
				//해당객체가 null이 아니면 -> 해당 객체가 참조되고 있다면
				try {
					fos.close();
				//Stream을 닫아준다 안닫으면 이동 삭제등 할때
				//내가 맨날보는 그거 해당 파일이 어디서 계속 사용중이라고 안된다고뜬다
				}catch(IOException e) {}
			}
		}

	}
/* FileOutputStream -> 메모리를 기준으로 화면상으로 데이터가 이동하면 output
 * FileInputStream -> 키보드,마우스로 부터 데이터가 들어오면 input
 * 데이터가 흘러들어오거나 나가는 '흐름'을 Stream이라고한다
 * File(파일을)output(출력하는)Stream(흐름)
 * 
 * Stream형식은 1byte, byte타입이 디폴트
 * Reader, writer형식은 2byte, char타입이 디폴트 
 * FileOutputStream(file, true); true를 주면 실행할때마다 해당글자 (fos.write(66))를 추가해줌
 * true -> append, false -> 새롭게쓴다
 */

}
