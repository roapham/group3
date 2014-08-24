/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
@Table(name = "TreatmentList", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TreatmentList.findAll", query = "SELECT t FROM TreatmentList t"),
    @NamedQuery(name = "TreatmentList.findByTreatmentId", query = "SELECT t FROM TreatmentList t WHERE t.treatmentId = :treatmentId"),
    @NamedQuery(name = "TreatmentList.findByTreatmentName", query = "SELECT t FROM TreatmentList t WHERE t.treatmentName = :treatmentName")})
public class TreatmentList implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "TreatmentId", nullable = false)
    private Integer treatmentId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "TreatmentName", nullable = false, length = 255)
    private String treatmentName;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "treatmentId")
    private List<ClaimContain> claimContainList;

    public TreatmentList() {
    }

    public TreatmentList(Integer treatmentId) {
        this.treatmentId = treatmentId;
    }

    public TreatmentList(Integer treatmentId, String treatmentName) {
        this.treatmentId = treatmentId;
        this.treatmentName = treatmentName;
    }

    public Integer getTreatmentId() {
        return treatmentId;
    }

    public void setTreatmentId(Integer treatmentId) {
        this.treatmentId = treatmentId;
    }

    public String getTreatmentName() {
        return treatmentName;
    }

    public void setTreatmentName(String treatmentName) {
        this.treatmentName = treatmentName;
    }

    @XmlTransient
    public List<ClaimContain> getClaimContainList() {
        return claimContainList;
    }

    public void setClaimContainList(List<ClaimContain> claimContainList) {
        this.claimContainList = claimContainList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (treatmentId != null ? treatmentId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TreatmentList)) {
            return false;
        }
        TreatmentList other = (TreatmentList) object;
        if ((this.treatmentId == null && other.treatmentId != null) || (this.treatmentId != null && !this.treatmentId.equals(other.treatmentId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TreatmentList[ treatmentId=" + treatmentId + " ]";
    }
    
}
