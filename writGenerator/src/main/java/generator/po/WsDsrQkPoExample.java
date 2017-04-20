package main.java.generator.po;

import java.util.ArrayList;
import java.util.List;

public class WsDsrQkPoExample {
    /**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	protected String orderByClause;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	protected boolean distinct;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public WsDsrQkPoExample() {
		oredCriteria = new ArrayList<Criteria>();
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public boolean isDistinct() {
		return distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public List<Criteria> getOredCriteria() {
		return oredCriteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public Criteria or() {
		Criteria criteria = createCriteriaInternal();
		oredCriteria.add(criteria);
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public void clear() {
		oredCriteria.clear();
		orderByClause = null;
		distinct = false;
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	protected abstract static class GeneratedCriteria {
		protected List<Criterion> criteria;

		protected GeneratedCriteria() {
			super();
			criteria = new ArrayList<Criterion>();
		}

		public boolean isValid() {
			return criteria.size() > 0;
		}

		public List<Criterion> getAllCriteria() {
			return criteria;
		}

		public List<Criterion> getCriteria() {
			return criteria;
		}

		protected void addCriterion(String condition) {
			if (condition == null) {
				throw new RuntimeException("Value for condition cannot be null");
			}
			criteria.add(new Criterion(condition));
		}

		protected void addCriterion(String condition, Object value, String property) {
			if (value == null) {
				throw new RuntimeException("Value for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value));
		}

		protected void addCriterion(String condition, Object value1, Object value2, String property) {
			if (value1 == null || value2 == null) {
				throw new RuntimeException("Between values for " + property + " cannot be null");
			}
			criteria.add(new Criterion(condition, value1, value2));
		}

		public Criteria andAjxhIsNull() {
			addCriterion("AJXH is null");
			return (Criteria) this;
		}

		public Criteria andAjxhIsNotNull() {
			addCriterion("AJXH is not null");
			return (Criteria) this;
		}

		public Criteria andAjxhEqualTo(Integer value) {
			addCriterion("AJXH =", value, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhNotEqualTo(Integer value) {
			addCriterion("AJXH <>", value, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhGreaterThan(Integer value) {
			addCriterion("AJXH >", value, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhGreaterThanOrEqualTo(Integer value) {
			addCriterion("AJXH >=", value, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhLessThan(Integer value) {
			addCriterion("AJXH <", value, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhLessThanOrEqualTo(Integer value) {
			addCriterion("AJXH <=", value, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhIn(List<Integer> values) {
			addCriterion("AJXH in", values, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhNotIn(List<Integer> values) {
			addCriterion("AJXH not in", values, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhBetween(Integer value1, Integer value2) {
			addCriterion("AJXH between", value1, value2, "ajxh");
			return (Criteria) this;
		}

		public Criteria andAjxhNotBetween(Integer value1, Integer value2) {
			addCriterion("AJXH not between", value1, value2, "ajxh");
			return (Criteria) this;
		}

		public Criteria andQkbhIsNull() {
			addCriterion("QKBH is null");
			return (Criteria) this;
		}

		public Criteria andQkbhIsNotNull() {
			addCriterion("QKBH is not null");
			return (Criteria) this;
		}

		public Criteria andQkbhEqualTo(Integer value) {
			addCriterion("QKBH =", value, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhNotEqualTo(Integer value) {
			addCriterion("QKBH <>", value, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhGreaterThan(Integer value) {
			addCriterion("QKBH >", value, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhGreaterThanOrEqualTo(Integer value) {
			addCriterion("QKBH >=", value, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhLessThan(Integer value) {
			addCriterion("QKBH <", value, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhLessThanOrEqualTo(Integer value) {
			addCriterion("QKBH <=", value, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhIn(List<Integer> values) {
			addCriterion("QKBH in", values, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhNotIn(List<Integer> values) {
			addCriterion("QKBH not in", values, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhBetween(Integer value1, Integer value2) {
			addCriterion("QKBH between", value1, value2, "qkbh");
			return (Criteria) this;
		}

		public Criteria andQkbhNotBetween(Integer value1, Integer value2) {
			addCriterion("QKBH not between", value1, value2, "qkbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhIsNull() {
			addCriterion("DSRBH is null");
			return (Criteria) this;
		}

		public Criteria andDsrbhIsNotNull() {
			addCriterion("DSRBH is not null");
			return (Criteria) this;
		}

		public Criteria andDsrbhEqualTo(Integer value) {
			addCriterion("DSRBH =", value, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhNotEqualTo(Integer value) {
			addCriterion("DSRBH <>", value, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhGreaterThan(Integer value) {
			addCriterion("DSRBH >", value, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhGreaterThanOrEqualTo(Integer value) {
			addCriterion("DSRBH >=", value, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhLessThan(Integer value) {
			addCriterion("DSRBH <", value, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhLessThanOrEqualTo(Integer value) {
			addCriterion("DSRBH <=", value, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhIn(List<Integer> values) {
			addCriterion("DSRBH in", values, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhNotIn(List<Integer> values) {
			addCriterion("DSRBH not in", values, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhBetween(Integer value1, Integer value2) {
			addCriterion("DSRBH between", value1, value2, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andDsrbhNotBetween(Integer value1, Integer value2) {
			addCriterion("DSRBH not between", value1, value2, "dsrbh");
			return (Criteria) this;
		}

		public Criteria andQklbIsNull() {
			addCriterion("QKLB is null");
			return (Criteria) this;
		}

		public Criteria andQklbIsNotNull() {
			addCriterion("QKLB is not null");
			return (Criteria) this;
		}

		public Criteria andQklbEqualTo(String value) {
			addCriterion("QKLB =", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbNotEqualTo(String value) {
			addCriterion("QKLB <>", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbGreaterThan(String value) {
			addCriterion("QKLB >", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbGreaterThanOrEqualTo(String value) {
			addCriterion("QKLB >=", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbLessThan(String value) {
			addCriterion("QKLB <", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbLessThanOrEqualTo(String value) {
			addCriterion("QKLB <=", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbLike(String value) {
			addCriterion("QKLB like", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbNotLike(String value) {
			addCriterion("QKLB not like", value, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbIn(List<String> values) {
			addCriterion("QKLB in", values, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbNotIn(List<String> values) {
			addCriterion("QKLB not in", values, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbBetween(String value1, String value2) {
			addCriterion("QKLB between", value1, value2, "qklb");
			return (Criteria) this;
		}

		public Criteria andQklbNotBetween(String value1, String value2) {
			addCriterion("QKLB not between", value1, value2, "qklb");
			return (Criteria) this;
		}

		public Criteria andCftimeIsNull() {
			addCriterion("CFTIME is null");
			return (Criteria) this;
		}

		public Criteria andCftimeIsNotNull() {
			addCriterion("CFTIME is not null");
			return (Criteria) this;
		}

		public Criteria andCftimeEqualTo(String value) {
			addCriterion("CFTIME =", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeNotEqualTo(String value) {
			addCriterion("CFTIME <>", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeGreaterThan(String value) {
			addCriterion("CFTIME >", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeGreaterThanOrEqualTo(String value) {
			addCriterion("CFTIME >=", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeLessThan(String value) {
			addCriterion("CFTIME <", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeLessThanOrEqualTo(String value) {
			addCriterion("CFTIME <=", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeLike(String value) {
			addCriterion("CFTIME like", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeNotLike(String value) {
			addCriterion("CFTIME not like", value, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeIn(List<String> values) {
			addCriterion("CFTIME in", values, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeNotIn(List<String> values) {
			addCriterion("CFTIME not in", values, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeBetween(String value1, String value2) {
			addCriterion("CFTIME between", value1, value2, "cftime");
			return (Criteria) this;
		}

		public Criteria andCftimeNotBetween(String value1, String value2) {
			addCriterion("CFTIME not between", value1, value2, "cftime");
			return (Criteria) this;
		}

		public Criteria andCfyyIsNull() {
			addCriterion("CFYY is null");
			return (Criteria) this;
		}

		public Criteria andCfyyIsNotNull() {
			addCriterion("CFYY is not null");
			return (Criteria) this;
		}

		public Criteria andCfyyEqualTo(String value) {
			addCriterion("CFYY =", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyNotEqualTo(String value) {
			addCriterion("CFYY <>", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyGreaterThan(String value) {
			addCriterion("CFYY >", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyGreaterThanOrEqualTo(String value) {
			addCriterion("CFYY >=", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyLessThan(String value) {
			addCriterion("CFYY <", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyLessThanOrEqualTo(String value) {
			addCriterion("CFYY <=", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyLike(String value) {
			addCriterion("CFYY like", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyNotLike(String value) {
			addCriterion("CFYY not like", value, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyIn(List<String> values) {
			addCriterion("CFYY in", values, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyNotIn(List<String> values) {
			addCriterion("CFYY not in", values, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyBetween(String value1, String value2) {
			addCriterion("CFYY between", value1, value2, "cfyy");
			return (Criteria) this;
		}

		public Criteria andCfyyNotBetween(String value1, String value2) {
			addCriterion("CFYY not between", value1, value2, "cfyy");
			return (Criteria) this;
		}

		public Criteria andSfdwIsNull() {
			addCriterion("SFDW is null");
			return (Criteria) this;
		}

		public Criteria andSfdwIsNotNull() {
			addCriterion("SFDW is not null");
			return (Criteria) this;
		}

		public Criteria andSfdwEqualTo(String value) {
			addCriterion("SFDW =", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwNotEqualTo(String value) {
			addCriterion("SFDW <>", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwGreaterThan(String value) {
			addCriterion("SFDW >", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwGreaterThanOrEqualTo(String value) {
			addCriterion("SFDW >=", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwLessThan(String value) {
			addCriterion("SFDW <", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwLessThanOrEqualTo(String value) {
			addCriterion("SFDW <=", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwLike(String value) {
			addCriterion("SFDW like", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwNotLike(String value) {
			addCriterion("SFDW not like", value, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwIn(List<String> values) {
			addCriterion("SFDW in", values, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwNotIn(List<String> values) {
			addCriterion("SFDW not in", values, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwBetween(String value1, String value2) {
			addCriterion("SFDW between", value1, value2, "sfdw");
			return (Criteria) this;
		}

		public Criteria andSfdwNotBetween(String value1, String value2) {
			addCriterion("SFDW not between", value1, value2, "sfdw");
			return (Criteria) this;
		}

		public Criteria andCfxsIsNull() {
			addCriterion("CFXS is null");
			return (Criteria) this;
		}

		public Criteria andCfxsIsNotNull() {
			addCriterion("CFXS is not null");
			return (Criteria) this;
		}

		public Criteria andCfxsEqualTo(String value) {
			addCriterion("CFXS =", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsNotEqualTo(String value) {
			addCriterion("CFXS <>", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsGreaterThan(String value) {
			addCriterion("CFXS >", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsGreaterThanOrEqualTo(String value) {
			addCriterion("CFXS >=", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsLessThan(String value) {
			addCriterion("CFXS <", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsLessThanOrEqualTo(String value) {
			addCriterion("CFXS <=", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsLike(String value) {
			addCriterion("CFXS like", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsNotLike(String value) {
			addCriterion("CFXS not like", value, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsIn(List<String> values) {
			addCriterion("CFXS in", values, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsNotIn(List<String> values) {
			addCriterion("CFXS not in", values, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsBetween(String value1, String value2) {
			addCriterion("CFXS between", value1, value2, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfxsNotBetween(String value1, String value2) {
			addCriterion("CFXS not between", value1, value2, "cfxs");
			return (Criteria) this;
		}

		public Criteria andCfrqIsNull() {
			addCriterion("CFRQ is null");
			return (Criteria) this;
		}

		public Criteria andCfrqIsNotNull() {
			addCriterion("CFRQ is not null");
			return (Criteria) this;
		}

		public Criteria andCfrqEqualTo(String value) {
			addCriterion("CFRQ =", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqNotEqualTo(String value) {
			addCriterion("CFRQ <>", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqGreaterThan(String value) {
			addCriterion("CFRQ >", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqGreaterThanOrEqualTo(String value) {
			addCriterion("CFRQ >=", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqLessThan(String value) {
			addCriterion("CFRQ <", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqLessThanOrEqualTo(String value) {
			addCriterion("CFRQ <=", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqLike(String value) {
			addCriterion("CFRQ like", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqNotLike(String value) {
			addCriterion("CFRQ not like", value, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqIn(List<String> values) {
			addCriterion("CFRQ in", values, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqNotIn(List<String> values) {
			addCriterion("CFRQ not in", values, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqBetween(String value1, String value2) {
			addCriterion("CFRQ between", value1, value2, "cfrq");
			return (Criteria) this;
		}

		public Criteria andCfrqNotBetween(String value1, String value2) {
			addCriterion("CFRQ not between", value1, value2, "cfrq");
			return (Criteria) this;
		}

		public Criteria andXmsfsjIsNull() {
			addCriterion("XMSFSJ is null");
			return (Criteria) this;
		}

		public Criteria andXmsfsjIsNotNull() {
			addCriterion("XMSFSJ is not null");
			return (Criteria) this;
		}

		public Criteria andXmsfsjEqualTo(String value) {
			addCriterion("XMSFSJ =", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjNotEqualTo(String value) {
			addCriterion("XMSFSJ <>", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjGreaterThan(String value) {
			addCriterion("XMSFSJ >", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjGreaterThanOrEqualTo(String value) {
			addCriterion("XMSFSJ >=", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjLessThan(String value) {
			addCriterion("XMSFSJ <", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjLessThanOrEqualTo(String value) {
			addCriterion("XMSFSJ <=", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjLike(String value) {
			addCriterion("XMSFSJ like", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjNotLike(String value) {
			addCriterion("XMSFSJ not like", value, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjIn(List<String> values) {
			addCriterion("XMSFSJ in", values, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjNotIn(List<String> values) {
			addCriterion("XMSFSJ not in", values, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjBetween(String value1, String value2) {
			addCriterion("XMSFSJ between", value1, value2, "xmsfsj");
			return (Criteria) this;
		}

		public Criteria andXmsfsjNotBetween(String value1, String value2) {
			addCriterion("XMSFSJ not between", value1, value2, "xmsfsj");
			return (Criteria) this;
		}
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 20 16:55:49 CST 2017
	 */
	public static class Criterion {
		private String condition;
		private Object value;
		private Object secondValue;
		private boolean noValue;
		private boolean singleValue;
		private boolean betweenValue;
		private boolean listValue;
		private String typeHandler;

