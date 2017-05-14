package main.java.generator.dao;

import java.util.List;
import main.java.generator.po.Edit;
import main.java.generator.po.EditExample;
import org.apache.ibatis.annotations.Param;

public interface EditMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table edit
	 * @mbg.generated  Sat May 13 15:52:25 CST 2017
	 */
	long countByExample(EditExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table edit
	 * @mbg.generated  Sat May 13 15:52:25 CST 2017
	 */
	int deleteByExample(EditExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table edit
	 * @mbg.generated  Sat May 13 15:52:25 CST 2017
	 */
	int insert(Edit record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table edit
	 * @mbg.generated  Sat May 13 15:52:25 CST 2017
	 */
	int insertSelective(Edit record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table edit
	 * @mbg.generated  Sat May 13 15:52:25 CST 2017
	 */
	List<Edit> selectByExample(EditExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table edit
	 * @mbg.generated  Sat May 13 15:52:25 CST 2017
	 */
	int updateByExampleSelective(@Param("record") Edit record, @Param("example") EditExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table edit
	 * @mbg.generated  Sat May 13 15:52:25 CST 2017
	 */
	int updateByExample(@Param("record") Edit record, @Param("example") EditExample example);
}