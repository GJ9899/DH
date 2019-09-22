package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.HotelRoomType;

public interface HotelRoomTypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HotelRoomType record);

    int insertSelective(HotelRoomType record);

    HotelRoomType selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HotelRoomType record);

    int updateByPrimaryKey(HotelRoomType record);
}