		public String getCondition() {
			return condition;
		}

		public Object getValue() {
			return value;
		}

		public Object getSecondValue() {
			return secondValue;
		}

		public boolean isNoValue() {
			return noValue;
		}

		public boolean isSingleValue() {
			return singleValue;
		}

		public boolean isBetweenValue() {
			return betweenValue;
		}

		public boolean isListValue() {
			return listValue;
		}

		public String getTypeHandler() {
			return typeHandler;
		}

		protected Criterion(String condition) {
			super();
			this.condition = condition;
			this.typeHandler = null;
			this.noValue = true;
		}

		protected Criterion(String condition, Object value, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.typeHandler = typeHandler;
			if (value instanceof List<?>) {
				this.listValue = true;
			} else {
				this.singleValue = true;
			}
		}

		protected Criterion(String condition, Object value) {
			this(condition, value, null);
		}

		protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
			super();
			this.condition = condition;
			this.value = value;
			this.secondValue = secondValue;
			this.typeHandler = typeHandler;
			this.betweenValue = true;
		}

		protected Criterion(String condition, Object value, Object secondValue) {
			this(condition, value, secondValue, null);
		}
	}

	/**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table ws_dsr_qk
     *
     * @mbg.generated do_not_delete_during_merge Thu Apr 13 12:58:31 CST 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }
}