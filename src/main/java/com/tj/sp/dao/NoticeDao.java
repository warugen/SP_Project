package com.tj.sp.dao;

import java.util.List;

import com.tj.sp.dto.Notice;

public interface NoticeDao {
	public int addNotice(Notice notice);
	public int replyNotice(Notice notice);
	public void noticeHitUp();
	public Notice getNotice(String ncode);
	public void indentNotice();
	public int modifyNotice(Notice notice);
	public int deleteNotice(String ncode);
	public List<Notice> noticeList(Notice notice);
	public int totalNotice();
}
