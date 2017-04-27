package main.java.generator.dao;

import java.util.List;
import main.java.generator.po.Court;
import main.java.generator.po.CourtExample;
import org.apache.ibatis.annotations.Param;

public interface CourtMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    long countByExample(CourtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    int deleteByExample(CourtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    int deleteByPrimaryKey(String jbfy);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    int insert(Court record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    int insertSelective(Court record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    List<Court> selectByExample(CourtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    int updateByExampleSelective(@Param("record") Court record, @Param("example") CourtExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table court
     *
     * @mbg.generated Thu Apr 27 18:47:26 CST 2017
     */
    int updateByExample(@Param("record") Court record, @Param("example") CourtExample example);
}