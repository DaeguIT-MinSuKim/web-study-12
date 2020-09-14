package web_study_12.dao.impl;

import java.sql.Connection;
import java.util.List;

import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;

import web_study_12.ds.JdbcUtil;
import web_study_12.dto.Board;

public class BoardDaoImplTest {
    private static BoardDaoImpl dao;
    private static Connection con;
    
    @BeforeClass
    public static void setUpBeforeClass() throws Exception {
        dao = BoardDaoImpl.getInstance();
        con = JdbcUtil.getConnection();
        dao.setCon(con);
    }


    @Test
    public void testSelectBoardByAll() {
        System.out.println("testSelectBoardByAll()");
        List<Board> list = dao.selectBoardByAll();
        Assert.assertNotNull(list);
        list.stream().forEach(System.out::println);
    }

    @Test
    public void testInsertBoard() {
        System.out.println("testInsertBoard()");
        Board board = new Board();
        board.setPass("1111");
        board.setName("홍길동");
        board.setEmail("test@aaa.co.kr");
        board.setTitle("MVC Test");
        board.setContent("Model-View-Controller (JSP개발자는반드시알고있어야하는패턴)" + 
                "모델-비즈니스영역의상태정보를처리한다." + 
                "뷰-비즈니스영역에대한프레젠테이션뷰(즉, 사용자가보게될결과화면)를담당한다." + 
                "컨트롤러-사용자의입력및흐름제어를담당한다.");
        int res = dao.insertBoard(board);
        Assert.assertEquals(1, res);
    }

    @Test
    public void testUpdateReadCount() {
        System.out.println("testUpdateReadCount()");
        dao.updateReadCount(1);
    }

    @Test
    public void testSelectBoardByNum() {
        System.out.println("testSelectBoardByNum()");
        Board board = dao.selectBoardByNum(1);
        Assert.assertNotNull(board);
        System.out.println(board);
    }

    @Test
    public void testUpdateBoard() {
        System.out.println("testUpdateBoard()");
        Board board = new Board();
        board.setNum(1);
        board.setName("서현진");
        board.setEmail("seohj@tset.co.kr");
        board.setPass("5678");
        board.setTitle("기초를 충실히");
        board.setContent("기초를 충실히");
        int res = dao.updateBoard(board);
        Assert.assertEquals(1, res);
    }

    @Test
    public void testCheckPassword() {
        System.out.println("testCheckPassword()");
        Board board = dao.checkPassword("1234", 2);
        Assert.assertNotNull(board);
        System.out.println(board);
    }

    @Test
    public void testDeleteBoard() {
        System.out.println("testDeleteBoard()");
        int res = dao.deleteBoard(7);
        Assert.assertEquals(1, res);
    }

}
