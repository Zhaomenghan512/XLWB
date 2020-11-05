package com.zhaomenghan.dao;

import com.zhaomenghan.domain.Type;
import org.springframework.stereotype.Component;

import java.util.List;
@Component
public interface TypeDao {
    /**
     * 查询所有产品类型
     * @return
     */
    List<Type> selectAllType();

    /**
     * 通过ID查询类型名称
     * @param typeId
     * @return
     */
    String selectTypeName(Integer typeId);

    /**
     * 修改类型
     * @param type
     * @return
     */
    Integer updateType(Type type);

    /**
     * 通过ID删除类型
     * @param typeId
     * @return
     */
    Integer deleteType(Integer typeId);

    /**
     * 添加产品类型
     * @param typeName
     * @return
     */
    Integer insertType(String typeName);
}
