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
@Table(name = "TypeOfTransition", catalog = "DataSem4", schema = "dbo")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "TypeOfTransition.findAll", query = "SELECT t FROM TypeOfTransition t"),
    @NamedQuery(name = "TypeOfTransition.findByTypeId", query = "SELECT t FROM TypeOfTransition t WHERE t.typeId = :typeId"),
    @NamedQuery(name = "TypeOfTransition.findByTypeName", query = "SELECT t FROM TypeOfTransition t WHERE t.typeName = :typeName")})
public class TypeOfTransition implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "TypeId", nullable = false)
    private Integer typeId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 63)
    @Column(name = "TypeName", nullable = false, length = 63)
    private String typeName;
    @OneToMany(mappedBy = "typeId")
    private List<TransactionRecord> transactionRecordList;

    public TypeOfTransition() {
    }

    public TypeOfTransition(Integer typeId) {
        this.typeId = typeId;
    }

    public TypeOfTransition(Integer typeId, String typeName) {
        this.typeId = typeId;
        this.typeName = typeName;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    @XmlTransient
    public List<TransactionRecord> getTransactionRecordList() {
        return transactionRecordList;
    }

    public void setTransactionRecordList(List<TransactionRecord> transactionRecordList) {
        this.transactionRecordList = transactionRecordList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (typeId != null ? typeId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TypeOfTransition)) {
            return false;
        }
        TypeOfTransition other = (TypeOfTransition) object;
        if ((this.typeId == null && other.typeId != null) || (this.typeId != null && !this.typeId.equals(other.typeId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entities.TypeOfTransition[ typeId=" + typeId + " ]";
    }
    
}
