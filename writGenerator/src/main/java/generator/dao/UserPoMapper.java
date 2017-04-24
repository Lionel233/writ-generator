package main.java.generator.dao;

import java.util.List;
import main.java.generator.po.UserPo;
import main.java.generator.po.UserPoExample;
import org.apache.ibatis.annotations.Param;

public interface UserPoMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	long countByExample(UserPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int deleteByExample(UserPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int insert(UserPo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int insertSelective(UserPo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	List<UserPo> selectByExample(UserPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	UserPo selectByPrimaryKey(Integer id);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int updateByExampleSelective(@Param("record") UserPo record, @Param("example") UserPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int updateByExample(@Param("record") UserPo record, @Param("example") UserPoExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int updateByPrimaryKeySelective(UserPo record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table user
	 * @mbg.generated  Mon Apr 24 20:17:36 CST 2017
	 */
	int updateByPrimaryKey(UserPo record);
}