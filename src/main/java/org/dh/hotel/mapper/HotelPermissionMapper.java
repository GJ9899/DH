package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.HotelPermission;

public interface HotelPermissionMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HotelPermission record);

    int insertSelective(HotelPermission record);

    HotelPermission selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HotelPermission record);

    int updateByPrimaryKey(HotelPermission record);
}