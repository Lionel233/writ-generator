package main.java.generator.model;

import main.java.generator.po.WsDsrQkPo;
import main.java.generator.po.WsDsrQzcsPo;
import main.java.generator.po.WsDsrbPo;

/**
 * 当事人
 *
 */
public class Litigant {

	/**
	 * 当事人基本信息表
	 */
	private WsDsrbPo wsDsrb;
	/**
	 * 当事人前科表
	 */
	private WsDsrQkPo wsDsrQk;
	/**
	 * 当事人强制措施表
	 */
	private WsDsrQzcsPo wsDsrQzcs;

	public Litigant() {
		super();
	}

	public Litigant(WsDsrbPo wsDsrb, WsDsrQkPo wsDsrQk, WsDsrQzcsPo wsDsrQzcs) {
		super();
		this.wsDsrb = wsDsrb;
		this.wsDsrQk = wsDsrQk;
		this.wsDsrQzcs = wsDsrQzcs;
	}

	public WsDsrbPo getWsDsrb() {
		return wsDsrb;
	}

	public void setWsDsrb(WsDsrbPo wsDsrb) {
		this.wsDsrb = wsDsrb;
	}

	public WsDsrQkPo getWsDsrQk() {
		return wsDsrQk;
	}

	public void setWsDsrQk(WsDsrQkPo wsDsrQk) {
		this.wsDsrQk = wsDsrQk;
	}

	public WsDsrQzcsPo getWsDsrQzcs() {
		return wsDsrQzcs;
	}

	public void setWsDsrQzcs(WsDsrQzcsPo wsDsrQzcs) {
		this.wsDsrQzcs = wsDsrQzcs;
	}

}
