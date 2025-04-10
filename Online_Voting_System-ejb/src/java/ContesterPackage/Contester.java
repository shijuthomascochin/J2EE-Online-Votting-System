/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ContesterPackage;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;

/**
 *
 * @author akhil
 */
@Entity
@NamedQueries({
    @NamedQuery(name = "Contester.searchByName", query = "SELECT z FROM Contester z WHERE z.uname=:x and z.pass=:y"),
    @NamedQuery(name = "Contester.fSchPid", query = "SELECT z FROM Contester z WHERE z.school_id=:x and z.pid=:y"),
    @NamedQuery(name = "Contester.findSchool", query = "SELECT z FROM Contester z WHERE z.school_id=:x"),
})
public class Contester implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String sid;
    private String sname;
    private String pid;
    private String pname;
    private String school_id;
    private String school_name;
    private String uname;
    private String pass;
    private Integer vcount;

    public String getSid() {
        return sid;
    }

    public void setSid(String sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getSchool_id() {
        return school_id;
    }

    public void setSchool_id(String school_id) {
        this.school_id = school_id;
    }

    public String getSchool_name() {
        return school_name;
    }

    public void setSchool_name(String school_name) {
        this.school_name = school_name;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public Integer getVcount() {
        return vcount;
    }

    public void setVcount(Integer vcount) {
        this.vcount = vcount;
    }
      

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (sid != null ? sid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contester)) {
            return false;
        }
        Contester other = (Contester) object;
        if ((this.sid == null && other.sid != null) || (this.sid != null && !this.sid.equals(other.sid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ContesterPackage.Contester[ sid=" + sid + " ]";
    }
    
}
