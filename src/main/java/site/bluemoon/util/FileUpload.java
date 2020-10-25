package site.bluemoon.util;

import java.io.File;
import java.io.IOException;

import org.springframework.ui.Model;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

public class FileUpload {
	private static FileUpload fileUpload;
	
	private FileUpload() {
		// TODO Auto-generated constructor stub
	}
	
	static {
		fileUpload=new FileUpload();
	}
	
	

	public static FileUpload getFileUpload() {
		return fileUpload;
	}



	public static void setFileUpload(FileUpload fileUpload) {
		FileUpload.fileUpload = fileUpload;
	}



	public String uploading(MultipartFile uploadFile, String uploadDir) throws IllegalStateException, IOException {
		
		if(uploadFile.isEmpty()) {
			return "fail";
		}
		
		//WebApplicationContext 객체를 이용하여 서버의 업로드 디렉토리의 시스템 경로를 반환받아 저장
		//String uploadDir=context.getServletContext().getRealPath("/resources/bluemoon/images/hotel_img");
		//System.out.println("uploadDir = "+uploadDir);
		
		//서버 업로드 디렉토리에 입력파일과 동일한 이름이 파일이 존재할 경우 
		//입력파일명을 변경하여 서버에 저장되도록 작성
		String originalFilename=uploadFile.getOriginalFilename();
		File file=new File(uploadDir, originalFilename);
		
		//실제 서버의 업로드 디렉토리에 저장하기 위한 파일명을 저장하는 변수 선언
		// => 초기값으로 입력파일의 원본 파일명 저장
		String uploadFilename=originalFilename;
		
		//서버에 입력파일의 이름과 같은 이름의 파일이 존재할 경우 저장파일의 이름 변경
		int i=0;
		while(file.exists()) {//동일한 파일이 존재할 경우 반복 처리
			i++;
			int index=originalFilename.lastIndexOf(".");
			//입력파일의 이름 뒤에 "_숫자"를 추가하며 저장파일명으로 사용
			uploadFilename=originalFilename.substring(0, index)
					+"_"+i+originalFilename.substring(index);
			file=new File(uploadDir, uploadFilename);
		}
		
		uploadFile.transferTo(file);
		
		//model.addAttribute("uploader", uploader);
		//model.addAttribute("originalFilename", originalFilename);
		//model.addAttribute("uploadFilename", uploadFilename);
		
		return "sucess";
		
	}

}
