package cm.action;

import Dao.ConApply;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by online on 15-5-11.
 */
public class CorrectAction extends ActionSupport {
    private String id;
    private String result;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
    public String resu(){

            ActionContext ac = ActionContext.getContext();
            ac.getSession().put("mail",null);
            ConApply.rest(getId(),getResult());
            String mail=ConApply.toMail(getId());
            ac.getSession().put("mail",mail);
            if (getResult().equals("是")){
                return SUCCESS;
        }
        else {
                return ERROR;
            }
    }
}
