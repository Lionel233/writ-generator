package main.java.generator.dao;

import java.util.List;
import main.java.generator.po.EvSubmmitter;
import main.java.generator.po.EvSubmmitterExample;
import org.apache.ibatis.annotations.Param;

public interface EvSubmmitterMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    long countByExample(EvSubmmitterExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int deleteByExample(EvSubmmitterExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int insert(EvSubmmitter record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int insertSelective(EvSubmmitter record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    List<EvSubmmitter> selectByExample(EvSubmmitterExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    EvSubmmitter selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int updateByExampleSelective(@Param("record") EvSubmmitter record, @Param("example") EvSubmmitterExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int updateByExample(@Param("record") EvSubmmitter record, @Param("example") EvSubmmitterExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int updateByPrimaryKeySelective(EvSubmmitter record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table evsubmmitter
     *
     * @mbg.generated Thu Apr 27 15:03:15 CST 2017
     */
    int updateByPrimaryKey(EvSubmmitter record);
}