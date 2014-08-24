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
@Table(name = "Employee", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Employee.findAll", query = "SELECT e FROM Employee e"),
    @NamedQuery(name = "Employee.findByEmployeeId", query = "SELECT e FROM Employee e WHERE e.employeeId = :employeeId"),
    @NamedQuery(name = "Employee.findByImage", query = "SELECT e FROM Employee e WHERE e.image = :image"),
    @NamedQuery(name = "Employee.findByFirstName", query = "SELECT e FROM Employee e WHERE e.firstName = :firstName"),
    @NamedQuery(name = "Employee.findByLastName", query = "SELECT e FROM Employee e WHERE e.lastName = :lastName"),
    @NamedQuery(name = "Employee.findByGender", query = "SELECT e FROM Employee e WHERE e.gender = :gender"),
    @NamedQuery(name = "Employee.findByDateOfBirth", query = "SELECT e FROM Employee e WHERE e.dateOfBirth = :dateOfBirth"),
    @NamedQuery(name = "Employee.findByAddress", query = "SELECT e FROM Employee e WHERE e.address = :address"),
    @NamedQuery(name = "Employee.findByPhoneNumber", query = "SELECT e FROM Employee e WHERE e.phoneNumber = :phoneNumber"),
    @NamedQuery(name = "Employee.findByEmail", query = "SELECT e FROM Employee e WHERE e.email = :email"),
    @NamedQuery(name = "Employee.findByDateOfJoining", query = "SELECT e FROM Employee e WHERE e.dateOfJoining = :dateOfJoining"),
    @NamedQuery(name = "Employee.findByNote", query = "SELECT e FROM Employee e WHERE e.note = :note")})
public class Employee implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "EmployeeId", nullable = false)
    private Integer employeeId;
    @Size(max = 255)
    @Column(name = "Image", length = 255)
    private String image;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 31)
    @Column(name = "FirstName", nullable = false, length = 31)
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 31)
    @Column(name = "LastName", nullable = false, length = 31)
    private String lastName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Gender", nullable = false)
    private boolean gender;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DateOfBirth", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfBirth;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 127)
    @Column(name = "Address", nullable = false, length = 127)
    private String address;
    @Size(max = 15)
    @Column(name = "PhoneNumber", length = 15)
    private String phoneNumber;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 63)
    @Column(name = "Email", length = 63)
    private String email;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DateOfJoining", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dateOfJoining;
    @Size(max = 255)
    @Column(name = "Note", length = 255)
    private String note;
    @OneToMany(mappedBy = "employeeId")
    private List<Claim> claimList;
    @OneToMany(mappedBy = "employeeId")
    private List<AccountInCompany> accountInCompanyList;
    @OneToMany(mappedBy = "employeeId")
    private List<AccountInBank> accountInBankList;

    public Employee() {
    }

    public Employee(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public Employee(Integer employeeId, String firstName, String lastName, boolean gender, Date dateOfBirth, String address, Date dateOfJoining) {
        this.employeeId = employeeId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.dateOfJoining = dateOfJoining;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public boolean getGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getDateOfJoining() {
        return dateOfJoining;
    }

    public void setDateOfJoining(Date dateOfJoining) {
        this.dateOfJoining = dateOfJoining;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @XmlTransient
    public List<Claim> getClaimList() {
        return claimList;
    }

    public void setClaimList(List<Claim> claimList) {
        this.claimList = claimList;
    }

    @XmlTransient
    public List<AccountInCompany> getAccountInCompanyList() {
        return accountInCompanyList;
    }

    public void setAccountInCompanyList(List<AccountInCompany> accountInCompanyList) {
        this.accountInCompanyList = accountInCompanyList;
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
        hash += (employeeId != null ? employeeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Employee)) {
            return false;
        }
        Employee other = (Employee) object;
        if ((this.employeeId == null && other.employeeId != null) || (this.employeeId != null && !this.employeeId.equals(other.employeeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.Employee[ employeeId=" + employeeId + " ]";
    }
    
}
