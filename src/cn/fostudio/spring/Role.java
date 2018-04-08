package cn.fostudio.spring;

public class Role {
	private float height;
	private boolean isHigh;
	private String name;

	public void init() {
		System.out.println("Its init");
	}

	public void destroy() {
		System.out.println("Destroy");
	}

	public boolean getIsHigh() {
		return isHigh;
	}

	public void setIsHigh(boolean isHigh) {
		this.isHigh = isHigh;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public float getHeight() {
		return height;
	}

	public void setHeight(float height) {
		this.height = height;
	}
}