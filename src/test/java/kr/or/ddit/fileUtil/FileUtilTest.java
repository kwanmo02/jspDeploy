package kr.or.ddit.fileUtil;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.fail;
import kr.or.ddit.file.FileUtill;

import org.junit.Before;
import org.junit.Test;

public class FileUtilTest {

	private String file;

	@Before
	public void Setup() {
		file = "form-data; name=\"uploadFile\"; filename=\"moon.png\"";
	}

	@Test
	public void test() {
		/*** Given ***/
		String[] files = file.split("; ");
		/*** When ***/

		/*** Then ***/
		assertEquals(3, files.length);
		assertEquals("form-data", files[0]);
		assertEquals("name=\"uploadFile\"", files[1]);
		assertEquals("filename=\"moon.png\"", files[2]);

	}

	@Test
	public void filesNameValueSplitTest() {
		/*** Given ***/
		String files = "filename=\"moon.png\"";
		files = files.replace("filename=\"moon.png\"", "filename=moon.png");
		/*** When ***/
		String[] filesArray = files.split("=");

		/*** Then ***/
		assertEquals("filename", filesArray[0]);
		assertEquals("moon.png", filesArray[1]);

	}

	@Test
	public void getFileTest() {
		/*** Given ***/
		String file = "form-data; name=\"uploadFile\"; filename=\"moon.png\"";
		FileUtill fileUtil = new FileUtill();

		/*** When ***/
		String fileValue = fileUtil.getFileName("form-data; name=\"uploadFile\"; filename=\"moon.png\"");
		/*** Then ***/

		assertEquals("moon.png", fileValue);

	}

}
