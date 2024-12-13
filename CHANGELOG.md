# 一、多语言使用
-1、Android studio需要添加插件 flutter Intl
路径 File>>Settings>>Plugins>>Marketplace>>flutter Intl>>Install
安装插件重新启动Android studio
-2、使用插件生成配置文件
Tools>>Flutter lIntl>>Initialize for the Project
-3、增加中英文内容时，在路径lib\l10n下的intl_zh中添加中文，在intl_en中添加英文
-4、执行命令生成相关文件：flutter pub run intl_utils:generate
-5、此时路径lib/generated/下都自动更新了新增的中英文内容，然后去调用处调用
调用方式如：1、 S.current.Common_btn_delete （推荐使用）  2、S.of(NavKey().getContext()!).Common_btn_delete 

# 二、字体样式图片资源使用


# 三、添加主题字体颜色
1、路径：lib/utils/theme/constant_colors中添加
2、主题初始化调用方法：lib/utils/theme/basic_theme中调用方法initTheme()
3、添加了light，请对应添加dark
4、判断主题模式
// 获取当前主题模式
var brightnss = Theme.of(context).brightness;
// 判断当前是否为黑夜模式
bool isDarkMode = brightnss == Brightness.dark;


