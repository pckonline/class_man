package Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Created by online on 15-4-19.
 */
public class ConApply {
    public static void classApply(String aname,String aid,String reason,String time,String classid,String state){
        //写入申请表
        Connection con = null;
        ResultSet res = null;
        Statement sta = null;
        try{
            con = ConSql.getCon();
            sta= con.createStatement();
            String sql="insert into classApply(aname,aid,reason,time,classid,state) values("+"'"+aname+"'"+","+"'"+aid+"'"+","+"'"+reason+"'"+","+"'"+time+"'"+","+"'"+classid+"'"+","+"'"+state+"'"+");";
            sta.executeUpdate(sql);
        }catch (Exception e){
            e.printStackTrace();
        }
        ConSql.closeAll(res,sta,con);
    }
}
