/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author chautrieu
 */
@Entity
@Table(name = "ClaimStatus", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ClaimStatus.findAll", query = "SELECT c FROM ClaimStatus c"),
    @NamedQuery(name = "ClaimStatus.findByStatusId", query = "SELECT c FROM ClaimStatus c WHERE c.statusId = :statusId"),
    @NamedQuery(name = "ClaimStatus.findByStatusName", query = "SELECT c FROM ClaimStatus c WHERE c.statusName = :statusName")})
public class ClaimStatus implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "StatusId", nullable = false)
    private Integer statusId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 15)
    @Column(name = "StatusName", nullable = false, length = 15)
    private String statusName;
    @OneToMany(mappedBy = "statusId")
    private List<Claim> claimList;

    public ClaimStatus() {
    }

    public ClaimStatus(Integer statusId) {
        this.statusId = statusId;
    }

    public ClaimStatus(Integer statusId, String statusName) {
        this.statusId = statusId;
        this.statusName = statusName;
    }

    public Integer getStatusId() {
        return statusId;
    }

    public void setStatusId(Integer statusId) {
        this.statusId = statusId;
    }

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    @XmlTransient
    public List<Claim> getClaimList() {
        return claimList;
    }

    public void setClaimList(List<Claim> claimList) {
        this.claimList = claimList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (statusId != null ? statusId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ClaimStatus)) {
            return false;
        }
        ClaimStatus other = (ClaimStatus) object;
        if ((this.statusId == null && other.statusId != null) || (this.statusId != null && !this.statusId.equals(other.statusId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.ClaimStatus[ statusId=" + statusId + " ]";
    }
    
}
