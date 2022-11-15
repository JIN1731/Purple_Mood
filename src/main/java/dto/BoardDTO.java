package dto;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class BoardDTO {

	private int b_seq;
	private String b_category;
	private String b_writer_id;
	private String b_writer_nn;
	private String b_writer;
	private Timestamp b_write_date;
	private String b_title;
	private String b_content;
	private int b_view_count;

	public BoardDTO() {
		super();
	}
	public BoardDTO(int b_seq, String b_category, String b_writer_nn,
			String b_writer_id,String b_writer, Timestamp b_write_date, String b_title,
			String b_content, int b_view_count) {
		this.b_seq = b_seq;
		this.b_category = b_category;
		this.b_writer = b_writer;
		this.b_write_date = b_write_date;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_view_count = b_view_count;
		this.b_writer_id=b_writer_id;
		this.b_writer_nn=b_writer_nn;
	}


	public int getB_seq() {
		return b_seq;
	}
	public void setB_seq(int b_seq) {
		this.b_seq = b_seq;
	}
	public String getB_category() {
		return b_category;
	}
	public void setB_category(String b_category) {
		this.b_category = b_category;
	}
	public String getB_writer_nn(){
		return b_writer_nn;
	}
	public void setB_writer_nn(String b_writer_nn) {
		this.b_writer_nn= b_writer_nn;
	}

	public String getB_writer_id() {
		return b_writer_id;
	}
	public void setB_writer_id(String b_writer_id) {
		this.b_writer_id = b_writer_id;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}


	public String getB_write_date() {
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		String sdf1_b_write_date = sdf1.format(this.b_write_date);
		String sdf1_currentTime = sdf1.format(System.currentTimeMillis());
		if(sdf1_b_write_date.equals(sdf1_currentTime)) {
			SimpleDateFormat sdf2 = new SimpleDateFormat("HH시 mm분");
			return sdf2.format(this.b_write_date);
		}else {
			SimpleDateFormat sdf3 = new SimpleDateFormat("MM월 dd일");
			return sdf3.format(this.b_write_date);
		}		
	}
	public void setB_write_date(Timestamp b_write_date) {
		this.b_write_date = b_write_date;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public int getB_view_count() {
		return b_view_count;
	}
	public void setB_view_count(int b_view_count) {
		this.b_view_count = b_view_count;
	}

	public String getFormedDate() {
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyyMMdd");
		String sdf1_b_write_date = sdf1.format(this.b_write_date);
		String sdf1_currentTime = sdf1.format(System.currentTimeMillis());
		if(sdf1_b_write_date.equals(sdf1_currentTime)) {
			SimpleDateFormat sdf2 = new SimpleDateFormat("hh시 mm분");
			return sdf2.format(this.b_write_date);
		}else {
			SimpleDateFormat sdf3 = new SimpleDateFormat("MM월 dd일");
			return sdf3.format(this.b_write_date);
		}	
	}
	//	public static String getFormedDate(String launch_date) throws ParseException {
	//		  SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); 
	//		  Date ld = sdf1.parse(launch_date);
	//	      SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년MM월 출시");
	//	      String formedLd = sdf2.format(ld);
	//	      return formedLd;
	//	 }
	//	
	//	public static Timestamp dateToTimestamp(String launch_date) throws ParseException {
	//		  SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); 
	//		  Date ld = sdf1.parse(launch_date);
	//		  SimpleDateFormat sdf3 = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	//		  Timestamp launchDate =  Timestamp.valueOf(sdf3.format(ld));
	//		  return launchDate;
	//	}
	//
	//	public String getFormedDate() {
	//
	//		long writeTime = this.b_write_date.getTime();
	//		long currentTime = System.currentTimeMillis();
	//
	//		long timeGap = (currentTime - writeTime)/1000;
	//
	//		// 단위는 초
	//		if(timeGap < 60) {
	//			return "1분 이내";
	//		}else if(timeGap < 300) {
	//			return "5분 이내";
	//		}else if(timeGap < 3600) {
	//			return "1시간 이내";
	//		}else if(timeGap < 86400) {
	//			return "24시간 이내";
	//		}else {
	//			SimpleDateFormat sdf = new SimpleDateFormat("MM월dd일 hh시mm분");
	//			return sdf.format(write_date);
	//		}




}

