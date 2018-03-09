package com.accp.tools;

public class PageSupport {
	/**
	 * 当前页数
	 */
	private int currentPageNo = 1;
	/**
	 * 总行数
	 */
	private int totalCount;
	/**
	 * 页的大小
	 */
	private int pageSize;
	/**
	 * 总页数
	 */
	private int totalPageCount;
	/**
	 * 从第几行开始
	 */
	private int index;

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		if (currentPageNo <= 0) {
			this.currentPageNo = 1;
		} else if (currentPageNo > 0 && currentPageNo <= this.totalPageCount) {
			this.currentPageNo = currentPageNo;
		} else {
			this.currentPageNo = this.totalPageCount;
		}
		this.getIndex();
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.getTotalPageCount();
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPageCount() {
		if (this.totalCount % this.pageSize == 0) {
			this.totalPageCount = this.totalCount / this.pageSize;
		} else if (this.totalCount % this.pageSize > 0) {
			this.totalPageCount = this.totalCount / this.pageSize + 1;
		}
		return this.totalPageCount;
	}

	public int getIndex() {
		if (this.currentPageNo > 0) {
			this.index = (this.currentPageNo - 1) * this.pageSize;
		}
		return this.index;
	}

}
