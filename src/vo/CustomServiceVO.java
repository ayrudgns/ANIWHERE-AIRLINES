package vo;					//고객 서비스

public class CustomServiceVO {
	private int notice_no;
	private String title;
	private String writer;
	private String content;
		
	public CustomServiceVO() {
			// TODO Auto-generated constructor stub
	}
		
	public CustomServiceVO(int notice_no, String title, String writer, String content) {
			this.notice_no = notice_no;
			this.title = title;
			this.writer = writer;
			this.content = content;
	}
		
	public int getNotice_no() {
		return notice_no;
	}
		
	public String getTitle() {
		return title;
	}
	
	public String getWriter() {
		return writer;
	}
		
	public String getContent() {
		return content;
	}

	@Override
	public String toString() {
		return "CustomServiceVO [notice_no=" + notice_no + ", title=" + title + ", writer=" + writer + ", content="
				+ content + "]";
	}
		
		
}
