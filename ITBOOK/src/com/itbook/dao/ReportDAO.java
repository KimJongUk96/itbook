package com.itbook.dao;

import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.itbook.vo.Paging1;
import com.itbook.vo.Report.ReportBoardVO;
import util.DBManager;

public class ReportDAO {
	private static ReportDAO instance;

	public static ReportDAO getInstance() {
		if (instance == null) {
			instance = new ReportDAO();
		}
		return instance;
	}

	// 독후감 조회
	public List<ReportBoardVO> selectAllReports() {

		String sql = "SELECT reportNum" + "" + "        , reportTitle" + "        , reportContent"
				+ "         , reportDate" + "         , reportCount" + "         , bookNum"
				+ "         , memNum FROM itbook.report_board order by reportNum desc";

		List<ReportBoardVO> list = new ArrayList<ReportBoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery(sql);

			while (rs.next()) {
				ReportBoardVO rVo = new ReportBoardVO();

				rVo.setReportNum(rs.getInt("reportNum"));
				rVo.setReportTitle(rs.getString("reportTitle"));
				rVo.setReportContent(rs.getString("reportContent"));
				rVo.setReportDate(rs.getDate("reportDate"));
				rVo.setReportCount(rs.getInt("reportCount"));
				rVo.setBookNum(rs.getInt("bookNum"));
				rVo.setMemNum(rs.getInt("memNum"));

				list.add(rVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	// 독후감 등록하기
	public void insertReport(ReportBoardVO rpVo) {
		String sql = "insert into itbook.report_board (reportTitle,reportContent,bookNum,memNum) value (?,?,?,?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, rpVo.getReportTitle());
			pstmt.setString(2, rpVo.getReportContent());
			pstmt.setInt(3, rpVo.getBookNum());
			pstmt.setInt(4, rpVo.getMemNum());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 독후감 상세보기
	public ReportBoardVO selectOneReportByNum(String reportNum) {
		String sql = "select * from report_board where reportNum=?";

		ReportBoardVO rVo = new ReportBoardVO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, reportNum);
			rs = pstmt.executeQuery();

			if (rs.next()) {
//				rVo = new ReportBoardVO();

				rVo.setReportNum(rs.getInt("reportNum"));
				rVo.setReportTitle(rs.getString("reportTitle"));
				rVo.setReportContent(rs.getString("reportContent"));
				rVo.setReportDate(rs.getDate("reportDate"));
				rVo.setReportCount(rs.getInt("reportCount"));
				rVo.setBookNum(rs.getInt("bookNum"));
				rVo.setMemNum(rs.getInt("memNum"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return rVo;
	}

	// 독후감 조회수 올리기
	public void updateReportCount(int ReportNum) {
		String sql = "update itbook.report_board set ReportCount = ReportCount + 1 where ReportNum=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ReportNum);
			pstmt.executeQuery();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 독후감 게시글 수정하기
	public void updateReport(ReportBoardVO rVo) {
		String sql = "UPDATE itbook.report_board SET ReportTitle=?, ReportContent=?, BookNum=? WHERE MemNum=?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		/* ReportBoardVO rVo = new ReportBoardVO(); */

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, rVo.getReportTitle());
			pstmt.setString(2, rVo.getReportContent());
			pstmt.setInt(3, rVo.getBookNum());
			pstmt.setInt(4, rVo.getMemNum());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			DBManager.close(conn, pstmt);
		}
	}

	// 독후감 게시글 삭제하기
	public void deleteReport(int ReportNum) {

		String sql = "DELETE FROM itbook.report_board WHERE ReportNum=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ReportNum);

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 독후감 리스트 총 게시글 수 보기
	public Paging1 selectReportRowCount(Paging1 paging) {
		int cnt = 0;
		String sql = "SELECT COUNT(*) CNT" + "     FROM itbook.report_board";

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.prepareStatement(sql);

			rs = stmt.executeQuery();

			while (rs.next()) {
				cnt = rs.getInt("CNT");
				paging.setNumOfRow(cnt);
			}

		} catch (Exception e) {
			e.printStackTrace();

		} finally {
			DBManager.close(conn, stmt);
		}
		return paging;
	}

	// 독후감 리스트 페이징 처리
	public ArrayList<ReportBoardVO> selectBookPage(Paging1 paging) {

		String sql = "select reportNum,reportTitle,reportContent,reportCount from itbook.report_board order by ReportNum desc limit ?, 10";

		ArrayList<ReportBoardVO> list = new ArrayList<ReportBoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, ((paging.getPageNum() - 1) * paging.getPerPage()));
			rs = pstmt.executeQuery();

			while (rs.next()) {
				ReportBoardVO rVo = new ReportBoardVO();

				rVo.setReportNum(rs.getInt("reportNum"));
				rVo.setReportTitle(rs.getString("reportTitle"));
				rVo.setReportContent(rs.getString("reportContent"));
				rVo.setReportCount(rs.getInt("reportCount"));

				list.add(rVo);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return list;
	}

	// 독후감 검색 기능
	public ArrayList<ReportDAO> getReportList(HashMap<String, Object> listOpt) {

		ArrayList<ReportDAO> list = new ArrayList<ReportDAO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String opt = (String) listOpt.get("opt");
		String condition = (String) listOpt.get("condition");
		int start = (Integer) listOpt.get("start");

		try {
			conn = DBManager.getConnection();
			StringBuffer sql = new StringBuffer();

			
			if (opt == null) { // 글목록 전체를 보여줄 때
				
				sql.append("select * from report_board order by reportNum desc;");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, "%" + condition + "%");

				// StringBuffer를 비운다.
				sql.delete(0, sql.toString().length());
		
			} else if (opt.equals("0")) { //제목으로 검색
				
				sql.append("select * from report_Board where reportTitle like ? ");
				pstmt = conn.prepareStatement(sql.toString());
				pstmt.setString(1, "%" + condition + "%");

				sql.delete(0, sql.toString().length());
			}

		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}

		return list;
	}
}
