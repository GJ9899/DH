package org.dh.hotel.mapper;

import org.dh.hotel.entity.entity.HotelComment;

public interface HotelCommentMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(HotelComment record);

    int insertSelective(HotelComment record);

    HotelComment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(HotelComment record);

    int updateByPrimaryKey(HotelComment record);
}