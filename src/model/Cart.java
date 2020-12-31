package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "cartID")
	private int cartID;

	@Column(name = "quantity")
	private int quantity;

	@ManyToOne(optional = false)
	@JoinColumn(name = "userID", referencedColumnName = "userID")
	private User user;

	@ManyToOne(optional = false)
	@JoinColumn(name = "productID", referencedColumnName = "productID")
	private Product product;

	public Cart() {
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart(int quantity, User user, Product product) {
		super();
		this.quantity = quantity;
		this.user = user;
		this.product = product;
	}
}
