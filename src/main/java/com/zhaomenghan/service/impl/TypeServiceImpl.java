package com.zhaomenghan.service.impl;

import com.zhaomenghan.dao.TypeDao;
import com.zhaomenghan.domain.Type;
import com.zhaomenghan.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TypeServiceImpl implements TypeService {
    @Autowired
    private TypeDao dao;

    @Override
    public List<Type> selectAllType() {
        return dao.selectAllType();
    }

    @Override
    public String selectTypeName(Integer typeId) {
        return dao.selectTypeName(typeId);
    }

    @Override
    public Integer updateType(Type type) {
        return dao.updateType(type);
    }

    @Override
    public Integer deleteType(Integer typeId) {
        return dao.deleteType(typeId);
    }

    @Override
    public Integer insertType(String typeName) {
        return dao.insertType(typeName);
    }
}
