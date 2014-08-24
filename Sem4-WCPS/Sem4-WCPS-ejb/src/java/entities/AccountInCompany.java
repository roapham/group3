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
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author chautrieu
 */
@Entity
@Table(name = "AccountInCompany", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "AccountInCompany.findAll", query = "SELECT a FROM AccountInCompany a"),
    @NamedQuery(name = "AccountInCompany.findByAccountId", query = "SELECT a FROM AccountInCompany a WHERE a.accountId = :accountId"),
    @NamedQuery(name = "AccountInCompany.findByUserName", query = "SELECT a FROM AccountInCompany a WHERE a.userName = :userName"),
    @NamedQuery(name = "AccountInCompany.findByPassword", query = "SELECT a FROM AccountInCompany a WHERE a.password = :password")})
public class AccountInCompany implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "AccountId", nullable = false)
    private Integer accountId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 127)
    @Column(name = "UserName", nullable = false, length = 127)
    private String userName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 127)
    @Column(name = "Password", nullable = false, length = 127)
    private String password;
    @JoinColumn(name = "RoleId", referencedColumnName = "RoleId", nullable = false)
    @ManyToOne(optional = false)
    private Role roleId;
    @JoinColumn(name = "EmployeeId", referencedColumnName = "EmployeeId")
    @ManyToOne
    private Employee employeeId;

    public AccountInCompany() {
    }

    public AccountInCompany(Integer accountId) {
        this.accountId = accountId;
    }

    public AccountInCompany(Integer accountId, String userName, String password) {
        this.accountId = accountId;
        this.userName = userName;
        this.password = password;
    }

    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
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
        if (!(object instanceof AccountInCompany)) {
            return false;
        }
        AccountInCompany other = (AccountInCompany) object;
        if ((this.accountId == null && other.accountId != null) || (this.accountId != null && !this.accountId.equals(other.accountId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.AccountInCompany[ accountId=" + accountId + " ]";
    }
    
}
