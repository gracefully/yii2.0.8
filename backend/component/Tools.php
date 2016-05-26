<?php
/**
 * Created by PhpStorm.
 * User: huyangzhao
 * Date: 2016/5/26
 * Time: 14:39
 */

namespace backend\component;


class Tools
{
    public static function MenuFormat($menu)
    {
        $data = json_decode($menu['data'], true);
        $items = $menu['children'];
        $return = [
            'label' => $menu['name'],
            'url' => [$menu['route']],
        ];
        //处理我们的配置
        if ($data) {
            //visible
            isset($data['visible']) && $return['visible'] = $data['visible'];
            //icon
            isset($data['icon']) && $data['icon'] && $return['icon'] = $data['icon'];
            //other attribute e.g. class...
            $return['options'] = $data;
        }
        //没配置图标的显示默认图标
        (!isset($return['icon']) || !$return['icon']) && $return['icon'] = 'fa fa-circle-o';
        $items && $return['items'] = $items;
        return $return;
    }
}