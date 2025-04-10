/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ElectionPackage;

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
    @NamedQuery(name = "ElePos.gVd", query = "SELECT z FROM ElePos z WHERE z.pid=:x"),
})
public class ElePos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String pid;
    private String pname;
    private String papplydate;
    private String pvotedate;

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

    public String getPapplydate() {
        return papplydate;
    }

    public void setPapplydate(String papplydate) {
        this.papplydate = papplydate;
    }

    public String getPvotedate() {
        return pvotedate;
    }

    public void setPvotedate(String pvotedate) {
        this.pvotedate = pvotedate;
    }


    @Override
    public int hashCode() {
        int hash = 0;
        hash += (pid != null ? pid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ElePos)) {
            return false;
        }
        ElePos other = (ElePos) object;
        if ((this.pid == null && other.pid != null) || (this.pid != null && !this.pid.equals(other.pid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ElectionPackage.ElePos[ pid=" + pid + " ]";
    }
    
}
