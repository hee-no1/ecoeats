package com.pofol.main.member.repository;

import com.pofol.main.member.dto.PointDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PointRepositoryImpl implements PointRepository{
    @Autowired
    private SqlSession session;
    private final String namespace = "com.pofol.main.member.pointMapper.";

    @Override
    public int insertPoint(PointDto pointDto) throws Exception {
        return session.insert(namespace + "insert_point", pointDto);
    }

    @Override
    public List<PointDto> selectAllPoint(String mem_id) throws Exception {
        return session.selectList(namespace + "selectAll_point", mem_id);
    }

    @Override
    public PointDto selectPoint(String point_id) throws Exception {
        return session.selectOne(namespace + "select_point", point_id);
    }

    @Override
    public int updatePoint(PointDto pointDto) throws Exception {
        return session.update(namespace + "update_point", pointDto);
    }

    @Override
    public int deletePoint(String point_id) throws Exception {
        return session.delete(namespace + "delete_point", point_id);
    }

    @Override
    public int sumPoint(String mem_id) throws Exception {
        return session.selectOne(namespace + "sum_point", mem_id);
    }

    @Override
    public int availablePoint(String mem_id) throws Exception {
        return session.selectOne(namespace + "available_point",mem_id);
    }

    @Override
    public int countPoint(String mem_id) throws Exception {
        return session.selectOne(namespace + "count_point", mem_id);
    }

    @Override
    public int preExtinctPoint(String mem_id) throws Exception {
        return session.selectOne(namespace + "preExtinct_point", mem_id);
    }
}
