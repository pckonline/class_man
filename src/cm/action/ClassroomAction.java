package cm.action;

import com.opensymphony.xwork2.ActionSupport;
import freemarker.template.Configuration;


/**
 * Created by online on 15-4-8.
 */
public class ClassroomAction  extends ActionSupport{
    private String aname;
    private int aid;
    private String reason;
    private String year;
    private String month;
    private String day;
    private int classid;
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

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
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

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

}
