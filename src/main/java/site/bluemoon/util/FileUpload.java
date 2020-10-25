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
		
		//WebApplicationContext ��ü�� �̿��Ͽ� ������ ���ε� ���丮�� �ý��� ��θ� ��ȯ�޾� ����
		//String uploadDir=context.getServletContext().getRealPath("/resources/bluemoon/images/hotel_img");
		//System.out.println("uploadDir = "+uploadDir);
		
		//���� ���ε� ���丮�� �Է����ϰ� ������ �̸��� ������ ������ ��� 
		//�Է����ϸ��� �����Ͽ� ������ ����ǵ��� �ۼ�
		String originalFilename=uploadFile.getOriginalFilename();
		File file=new File(uploadDir, originalFilename);
		
		//���� ������ ���ε� ���丮�� �����ϱ� ���� ���ϸ��� �����ϴ� ���� ����
		// => �ʱⰪ���� �Է������� ���� ���ϸ� ����
		String uploadFilename=originalFilename;
		
		//������ �Է������� �̸��� ���� �̸��� ������ ������ ��� ���������� �̸� ����
		int i=0;
		while(file.exists()) {//������ ������ ������ ��� �ݺ� ó��
			i++;
			int index=originalFilename.lastIndexOf(".");
			//�Է������� �̸� �ڿ� "_����"�� �߰��ϸ� �������ϸ����� ���
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
