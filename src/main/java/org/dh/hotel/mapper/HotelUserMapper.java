package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.HotelUser;

public interface HotelUserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HotelUser record);

    int insertSelective(HotelUser record);

    HotelUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HotelUser record);

    int updateByPrimaryKey(HotelUser record);
}