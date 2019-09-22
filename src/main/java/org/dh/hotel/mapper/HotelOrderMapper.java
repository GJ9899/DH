package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.HotelOrder;

public interface HotelOrderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HotelOrder record);

    int insertSelective(HotelOrder record);

    HotelOrder selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HotelOrder record);

    int updateByPrimaryKey(HotelOrder record);
}