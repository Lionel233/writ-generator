package main.java.generator.model;

import java.util.List;

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
	private List<WsDsrQkPo> wsDsrQk;
	/**
	 * 当事人强制措施表
	 */
	private List<WsDsrQzcsPo> wsDsrQzcs;

	public Litigant() {
		super();
	}

	public Litigant(WsDsrbPo wsDsrb, List<WsDsrQkPo> wsDsrQk, List<WsDsrQzcsPo> wsDsrQzcs) {
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

	public List<WsDsrQkPo> getWsDsrQk() {
		return wsDsrQk;
	}

	public void setWsDsrQk(List<WsDsrQkPo> wsDsrQk) {
		this.wsDsrQk = wsDsrQk;
	}

	public List<WsDsrQzcsPo> getWsDsrQzcs() {
		return wsDsrQzcs;
	}

	public void setWsDsrQzcs(List<WsDsrQzcsPo> wsDsrQzcs) {
		this.wsDsrQzcs = wsDsrQzcs;
	}

}
