package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by online on 15-4-19.
 */
public class ConApply {
    public static void classApply(String aname, String aid, String reason, String time, String classid, String state) {
        //写入申请表
        Connection con = null;
        ResultSet res = null;
        Statement sta = null;
        try {
            con = ConSql.getCon();
            sta = con.createStatement();
            String sql = "insert into classApply(aname,aid,reason,time,classid,state) values(" + "'" + aname + "'" + "," + "'" + aid + "'" + "," + "'" + reason + "'" + "," + "'" + time + "'" + "," + "'" + classid + "'" + "," + "'" + state + "'" + ");";
            sta.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ConSql.closeAll(res, sta, con);
    }

    public static String noCorrect() {
        //查看未批改的申请
        Connection con = null;
        ResultSet res = null;
        Statement sta = null;
        int i = 0;
        String kong = "<ul><li>已经批改完毕</li></ul>";
        String requ = "<ul>" + "<li>序号</li><li>姓名</li><li>学号</li><li>原由</li></ul>";
        try {
            con = ConSql.getCon();
            sta = con.createStatement();
            String sql = "select * from classApply where state='未批改';";
            res = sta.executeQuery(sql);
            while (res.next()) {
                i++;
                String id = res.getString(1);
                String aname = res.getString(2);
                String aid = res.getString(3);
                String reason = res.getString(4);
                requ = requ + "<ul><li>" + id + "</li><li>" + aname + "</li><li>" + aid + "</li><li class=\"reason\">" + reason + "</li></ul>";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return requ;
        }
        if (i > 0) {
            return requ;
        } else {
            return kong;
        }

    }

    public static void rest(String id, String result) {
        Connection con = null;
        Statement sta = null;
        try {
            con = ConSql.getCon();
            sta = con.createStatement();
            String sql = "update classApply set state='" + result + "' where id='" + id + "';";
            int i = sta.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static String checkResult() {
        //用户查看批改的结果
        Connection con = null;
        ResultSet res = null;
        Statement sta = null;
        String requ = "<ul>" + "<li>序号</li><li>姓名</li><li>学号</li><li>结果</li></ul>";
        try {
            con = ConSql.getCon();
            sta = con.createStatement();
            String sql = "select * from classApply;";
            res = sta.executeQuery(sql);
            while (res.next()) {
                String id = res.getString(1);
                String aname = res.getString(2);
                String aid = res.getString(3);
                String state = res.getString(7);
                requ = requ + "<ul><li>" + id + "</li><li>" + aname + "</li><li>" + aid + "</li><li>" + state + "</li></ul>";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return requ;
        }

            return requ;
    }
}
