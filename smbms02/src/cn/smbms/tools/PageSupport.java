package cn.smbms.tools;

/**
 * 分页工具类
 * 
 * @author MDS
 *
 */
public class PageSupport {
	/**
	 * 总行数
	 */
	private int totalCount;
	/**
	 * 页的大小
	 */
	private int pageSize;
	/**
	 * 当前页数
	 */
	private int currentPageNo = 1;

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPageCount() {
		if (this.totalCount % this.pageSize == 0) {
			return this.totalCount / this.pageSize;
		} else {
			return this.totalCount / this.pageSize + 1;
		}
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	public int getIndex() {
		if (this.currentPageNo > 0) {
			return (this.currentPageNo - 1) * this.pageSize;
		}
		return 0;
	}
}
