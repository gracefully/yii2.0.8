<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    "modules" => [
        "admin" => [
            "class" => 'mdm\admin\Module',
        ],
    ],
    "aliases" => [
        "@mdm/admin" => "@vendor/mdmsoft/yii2-admin",
    ],
    'components' => [
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
        "authManager" => [
            "class" => 'yii\rbac\DbManager', //这里记得用单引号而不是双引号
            "defaultRoles" => ["guest"],
        ],
//        "view" => [
//            "theme" => [
//                "pathMap" => [
//                    "@app/views" => "@vendor/dmstr/yii2-adminlte-asset/example-views/yiisoft/yii2-app"
//                ],
//            ],
//        ],
    ],
    'as access' => [
        //ACF肯定是要加的，因为粗心导致该配置漏掉了，很是抱歉
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            //这里是允许访问的action
            //controller/action
            'admin/route/index',
            'admin/route/assign',
            'admin/route/remove',
            'debug/default/toolbar',
            'admin/permission/index',
            'admin/permission/create',
            'admin/user/index',
            'admin/role/index',
            'admin/assignment/index',
            'admin/assignment/view',
            'admin/menu/index',
            'admin/role/create',
            'site/logout',
            'site/index',
            'admin/menu/index',
            'admin/menu/create',
            'admin/menu/view',
            'admin/menu/update',
        ]
    ],
    'params' => $params,
];
