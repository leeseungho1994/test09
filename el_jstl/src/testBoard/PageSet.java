package testBoard;

public class PageSet {
	private int startNum;
	private int endNum;
	private int totalNum;
	private final int PAGE_NUM = 3;
	
	public void pageSet(int start) {
		if(start == 0) start = 1;
		BoardDAO dao = new BoardDAO();
		int total_num = dao.getTotalPage();
		//아래 게시물 갯수에 따른 페이지 총 수
		totalNum = total_num/PAGE_NUM + (total_num%PAGE_NUM==0?0:1);
		//시작 숫자
		startNum = (start - 1) * PAGE_NUM + 1;
		//끝 숫자
		endNum = PAGE_NUM * start;
	}

	public int getStartNum() {
		return startNum;
	}
	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}
	public int getEndNum() {
		return endNum;
	}
	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
	public int getTotalNum() {
		return totalNum;
	}
	public void setTotalNum(int totalNum) {
		this.totalNum = totalNum;
	}
	public int getPAGE_NUM() {
		return PAGE_NUM;
	}
	
}
