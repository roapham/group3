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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "ClaimContain", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ClaimContain.findAll", query = "SELECT c FROM ClaimContain c"),
    @NamedQuery(name = "ClaimContain.findByClaimContainId", query = "SELECT c FROM ClaimContain c WHERE c.claimContainId = :claimContainId"),
    @NamedQuery(name = "ClaimContain.findByCost", query = "SELECT c FROM ClaimContain c WHERE c.cost = :cost"),
    @NamedQuery(name = "ClaimContain.findByServiceProvider", query = "SELECT c FROM ClaimContain c WHERE c.serviceProvider = :serviceProvider"),
    @NamedQuery(name = "ClaimContain.findByProviderAddress", query = "SELECT c FROM ClaimContain c WHERE c.providerAddress = :providerAddress"),
    @NamedQuery(name = "ClaimContain.findByProviderPhone", query = "SELECT c FROM ClaimContain c WHERE c.providerPhone = :providerPhone"),
    @NamedQuery(name = "ClaimContain.findByProviderEmail", query = "SELECT c FROM ClaimContain c WHERE c.providerEmail = :providerEmail")})
public class ClaimContain implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ClaimContainId", nullable = false)
    private Integer claimContainId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Cost", nullable = false)
    private long cost;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "ServiceProvider", nullable = false, length = 255)
    private String serviceProvider;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "ProviderAddress", nullable = false, length = 255)
    private String providerAddress;
    @Size(max = 15)
    @Column(name = "ProviderPhone", length = 15)
    private String providerPhone;
    @Size(max = 255)
    @Column(name = "ProviderEmail", length = 255)
    private String providerEmail;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "claimContainId")
    private List<Claim> claimList;
    @JoinColumn(name = "TreatmentId", referencedColumnName = "TreatmentId", nullable = false)
    @ManyToOne(optional = false)
    private TreatmentList treatmentId;

    public ClaimContain() {
    }

    public ClaimContain(Integer claimContainId) {
        this.claimContainId = claimContainId;
    }

    public ClaimContain(Integer claimContainId, long cost, String serviceProvider, String providerAddress) {
        this.claimContainId = claimContainId;
        this.cost = cost;
        this.serviceProvider = serviceProvider;
        this.providerAddress = providerAddress;
    }

    public Integer getClaimContainId() {
        return claimContainId;
    }

    public void setClaimContainId(Integer claimContainId) {
        this.claimContainId = claimContainId;
    }

    public long getCost() {
        return cost;
    }

    public void setCost(long cost) {
        this.cost = cost;
    }

    public String getServiceProvider() {
        return serviceProvider;
    }

    public void setServiceProvider(String serviceProvider) {
        this.serviceProvider = serviceProvider;
    }

    public String getProviderAddress() {
        return providerAddress;
    }

    public void setProviderAddress(String providerAddress) {
        this.providerAddress = providerAddress;
    }

    public String getProviderPhone() {
        return providerPhone;
    }

    public void setProviderPhone(String providerPhone) {
        this.providerPhone = providerPhone;
    }

    public String getProviderEmail() {
        return providerEmail;
    }

    public void setProviderEmail(String providerEmail) {
        this.providerEmail = providerEmail;
    }

    @XmlTransient
    public List<Claim> getClaimList() {
        return claimList;
    }

    public void setClaimList(List<Claim> claimList) {
        this.claimList = claimList;
    }

    public TreatmentList getTreatmentId() {
        return treatmentId;
    }

    public void setTreatmentId(TreatmentList treatmentId) {
        this.treatmentId = treatmentId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (claimContainId != null ? claimContainId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ClaimContain)) {
            return false;
        }
        ClaimContain other = (ClaimContain) object;
        if ((this.claimContainId == null && other.claimContainId != null) || (this.claimContainId != null && !this.claimContainId.equals(other.claimContainId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.ClaimContain[ claimContainId=" + claimContainId + " ]";
    }
    
}
