/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package AdminPackage;

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
    @NamedQuery(name = "Admin.searchByName", query = "SELECT z FROM Admin z WHERE z.aname=:x and z.apass=:y"),
})
public class Admin implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String aname;
    private String apass;

    public String getApass() {
        return apass;
    }

    public void setApass(String apass) {
        this.apass = apass;
    }
    

    public String getAname() {
        return aname;
    }

    public void setAname(String id) {
        this.aname= id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (aname != null ? aname.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Admin)) {
            return false;
        }
        Admin other = (Admin) object;
        if ((this.aname == null && other.aname != null) || (this.aname!= null && !this.aname.equals(other.aname))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "model.Admin[ aname=" + aname + " ]";
    }
    
}
