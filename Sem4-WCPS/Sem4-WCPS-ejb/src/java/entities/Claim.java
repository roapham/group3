/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author chautrieu
 */
@Entity
@Table(name = "Claim", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Claim.findAll", query = "SELECT c FROM Claim c"),
    @NamedQuery(name = "Claim.findByClaimId", query = "SELECT c FROM Claim c WHERE c.claimId = :claimId"),
    @NamedQuery(name = "Claim.findByDateOfClaim", query = "SELECT c FROM Claim c WHERE c.dateOfClaim = :dateOfClaim"),
    @NamedQuery(name = "Claim.findByHeader", query = "SELECT c FROM Claim c WHERE c.header = :header"),
    @NamedQuery(name = "Claim.findByDateOfExpense", query = "SELECT c FROM Claim c WHERE c.dateOfExpense = :dateOfExpense"),
    @NamedQuery(name = "Claim.findByNote", query = "SELECT c FROM Claim c WHERE c.note = :note")})
public class Claim implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ClaimId", nullable = false)
    private Integer claimId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DateOfClaim", nullable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date dateOfClaim;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 225)
    @Column(name = "Header", nullable = false, length = 225)
    private String header;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DateOfExpense", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfExpense;
    @Size(max = 2048)
    @Column(name = "Note", length = 2048)
    private String note;
    @JoinColumn(name = "EmployeeId", referencedColumnName = "EmployeeId")
    @ManyToOne
    private Employee employeeId;
    @JoinColumn(name = "StatusId", referencedColumnName = "StatusId")
    @ManyToOne
    private ClaimStatus statusId;
    @JoinColumn(name = "ClaimContainId", referencedColumnName = "ClaimContainId", nullable = false)
    @ManyToOne(optional = false)
    private ClaimContain claimContainId;

    public Claim() {
    }

    public Claim(Integer claimId) {
        this.claimId = claimId;
    }

    public Claim(Integer claimId, Date dateOfClaim, String header, Date dateOfExpense) {
        this.claimId = claimId;
        this.dateOfClaim = dateOfClaim;
        this.header = header;
        this.dateOfExpense = dateOfExpense;
    }

    public Integer getClaimId() {
        return claimId;
    }

    public void setClaimId(Integer claimId) {
        this.claimId = claimId;
    }

    public Date getDateOfClaim() {
        return dateOfClaim;
    }

    public void setDateOfClaim(Date dateOfClaim) {
        this.dateOfClaim = dateOfClaim;
    }

    public String getHeader() {
        return header;
    }

    public void setHeader(String header) {
        this.header = header;
    }

    public Date getDateOfExpense() {
        return dateOfExpense;
    }

    public void setDateOfExpense(Date dateOfExpense) {
        this.dateOfExpense = dateOfExpense;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Employee getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    public ClaimStatus getStatusId() {
        return statusId;
    }

    public void setStatusId(ClaimStatus statusId) {
        this.statusId = statusId;
    }

    public ClaimContain getClaimContainId() {
        return claimContainId;
    }

    public void setClaimContainId(ClaimContain claimContainId) {
        this.claimContainId = claimContainId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (claimId != null ? claimId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Claim)) {
            return false;
        }
        Claim other = (Claim) object;
        if ((this.claimId == null && other.claimId != null) || (this.claimId != null && !this.claimId.equals(other.claimId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Claim[ claimId=" + claimId + " ]";
    }
    
}
