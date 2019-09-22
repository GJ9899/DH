package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.HotelAdministrator;

public interface HotelAdministratorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HotelAdministrator record);

    int insertSelective(HotelAdministrator record);

    HotelAdministrator selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HotelAdministrator record);

    int updateByPrimaryKey(HotelAdministrator record);
}