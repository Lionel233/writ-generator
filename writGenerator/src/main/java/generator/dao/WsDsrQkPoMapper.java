package main.java.generator.dao;

import java.util.List;
import main.java.generator.po.WsDsrQkPo;
import main.java.generator.po.WsDsrQkPoExample;
import org.apache.ibatis.annotations.Param;

public interface WsDsrQkPoMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 13 15:35:28 CST 2017
	 */
	long countByExample(WsDsrQkPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 13 15:35:28 CST 2017
	 */
	int deleteByExample(WsDsrQkPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 13 15:35:28 CST 2017
	 */
	int insert(WsDsrQkPo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 13 15:35:28 CST 2017
	 */
	int insertSelective(WsDsrQkPo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 13 15:35:28 CST 2017
	 */
	List<WsDsrQkPo> selectByExample(WsDsrQkPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 13 15:35:28 CST 2017
	 */
	int updateByExampleSelective(@Param("record") WsDsrQkPo record, @Param("example") WsDsrQkPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table ws_dsr_qk
	 * @mbg.generated  Thu Apr 13 15:35:28 CST 2017
	 */
	int updateByExample(@Param("record") WsDsrQkPo record, @Param("example") WsDsrQkPoExample example);
}