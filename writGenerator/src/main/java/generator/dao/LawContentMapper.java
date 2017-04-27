package main.java.generator.dao;

import java.util.List;
import main.java.generator.po.LawContent;
import main.java.generator.po.LawContentExample;
import org.apache.ibatis.annotations.Param;

public interface LawContentMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	long countByExample(LawContentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int deleteByExample(LawContentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int insert(LawContent record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int insertSelective(LawContent record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	List<LawContent> selectByExampleWithBLOBs(LawContentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	List<LawContent> selectByExample(LawContentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	LawContent selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int updateByExampleSelective(@Param("record") LawContent record, @Param("example") LawContentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int updateByExampleWithBLOBs(@Param("record") LawContent record, @Param("example") LawContentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int updateByExample(@Param("record") LawContent record, @Param("example") LawContentExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int updateByPrimaryKeySelective(LawContent record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int updateByPrimaryKeyWithBLOBs(LawContent record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table lawcontent
	 * @mbg.generated  Wed Apr 26 20:11:08 CST 2017
	 */
	int updateByPrimaryKey(LawContent record);
}