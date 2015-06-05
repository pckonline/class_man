package cm.action;

import Dao.ConApply;
import com.opensymphony.xwork2.ActionSupport;


/**
 * Created by online on 15-4-8.
 */
public class ClassroomAction  extends ActionSupport{
    private String aname;
    private String  aid;
    private String reason;
    private String year;
    private String month;
    private String day;
    private String classid;
    private String amail;

    public String getAmail() {
        return amail;
    }

    public void setAmail(String amail) {
        this.amail = amail;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getClassid() {
        return classid;
    }

    public void setClassid(String classid) {
        this.classid = classid;
    }

    public String sub(){
        String time = getYear()+"-"+getMonth()+"-"+getDay();
        ConApply.classApply(getAname(),getAid(),getReason(),time,getClassid(),"未批改");
        setAid("");
        setAname("");
        setClassid("");
        setDay("");
        setMonth("");
        setYear("");
        setReason("");
        return SUCCESS;
    }

}
