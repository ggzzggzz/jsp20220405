package chap08;

// 이 클래스의 속성
// productModel, discountPrice

public class MyBean2 {
	private String model;
	private int price;
	
	public String getProductModel() {
		return model;
	}
	
	public int getDiscountPrice() {
		return price;
	}
	
	public boolean isHighPrice() {
		return price > 10000;
	}
}
