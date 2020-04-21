package com.tj.sp.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tj.sp.dao.NoticeDao;
import com.tj.sp.dto.Notice;
import com.tj.sp.util.Paging;
@Service
public class NoticeServiceimpl implements NoticeService{
	@Autowired
	private NoticeDao noticeDao;
	@Override
	public int addNotice(Notice notice) {
		return noticeDao.addNotice(notice);
	}
	@Override
	public int replyNotice(Notice notice,String ncode) {
		noticeDao.indentNotice(ncode);
		return noticeDao.replyNotice(notice);
	}
	
	@Override
	public Notice getNotice(String ncode) {
		noticeDao.noticeHitUp(ncode);
		return noticeDao.getNotice(ncode);
	}
	@Override
	public int modifyNotice(Notice notice) {
		System.out.println("서비스 notice : " + notice);
		return noticeDao.modifyNotice(notice);
	}

	@Override
	public int deleteNotice(String ncode) {
		return noticeDao.deleteNotice(ncode);
	}

	@Override
	public List<Notice> noticeList(String pagenum) {
		Paging paging = new Paging(noticeDao.totalNotice(), pagenum, 10, 5);
		Notice notice = new Notice();
		notice.setStartrow(paging.getStartrow());
		notice.setEndrow(paging.getEndrow());
		return noticeDao.noticeList(notice);
	}

	@Override
	public int totalNotice() {
		// TODO Auto-generated method stub
		return noticeDao.totalNotice();
	}
}
