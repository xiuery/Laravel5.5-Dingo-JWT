<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BaseModel extends Model
{
    /*
     * 批量赋值字段黑名单
     */
    protected $guarded = ['id', 'create_time', 'update_time', 'delete_time'];

    /*
     * 查询结果不需要出现的字段
     */
    protected $hidden = ['delete_time'];

    /**
     * 重写自动维护的create_time字段
     */
    const CREATED_AT = 'create_time';

    /**
     * 重写自动维护的update_time字段
     */
    const UPDATED_AT = 'update_time';

    /**
     * 重写软删除delete_time字段
     */
    const DELETED_AT = 'delete_time';

    /*
     * 日期格式自动转换
     */
    protected $dates = ['create_time', 'update_time'];

    /*
     * 指定数据类型
     */
    protected $casts = [
        'create_time'   => 'integer',
        'update_time'   => 'integer',
        'delete_time'   => 'integer',
    ];

    /*
     * 日期格式转换
     */
    protected function getDateFormat()
    {
        return 'U';
    }

//    /**
//     * create_time 类型转换
//     */
//    public function getCreateTimeAttribute($value)
//    {
//        return (int)$value;
//    }
//
//    /**
//     * update_time 类型转换
//     */
//    public function getUpdateTimeAttribute($value)
//    {
//        return (int)$value;
//    }
//
//    /**
//     * delete_time 类型转换
//     */
//    public function getDeleteTimeAttribute($value)
//    {
//        return (int)$value;
//    }
}
