package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.HotelRoom;

public interface HotelRoomMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HotelRoom record);

    int insertSelective(HotelRoom record);

    HotelRoom selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HotelRoom record);

    int updateByPrimaryKey(HotelRoom record);
}