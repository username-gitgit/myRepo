package testPack;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

public class InStreamIO {

	public static void main(String[] args) {
		File file = new File("TestFile");
		System.out.println(file.length()); //-> 파일의 크기를 불러옴
		System.out.println(file.canExecute()); //-> 파일이 실행 가능한지
		System.out.println(file.canRead()); //-> 파일이 실행 가능한지
		System.out.println(file.getAbsolutePath()); //-> 파일의 절대경로
		//등등 File클래스의 역할
		
		FileInputStream fis = null;
		try {
			fis = new FileInputStream(file);
			int data = 0;
			//read 1byte를 읽어들여서 data에 담아서 출력
			while((data = fis.read()) != -1) {
		//read를 반복하면서 -1이 아니면 계속 실행 (-1은 read할 데이터가 더 없다는 것)
		//-1 -> End Of File (EOF) -> 파일의 끝을 나타내는 용어
			System.out.print((char)data);
			}
			
		}catch(IOException e) {
			e.printStackTrace();
		}finally {
			if(fis != null) {
				try {
					fis.close();
				}catch(IOException e) {}
			}		
		}
/* file에 B가 저장되어 있었으므로 실행하면 66이 찍힌다 첫글자만 읽는듯 1byte라서?
 * file의 내용이 바뀌면 따라서 바꿔 찍는다
 * 한글(2byte)을 file에 입력하면 (가) -> 1byte에 해당하는 176이 나옴 원래값(44032)
 * 어떤 문자인지 표시를 못할뿐 데이터 자체에는 문제가 없다
 * read를 계속 하면 syso를 하면 file에 적혀있는것 순서대로 찍힌다
 * buffer를 사용해서 한덩어리 두덩어리씩 옮겨야 파일이동이 빠르다
 * 
 * 
 */

	}
}