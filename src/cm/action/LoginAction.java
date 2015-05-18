package cm.action;

import Dao.ConSql;
import Dao.VerCode;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.IOException;

/**
 * Created by online on 15-4-2.
 */
public class LoginAction extends ActionSupport {
    private String username;
    private String password;
    private String way;
    private String verfi;

    public String getVerfi() {
        return verfi;
    }

    public void setVerfi(String verfi) {
        this.verfi = verfi;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getWay() {
        return way;
    }

    public void setWay(String way) {
        this.way = way;
    }


    public String login() throws Exception{//判断是否有未输入的文本框
        ActionContext ac = ActionContext.getContext();
        if (getPassword().equals("")||getUsername().equals("")||getVerfi().equals("")||getWay().equals("")){
            setPassword("");
            String s = "请输入完整的信息";
            addActionMessage(s);//向请求后的页面发送这个文字信息。
            return ERROR;
        }
        else if (!ConSql.validationUser(getWay(), getUsername(), getPassword())){//判断用户信息是否正确
            setPassword("");
            String s ="用户名或者密码错误";
            addActionMessage(s);
            return ERROR;
        }else if (!getVerfi().equalsIgnoreCase((String)ac.getSession().get("verfi"))){//防止暴力登录，加入验证码功能。不区分大小写
            String s ="验证码错误";
            addActionMessage(s);
            return ERROR;
        }
        else if (getWay().equals("教师")){
            ac.getSession().put("user",getUsername());
            return "success-class";
      }
        else {
            ac.getSession().put("user",getUsername());
            return "success-man";
        }

    }
    public void img() throws IOException {//验证码图片功能
        ActionContext ac = ActionContext.getContext();
        HttpServletRequest req = ServletActionContext.getRequest();
        HttpServletResponse resp = ServletActionContext.getResponse();
        VerCode verfi = new VerCode();
        BufferedImage bi = verfi.getImage();
        ac.getSession().put("verfi",verfi.getText());
        VerCode.output(bi,resp.getOutputStream());
    }

}
