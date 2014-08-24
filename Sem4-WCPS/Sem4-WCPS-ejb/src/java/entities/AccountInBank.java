/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author chautrieu
 */
@Entity
@Table(name = "AccountInBank", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AccountInBank.findAll", query = "SELECT a FROM AccountInBank a"),
    @NamedQuery(name = "AccountInBank.findByAccountId", query = "SELECT a FROM AccountInBank a WHERE a.accountId = :accountId")})
public class AccountInBank implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "AccountId", nullable = false)
    private Integer accountId;
    @JoinColumn(name = "RecordId", referencedColumnName = "RecordId")
    @ManyToOne
    private TransactionRecord recordId;
    @JoinColumn(name = "EmployeeId", referencedColumnName = "EmployeeId")
    @ManyToOne
    private Employee employeeId;

    public AccountInBank() {
    }

    public AccountInBank(Integer accountId) {
        this.accountId = accountId;
    }

    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    public TransactionRecord getRecordId() {
        return recordId;
    }

    public void setRecordId(TransactionRecord recordId) {
        this.recordId = recordId;
    }

    public Employee getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (accountId != null ? accountId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AccountInBank)) {
            return false;
        }
        AccountInBank other = (AccountInBank) object;
        if ((this.accountId == null && other.accountId != null) || (this.accountId != null && !this.accountId.equals(other.accountId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.AccountInBank[ accountId=" + accountId + " ]";
    }
    
}
