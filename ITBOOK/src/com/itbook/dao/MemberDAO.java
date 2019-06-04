package com.itbook.dao;

import util.DBManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import com.itbook.vo.MemberVO;
import com.itbook.vo.Paging;

public class MemberDAO {
	
	private static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		
		return instance;
	} // Singleton 패턴



	/**
	 * 회원 등록 메소드
	 * 회원정보를 MemberVO 객체로 받아와서 입력
	 * @param MemVO
	 */
	public void insertMember(MemberVO MemVO){
		String sql = "insert into itbook.member ("
				+"memId, memPw, jumin, memName, phone, email, authority, adr)"
				+"values (?, ?, ?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, MemVO.getMemId());
			pstmt.setString(2, MemVO.getMemPw());
			pstmt.setString(3, MemVO.getJumin());
			pstmt.setString(4, MemVO.getMemName());
			pstmt.setString(5, MemVO.getPhone());
			pstmt.setString(6, MemVO.getEmail());
			pstmt.setString(7, MemVO.getAuthority());
			pstmt.setString(8,MemVO.getAdr());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			DBManager.close(conn, pstmt);
		}
	}
	/**
	 * 회원정보를 수정하는 메소드
	 * @param memVO
	 */
	public void memberUpdate(MemberVO memVO) {
		String sql = "update itbook.member set phone = ?, email = ?, adr = ? where memId = ?";
						
						
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memVO.getPhone());
			pstmt.setString(2, memVO.getEmail());
			pstmt.setString(3, memVO.getAdr());
			pstmt.setString(4, memVO.getMemId());
			
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			DBManager.close(conn, pstmt);
		}
						
	}
	//비밀번호 변경
	public void memberPwUpdate(MemberVO memVO) {
		String sql = "update itbook.member"
						+"	set memPw = ?"
						+" where memId = ? ";
						
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memVO.getMemPw());
			pstmt.setString(2, memVO.getMemId());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		
		} finally {
			DBManager.close(conn, pstmt);
		}
						
	}
	
	/**
	 * 회원정보 삭제
	 * @param memNum
	 */
	public void memberDelete(MemberVO mVO) {
		String sql = "DELETE FROM ITBOOK.MEMBER WHERE memNum = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mVO.getMemNum());
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {

			DBManager.close(conn, pstmt);
		}
	}
	
	

	
	/**
	 * 중복확인 
	 * @param memId
	 * @return
	 */
	public int idCheck(String memId) {
		int result = -1;
		String sql = "SELECT MEMID FROM MEMBER WHERE MEMID = ?";
					
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = 1;
			}else {
				result = -1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return result;
	}
	
	
	public MemberVO getMemberInfo(MemberVO tempVO) {
		
		String sql = "SELECT * " 
			       + "  FROM itbook.member " 
				   + " WHERE memId = '" + tempVO.getMemId() + "'";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		MemberVO memVO = new MemberVO();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				memVO.setMemNum(rs.getString("memNum"));
				memVO.setMemId(rs.getString("memId"));
				memVO.setMemPw(rs.getString("memPw"));
				memVO.setMemName(rs.getString("memName"));
				memVO.setEmail(rs.getString("email"));
				memVO.setAdr(rs.getString("adr"));
				memVO.setAuthority(rs.getString("authority"));
				memVO.setPhone(rs.getString("phone"));
				memVO.setSignDate(rs.getTimestamp("signDate"));
				memVO.setJumin(rs.getString("jumin"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return memVO;
	}

	/**
	 * 로그인 정보 체크
	 * @param memVO
	 * @return
	 */
	public int loginCheck(MemberVO memVO) {
		String sql = "SELECT memId, memPw"
					+"	FROM MEMBER"
					+"	WHERE memId ='"
					+ memVO.getMemId()
					+"'";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				System.out.println(rs.getString("memId"));
				System.out.println(rs.getString("memPw"));
				if(rs.getString("memPw") != null && rs.getString("memPw").equals(memVO.getMemPw())) {
					return 1; // 로그인성공
				}else {
					return 0; // 로그인실패
				}
			}else {
				return -1;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			DBManager.close(conn, pstmt, rs);
			
		}
		return -1;
		
	}
	 public ArrayList<MemberVO> memberList() {
		   String sql = "SELECT * FROM ITBOOK.MEMBER";
		   ArrayList<MemberVO> list = new ArrayList <MemberVO>();
			
		    Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
			   
			   while (rs.next()) {
				   
				   MemberVO mVO = new MemberVO();   // MemberVO mVO = null;
				   
				   mVO.setMemNum(rs.getString("memNum"));
				   mVO.setMemId(rs.getString("memId"));
				   mVO.setMemName(rs.getString("memName"));
				   mVO.setMemPw(rs.getString("memPw"));
				   mVO.setJumin(rs.getString("jumin"));
				   mVO.setAdr(rs.getString("adr"));
				   mVO.setAuthority(rs.getString("authority"));
				   mVO.setEmail(rs.getString("email"));
				   mVO.setPhone(rs.getString("phone"));
				   mVO.setSignDate(rs.getTimestamp("signDate"));

	 			   list.add(mVO);
			   }
		   } catch (Exception e) {
			   e.printStackTrace();
		   } finally {
			DBManager.close(conn, pstmt, rs);

		   }
		   return list ;

	   }
	 

	 // 총게시글 수 보기
		public Paging memberRowCount(Paging paging) {
			int cnt = 0;
			String sql = "SELECT COUNT(*) CNT"
		            + "     FROM itbook.member";
		      
		         Connection conn = null;
		         PreparedStatement stmt = null;
		         ResultSet rs = null;
		         
		         try
		         {
		            conn = DBManager.getConnection();
		            stmt = conn.prepareStatement(sql);
		            
		            rs = stmt.executeQuery();
		            
		            while (rs.next())
		            {
		               cnt = rs.getInt("CNT");
		               paging.setNumOfRow(cnt);;
		            }
		            
		         }
		         catch (Exception e)
		         {
		            e.printStackTrace();
		         }finally {
		 			DBManager.close(conn, stmt);
		 		}
		         return paging;
		   }
	 
	 
	 public ArrayList<MemberVO> memberListP(Paging paging){
		 String sql = "SELECT * FROM ITBOOK.MEMBER order by memNum desc limit ?, 10";
		 
		 Connection conn = null;
		 PreparedStatement pstmt = null;
		 ResultSet rs = null;
		 
		 ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		 
		 try {
			 conn = DBManager.getConnection();
			 pstmt = conn.prepareStatement(sql);
			 pstmt.setInt(1, ((paging.getPageNum() - 1) * paging.getPerPage()));
			 rs = pstmt.executeQuery();
			 
			 while(rs.next()) {
				 MemberVO mVO = new MemberVO();
				 
				   mVO.setMemNum(rs.getString("memNum"));
				   mVO.setMemId(rs.getString("memId"));
				   mVO.setMemName(rs.getString("memName"));
				   mVO.setMemPw(rs.getString("memPw"));
				   mVO.setJumin(rs.getString("jumin"));
				   mVO.setAdr(rs.getString("adr"));
				   mVO.setAuthority(rs.getString("authority"));
				   mVO.setEmail(rs.getString("email"));
				   mVO.setPhone(rs.getString("phone"));
				   mVO.setSignDate(rs.getTimestamp("signDate"));

	 			   list.add(mVO);
			 }
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
		DBManager.close(conn, pstmt, rs);

		}
		 return list;
		 
	 }
	 
	 public MemberVO getEmail(String memNum) {
		
		String sql = "Select email from itbook.member where memNum = ?";
		MemberVO mVo = null; 
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memNum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mVo = new MemberVO();
				mVo.setMemNum(rs.getString("memNum"));
				mVo.setEmail(rs.getString("email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mVo;
		
	 }
	

}