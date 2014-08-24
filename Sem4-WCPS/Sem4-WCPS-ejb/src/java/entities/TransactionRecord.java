/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author chautrieu
 */
@Entity
@Table(name = "TransactionRecord", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TransactionRecord.findAll", query = "SELECT t FROM TransactionRecord t"),
    @NamedQuery(name = "TransactionRecord.findByRecordId", query = "SELECT t FROM TransactionRecord t WHERE t.recordId = :recordId"),
    @NamedQuery(name = "TransactionRecord.findByDateOfTransaction", query = "SELECT t FROM TransactionRecord t WHERE t.dateOfTransaction = :dateOfTransaction"),
    @NamedQuery(name = "TransactionRecord.findByDeposit", query = "SELECT t FROM TransactionRecord t WHERE t.deposit = :deposit"),
    @NamedQuery(name = "TransactionRecord.findByReceiveFrom", query = "SELECT t FROM TransactionRecord t WHERE t.receiveFrom = :receiveFrom"),
    @NamedQuery(name = "TransactionRecord.findByWithdrawal", query = "SELECT t FROM TransactionRecord t WHERE t.withdrawal = :withdrawal"),
    @NamedQuery(name = "TransactionRecord.findByPayTo", query = "SELECT t FROM TransactionRecord t WHERE t.payTo = :payTo"),
    @NamedQuery(name = "TransactionRecord.findByBalance", query = "SELECT t FROM TransactionRecord t WHERE t.balance = :balance"),
    @NamedQuery(name = "TransactionRecord.findByMemo", query = "SELECT t FROM TransactionRecord t WHERE t.memo = :memo")})
public class TransactionRecord implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "RecordId", nullable = false)
    private Integer recordId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DateOfTransaction", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfTransaction;
    @Column(name = "Deposit")
    private Long deposit;
    @Size(max = 255)
    @Column(name = "ReceiveFrom", length = 255)
    private String receiveFrom;
    @Column(name = "Withdrawal")
    private Long withdrawal;
    @Size(max = 255)
    @Column(name = "PayTo", length = 255)
    private String payTo;
    @Column(name = "Balance")
    private Long balance;
    @Size(max = 1024)
    @Column(name = "Memo", length = 1024)
    private String memo;
    @JoinColumn(name = "TypeId", referencedColumnName = "TypeId")
    @ManyToOne
    private TypeOfTransition typeId;
    @OneToMany(mappedBy = "recordId")
    private List<AccountInBank> accountInBankList;

    public TransactionRecord() {
    }

    public TransactionRecord(Integer recordId) {
        this.recordId = recordId;
    }

    public TransactionRecord(Integer recordId, Date dateOfTransaction) {
        this.recordId = recordId;
        this.dateOfTransaction = dateOfTransaction;
    }

    public Integer getRecordId() {
        return recordId;
    }

    public void setRecordId(Integer recordId) {
        this.recordId = recordId;
    }

    public Date getDateOfTransaction() {
        return dateOfTransaction;
    }

    public void setDateOfTransaction(Date dateOfTransaction) {
        this.dateOfTransaction = dateOfTransaction;
    }

    public Long getDeposit() {
        return deposit;
    }

    public void setDeposit(Long deposit) {
        this.deposit = deposit;
    }

    public String getReceiveFrom() {
        return receiveFrom;
    }

    public void setReceiveFrom(String receiveFrom) {
        this.receiveFrom = receiveFrom;
    }

    public Long getWithdrawal() {
        return withdrawal;
    }

    public void setWithdrawal(Long withdrawal) {
        this.withdrawal = withdrawal;
    }

    public String getPayTo() {
        return payTo;
    }

    public void setPayTo(String payTo) {
        this.payTo = payTo;
    }

    public Long getBalance() {
        return balance;
    }

    public void setBalance(Long balance) {
        this.balance = balance;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public TypeOfTransition getTypeId() {
        return typeId;
    }

    public void setTypeId(TypeOfTransition typeId) {
        this.typeId = typeId;
    }

    @XmlTransient
    public List<AccountInBank> getAccountInBankList() {
        return accountInBankList;
    }

    public void setAccountInBankList(List<AccountInBank> accountInBankList) {
        this.accountInBankList = accountInBankList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (recordId != null ? recordId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TransactionRecord)) {
            return false;
        }
        TransactionRecord other = (TransactionRecord) object;
        if ((this.recordId == null && other.recordId != null) || (this.recordId != null && !this.recordId.equals(other.recordId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TransactionRecord[ recordId=" + recordId + " ]";
    }
    
}
