package com.entity.view;

import org.apache.tools.ant.util.DateUtils;
import com.annotation.ColumnInfo;
import com.entity.GonggaoEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;
import com.utils.DateUtil;

/**
* 平台资讯
* 后端返回视图实体辅助类
* （通常后端关联的表或者自定义的字段需要返回使用）
*/
@TableName("gonggao")
public class GonggaoView extends GonggaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	//当前表
	/**
	* 平台资讯类型的值
	*/
	@ColumnInfo(comment="平台资讯类型的字典表值",type="varchar(200)")
	private String gonggaoValue;




	public GonggaoView() {

	}

	public GonggaoView(GonggaoEntity gonggaoEntity) {
		try {
			BeanUtils.copyProperties(this, gonggaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



	//当前表的
	/**
	* 获取： 平台资讯类型的值
	*/
	public String getGonggaoValue() {
		return gonggaoValue;
	}
	/**
	* 设置： 平台资讯类型的值
	*/
	public void setGonggaoValue(String gonggaoValue) {
		this.gonggaoValue = gonggaoValue;
	}




	@Override
	public String toString() {
		return "GonggaoView{" +
			", gonggaoValue=" + gonggaoValue +
			"} " + super.toString();
	}
}
