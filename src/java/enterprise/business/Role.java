/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.business;

import java.io.Serializable;

/**
 *
 * @author xmore mmohz
 */
public class Role implements Serializable {
    private String rolename;
    private String roleid;
    
    public Role(){
        rolename="";
        roleid="";
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public String getRoleid() {
        return roleid;
    }

    public void setRoleid(String roleid) {
        this.roleid = roleid;
    }
    
}
