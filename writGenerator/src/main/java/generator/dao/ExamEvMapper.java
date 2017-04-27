package main.java.generator.dao;

import java.util.List;
import main.java.generator.po.ExamEv;
import main.java.generator.po.ExamEvExample;
import org.apache.ibatis.annotations.Param;

public interface ExamEvMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    long countByExample(ExamEvExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int deleteByExample(ExamEvExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int insert(ExamEv record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int insertSelective(ExamEv record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    List<ExamEv> selectByExample(ExamEvExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    ExamEv selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int updateByExampleSelective(@Param("record") ExamEv record, @Param("example") ExamEvExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int updateByExample(@Param("record") ExamEv record, @Param("example") ExamEvExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int updateByPrimaryKeySelective(ExamEv record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table examev
     *
     * @mbg.generated Thu Apr 27 16:01:38 CST 2017
     */
    int updateByPrimaryKey(ExamEv record);
}