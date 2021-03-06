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
    'name' => 'Gracefully',
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
            'suffix'=>'.html',
            'rules' => [
//                '<controller:\w+>/<action:\w+>/<id:\d+>'=>'<controller>/<action>',
//                '<controller:\w+>/<action:\w+>'=>'<controller>/<action>',
                '<module:\w+>/<controller:\w+>/<action:\w+>/<id:\d+>'=>'<module>/<controller>/<action>',
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
            //这里是允许访问的action，在加入yii2-admin后，暂时允许放开site和admin下的权限
            //controller/action
//            'site/*',
//            'admin/*',
        ]
    ],
    'params' => $params,
];
