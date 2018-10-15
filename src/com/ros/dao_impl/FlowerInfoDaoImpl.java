package com.ros.dao_impl;

import java.util.ArrayList;

import com.ros.dao.FlowerInfoDao;
import com.ros.entity.FlowerInfo;
import com.ros.entity.FlowerType;
import com.ros.util.BaseDao;
import com.ros.util.PageData;

public class FlowerInfoDaoImpl implements FlowerInfoDao {
  /*
   *  前台展示最新上线鲜花
   */
	@Override
	public ArrayList<FlowerInfo> getFlowerInfoByLimit() {
		// TODO Auto-generated method stub
	 String sql="	select * from flower_info order by createTime desc limit 0,5";
	    ArrayList<FlowerInfo> list=(ArrayList<FlowerInfo>) BaseDao.select(sql, FlowerInfo.class);
	    if(list.size()>0) {
	      return list;
	      
	    }
	    else {
	    	return null;
	    }
	}

	/**   
	 * 展示顶级鲜花
	 * @return   
	 * @see com.ros.dao.FlowerInfoDao#getFlowerInfoByPrice()   
	 */
	@Override
	public ArrayList<FlowerInfo> getFlowerInfoByPrice() {
		// TODO Auto-generated method stub
		String sql="select * from flower_info ORDER BY  price desc limit 0,3 ";
		 ArrayList<FlowerInfo> list=(ArrayList<FlowerInfo>) BaseDao.select(sql, FlowerInfo.class);
		    if(list.size()>0) {
		      return list;
		      
		    }
		    else {
		    	return null;
		    }
	}

	/**   
	 * <p>Title: queryFlowerInfoByPage</p>   
	 * <p>Description: </p>   
	 * @param page
	 * @param pageSize
	 * @param keyword
	 * @return   
	 * @see com.ros.dao.FlowerInfoDao#queryFlowerInfoByPage(int, int, java.lang.String)   
	 */
	@Override
	public PageData<FlowerInfo> queryFlowerInfoByPage(int page, int pageSize, String keyword,int priceStart,int priceEnd,int typeId1,int typeId2,String sort,String sortType) {
		// TODO Auto-generated method stub
		String sql="select flower_info.* from flower_info INNER JOIN flower_type on flower_info.typeId=flower_type.typeId  where flowerName like ? and stock >0 and (price BETWEEN ? and ?) and (flower_type.typeId BETWEEN (?) and (?) ) ORDER BY ? ?"; 
		PageData<FlowerInfo> pd=BaseDao.getPage(sql, page, pageSize, FlowerInfo.class, keyword,priceStart,priceEnd,typeId1,typeId2,sort,sortType);
		return pd;
	}

	/* 获取所有花的类别
	 */
	@Override
	public ArrayList<FlowerType> queryFlowerType() {
		// TODO Auto-generated method stub
		String sql="select * from flower_type";
		ArrayList<FlowerType> list=(ArrayList<FlowerType>) BaseDao.select(sql, FlowerType.class);
		if(list.size()>0) {
			return list;
		}else {
			return null;
		}
		
	}

}