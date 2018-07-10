//模块配置
require.config({
    paths: {
        'jquery': '../lib/jquery-3.3.1',
        'http':'./httpclient',
        'common':'../js/common'
    },
    shim:{
        'http':['jquery']
    }
})