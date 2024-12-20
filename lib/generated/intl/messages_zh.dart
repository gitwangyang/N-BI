// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh';

  static m0(agreementUrl, privacyUrl, accountServiceUrl) => "很抱歉，若您不同意${agreementUrl}、${privacyUrl}、${accountServiceUrl}的各项条款，我们将无法继续为您提供服务";

  static m1(typeName) => "${typeName}使用说明";

  static m2(locale) => "当前语言：${locale}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "AppAccountServiceTitle" : MessageLookupByLibrary.simpleMessage("《账号服务协议》"),
    "AppLocalPrivacyDialogContent" : m0,
    "AppLocalPrivacyDialogTitle" : MessageLookupByLibrary.simpleMessage("你需要同意本协议才能继续使用"),
    "AppLocalPrivacyPageCentent" : MessageLookupByLibrary.simpleMessage("1）为了给您提供更好的服务，我们将收集、使用您相关必要的个人信息；\n\n2）您可以查询、更正、删除您授权的个人信息，我们也为您提供注销账号的渠道；\n\n3）我们会采取多方位的安全保护措施以确保您的个人信息安全，除非经过您的同意或相关法律法规规定，我们不会和任何第三方共享您的个人信息。\n\n"),
    "AppLocalPrivacyPageCententHead1" : MessageLookupByLibrary.simpleMessage("我们非常重视您的个人信息和隐私保护，为了更好地保障您的个人权益，在使用本产品前，请您审慎阅读"),
    "AppLocalPrivacyPageCententHead2" : MessageLookupByLibrary.simpleMessage("的各项条款。为帮助您快速了解我们提供的服务及如何收集您的信息，特向您说明如下：\n\n"),
    "AppLocalPrivacyPageDilogAgree" : MessageLookupByLibrary.simpleMessage("同意"),
    "AppLocalPrivacyPageDilogExitApp" : MessageLookupByLibrary.simpleMessage("退出应用"),
    "AppLocalPrivacyPageDisagree" : MessageLookupByLibrary.simpleMessage("不同意"),
    "AppLocalPrivacyPageEnding1" : MessageLookupByLibrary.simpleMessage("请您在使用我们的产品和服务前，认真阅读"),
    "AppLocalPrivacyPageEnding2" : MessageLookupByLibrary.simpleMessage("，并确认是否同意。如您同意以上内容，请点击“同意”开始使用我们的产品和服务！"),
    "AppLocalPrivacyPageTitle" : MessageLookupByLibrary.simpleMessage("用户协议与隐私保护"),
    "AppNeedUpgradeDialog_cancel" : MessageLookupByLibrary.simpleMessage("暂不需要"),
    "AppNeedUpgradeDialog_confirm" : MessageLookupByLibrary.simpleMessage("立即升级"),
    "AppNeedUpgradeDialog_content" : MessageLookupByLibrary.simpleMessage("为了提供更好的功能和体验，我们推出了新的客户端版本。请立即升级以获得以下好处：\n\n全新的界面设计，更简洁、更直观。\n修复了一些问题，提高了稳定性和性能。\n引入了新功能，让您的使用体验更加丰富。"),
    "AppNeedUpgradeDialog_title" : MessageLookupByLibrary.simpleMessage("版本升级提示"),
    "AppNotSupportRootDialogContent" : MessageLookupByLibrary.simpleMessage("为了您的使用安全，请更换设备，感谢您的理解和支持"),
    "AppNotSupportRootDialogTitle" : MessageLookupByLibrary.simpleMessage("不支持在Root设备上使用"),
    "AppPrivacyAgreementTitle" : MessageLookupByLibrary.simpleMessage("《隐私政策》"),
    "AppUserAgreementAnd" : MessageLookupByLibrary.simpleMessage("、"),
    "AppUserAgreementTitle" : MessageLookupByLibrary.simpleMessage("《用户协议》"),
    "Common_btn_complete" : MessageLookupByLibrary.simpleMessage("完成"),
    "Common_btn_del" : MessageLookupByLibrary.simpleMessage("清除"),
    "Common_btn_delete" : MessageLookupByLibrary.simpleMessage("删除"),
    "Common_btn_return" : MessageLookupByLibrary.simpleMessage("返回"),
    "Common_btn_save" : MessageLookupByLibrary.simpleMessage("保存"),
    "Common_text_cancel" : MessageLookupByLibrary.simpleMessage("取消"),
    "Common_text_confirm" : MessageLookupByLibrary.simpleMessage("确定"),
    "Common_text_toSetting" : MessageLookupByLibrary.simpleMessage("去设置"),
    "DialogForeLogoutForOtherDeviceContent" : MessageLookupByLibrary.simpleMessage("您的账号已经在其他移动设备登录，当前账号将从本设备退出登录"),
    "DialogForeLogoutForOtherDeviceTitle" : MessageLookupByLibrary.simpleMessage("账号已在其他设备登录"),
    "DialogSecurityWarningContent" : MessageLookupByLibrary.simpleMessage("您已开启开发者模式，请注意保护自己的数据"),
    "DialogSecurityWarningNoMorePromote" : MessageLookupByLibrary.simpleMessage("知道了"),
    "PermissionDesc_camera" : MessageLookupByLibrary.simpleMessage("当您通过我们的App使用头像图片上传保存时、bug反馈等。我们可能需要开启您的手机设备的相机或相册权限。如果不提供相机或相册权限可能无法使用相应功能。"),
    "PermissionDesc_contacts" : MessageLookupByLibrary.simpleMessage("当您通过我们的App填写紧急联系人时，我们可能需要开启您的通讯录权限，用于紧急联系人姓名和手机号的录入。"),
    "PermissionDesc_title" : m1,
    "PermissionDesc_typeName_camera" : MessageLookupByLibrary.simpleMessage("相机权限"),
    "PermissionDesc_typeName_contacts" : MessageLookupByLibrary.simpleMessage("通讯录权限"),
    "PermissionDesc_typeName_gallery" : MessageLookupByLibrary.simpleMessage("相册权限"),
    "Permission_failureDialog_bluetooth_message" : MessageLookupByLibrary.simpleMessage(""),
    "Permission_failureDialog_bluetooth_title" : MessageLookupByLibrary.simpleMessage("请打开蓝牙服务"),
    "Permission_failureDialog_camera_message" : MessageLookupByLibrary.simpleMessage("您可以设置头像"),
    "Permission_failureDialog_camera_title" : MessageLookupByLibrary.simpleMessage("请允许开启相机权限"),
    "Permission_failureDialog_contact_message" : MessageLookupByLibrary.simpleMessage("进入系统设置，将通讯录设置为开启"),
    "Permission_failureDialog_contact_title" : MessageLookupByLibrary.simpleMessage("发现通讯录朋友"),
    "Permission_failureDialog_gallery_title" : MessageLookupByLibrary.simpleMessage("请允许开启相册权限"),
    "Permission_failureDialog_location_message" : MessageLookupByLibrary.simpleMessage(""),
    "Permission_failureDialog_location_title" : MessageLookupByLibrary.simpleMessage("请打开定位服务"),
    "Permission_failureDialog_microphone_message" : MessageLookupByLibrary.simpleMessage(""),
    "Permission_failureDialog_microphone_title" : MessageLookupByLibrary.simpleMessage("请打开麦克风权限"),
    "ReLoginDialog_button" : MessageLookupByLibrary.simpleMessage("知道了"),
    "ReLoginDialog_message" : MessageLookupByLibrary.simpleMessage("登录已过期，请重新登录"),
    "ReLoginDialog_title" : MessageLookupByLibrary.simpleMessage("登录过期提醒"),
    "appTitle" : MessageLookupByLibrary.simpleMessage("OneAppZh"),
    "appVersion" : MessageLookupByLibrary.simpleMessage("版本号"),
    "common_requestPermissionFailedDialog_title" : MessageLookupByLibrary.simpleMessage("请求权限失败"),
    "currentLanguage" : m2,
    "net_work_error" : MessageLookupByLibrary.simpleMessage("网络连接异常"),
    "online_support_title_bar" : MessageLookupByLibrary.simpleMessage("在线客服"),
    "pageCategoryTitle" : MessageLookupByLibrary.simpleMessage("分类"),
    "pageDiscoveryTitle" : MessageLookupByLibrary.simpleMessage("发现"),
    "pageHomeTitle" : MessageLookupByLibrary.simpleMessage("首页"),
    "pageMessageTitle" : MessageLookupByLibrary.simpleMessage("消息"),
    "pageMyTitle" : MessageLookupByLibrary.simpleMessage("我的"),
    "pageRecommendTitle" : MessageLookupByLibrary.simpleMessage("推荐"),
    "pageTestTitle" : MessageLookupByLibrary.simpleMessage("测试"),
    "permission_dialog_calendar_content" : MessageLookupByLibrary.simpleMessage("当您在使用APP添加活动功能和日程提醒时，我们可能需要开启您的手机设备的读取日历权限。如果不提供读取日历权限可能无法使用相应功能。"),
    "permission_dialog_calendar_title" : MessageLookupByLibrary.simpleMessage("APP想访问你的日历"),
    "permission_dialog_camera_content" : MessageLookupByLibrary.simpleMessage("相机权限用于头像设置等需要拍摄照片或视频的功能"),
    "permission_dialog_camera_title" : MessageLookupByLibrary.simpleMessage("APP想访问您的相机"),
    "permission_dialog_contact_content" : MessageLookupByLibrary.simpleMessage("当您通过APP填写紧急联系人时，我们可能需要开启您的通讯录权限，用于紧急联系人姓名和手机号的录入。"),
    "permission_dialog_contact_title" : MessageLookupByLibrary.simpleMessage("APP想访问你的通讯录"),
    "permission_dialog_gallery_content" : MessageLookupByLibrary.simpleMessage("照片权限用于头像设置等需要上传照片或视频的功能"),
    "permission_dialog_gallery_title" : MessageLookupByLibrary.simpleMessage("APP想访问您的照片图库"),
    "permission_dialog_location_title" : MessageLookupByLibrary.simpleMessage("允许APP使用您的位置"),
    "permission_dialog_microphone_content" : MessageLookupByLibrary.simpleMessage("麦克风权限用于语音通知、语音克隆功能"),
    "permission_dialog_microphone_title" : MessageLookupByLibrary.simpleMessage("APP想访问您的麦克风"),
    "permission_dialog_notification_content" : MessageLookupByLibrary.simpleMessage("通知权限用于为您提供通知、资讯、活动等推送消息"),
    "permission_dialog_notification_title" : MessageLookupByLibrary.simpleMessage("APP想给你发送通知"),
    "permission_dialog_storage_content" : MessageLookupByLibrary.simpleMessage("当您在通过App使⽤上传或保存图⽚时，我们可能需要开启您的⼿机设备的存储权限。如果不提供读取⼿机存储权限可能⽆法使⽤相应功能。"),
    "permission_dialog_storage_title" : MessageLookupByLibrary.simpleMessage("APP想获取你的手机存储权限")
  };
}
