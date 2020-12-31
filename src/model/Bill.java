package model;

import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "bill")
public class Bill {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "billID")
	private int billID;
	
	@Column(name = "address")
	private String address;
	
	@Column(name = "date")
	//@Temporal(TemporalType.DATE)
	private Date date;
	
	@Column(name = "total")
	private double total;
	
	@Column(name = "paid")
	private boolean paid;
	
	@Column(name = "state")
	private boolean state;
	
	
	@OneToMany(mappedBy="bill",cascade=CascadeType.ALL)
	private Set<BillDetail> billDetail;

	public int getBillID() {
		return billID;
	}

	public void setBillID(int billID) {
		this.billID = billID;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public boolean isPaid() {
		return paid;
	}

	public void setPaid(boolean paid) {
		this.paid = paid;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	public Set<BillDetail> getBillDetail() {
		return billDetail;
	}

	public void setBillDetail(Set<BillDetail> billDetail) {
		this.billDetail = billDetail;
	}

	public Bill(int billID, String address, Date date, double total, boolean paid, boolean state,
			Set<BillDetail> billDetail) {
		super();
		this.billID = billID;
		this.address = address;
		this.date = date;
		this.total = total;
		this.paid = paid;
		this.state = state;
		this.billDetail = billDetail;
	}
	public Bill() {}
}
