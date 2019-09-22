package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.CheckInPerson;

public interface CheckInPersonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(CheckInPerson record);

    int insertSelective(CheckInPerson record);

    CheckInPerson selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(CheckInPerson record);

    int updateByPrimaryKey(CheckInPerson record);
}