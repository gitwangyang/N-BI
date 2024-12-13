// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `OneAppEn`
  String get appTitle {
    return Intl.message(
      'OneAppEn',
      name: 'appTitle',
      desc: 'Application title',
      args: [],
    );
  }

  /// `version`
  String get appVersion {
    return Intl.message(
      'version',
      name: 'appVersion',
      desc: 'App Version',
      args: [],
    );
  }

  /// `Home`
  String get pageHomeTitle {
    return Intl.message(
      'Home',
      name: 'pageHomeTitle',
      desc: 'Home page title',
      args: [],
    );
  }

  /// `Discovery`
  String get pageDiscoveryTitle {
    return Intl.message(
      'Discovery',
      name: 'pageDiscoveryTitle',
      desc: 'Discovery page title',
      args: [],
    );
  }

  /// `Category`
  String get pageCategoryTitle {
    return Intl.message(
      'Category',
      name: 'pageCategoryTitle',
      desc: 'Category page title',
      args: [],
    );
  }

  /// `Message`
  String get pageMessageTitle {
    return Intl.message(
      'Message',
      name: 'pageMessageTitle',
      desc: 'Message page title',
      args: [],
    );
  }

  /// `My`
  String get pageMyTitle {
    return Intl.message(
      'My',
      name: 'pageMyTitle',
      desc: 'My page title',
      args: [],
    );
  }

  /// `Test`
  String get pageTestTitle {
    return Intl.message(
      'Test',
      name: 'pageTestTitle',
      desc: 'Test page title',
      args: [],
    );
  }

  /// `Recommend`
  String get pageRecommendTitle {
    return Intl.message(
      'Recommend',
      name: 'pageRecommendTitle',
      desc: 'Recommend page title',
      args: [],
    );
  }

  /// `Current Language: {locale}`
  String currentLanguage(Object locale) {
    return Intl.message(
      'Current Language: $locale',
      name: 'currentLanguage',
      desc: 'Current Language',
      args: [locale],
    );
  }

  /// `Del`
  String get Common_btn_del {
    return Intl.message(
      'Del',
      name: 'Common_btn_del',
      desc: '通用 清除',
      args: [],
    );
  }

  /// `删除`
  String get Common_btn_delete {
    return Intl.message(
      '删除',
      name: 'Common_btn_delete',
      desc: '通用 删除',
      args: [],
    );
  }

  /// `Complete`
  String get Common_btn_complete {
    return Intl.message(
      'Complete',
      name: 'Common_btn_complete',
      desc: '通用 完成',
      args: [],
    );
  }

  /// `Return`
  String get Common_btn_return {
    return Intl.message(
      'Return',
      name: 'Common_btn_return',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get Common_btn_save {
    return Intl.message(
      'Save',
      name: 'Common_btn_save',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get Common_text_cancel {
    return Intl.message(
      'Cancel',
      name: 'Common_text_cancel',
      desc: '取消',
      args: [],
    );
  }

  /// `Confirm`
  String get Common_text_confirm {
    return Intl.message(
      'Confirm',
      name: 'Common_text_confirm',
      desc: '确定',
      args: [],
    );
  }

  /// `Go to Set`
  String get Common_text_toSetting {
    return Intl.message(
      'Go to Set',
      name: 'Common_text_toSetting',
      desc: '去设置',
      args: [],
    );
  }

  /// `Request Permission Failed`
  String get common_requestPermissionFailedDialog_title {
    return Intl.message(
      'Request Permission Failed',
      name: 'common_requestPermissionFailedDialog_title',
      desc: '公共请求权限失败弹框title',
      args: [],
    );
  }

  /// `The Account Has been Logged in on Another Device`
  String get DialogForeLogoutForOtherDeviceTitle {
    return Intl.message(
      'The Account Has been Logged in on Another Device',
      name: 'DialogForeLogoutForOtherDeviceTitle',
      desc: '单点登录弹框标题',
      args: [],
    );
  }

  /// `Your account is already logged in on another mobile device. The current account will be logged out from this device.`
  String get DialogForeLogoutForOtherDeviceContent {
    return Intl.message(
      'Your account is already logged in on another mobile device. The current account will be logged out from this device.',
      name: 'DialogForeLogoutForOtherDeviceContent',
      desc: '单点登录弹框内容',
      args: [],
    );
  }

  /// `OK`
  String get DialogForeLogoutForOtherDeviceConfirm {
    return Intl.message(
      'OK',
      name: 'DialogForeLogoutForOtherDeviceConfirm',
      desc: '单点登录弹框按钮文本',
      args: [],
    );
  }

  /// `You have enabled developer mode. Please take care to protect your data`
  String get DialogSecurityWarningContent {
    return Intl.message(
      'You have enabled developer mode. Please take care to protect your data',
      name: 'DialogSecurityWarningContent',
      desc: '系统环境检测警告',
      args: [],
    );
  }

  /// `Got It`
  String get DialogSecurityWarningNoMorePromote {
    return Intl.message(
      'Got It',
      name: 'DialogSecurityWarningNoMorePromote',
      desc: '系统环境检测警告，不再提醒',
      args: [],
    );
  }

  /// `Discovery friends in Contacts`
  String get Permission_failureDialog_contact_title {
    return Intl.message(
      'Discovery friends in Contacts',
      name: 'Permission_failureDialog_contact_title',
      desc: '权限失败弹窗 通讯录 标题',
      args: [],
    );
  }

  /// `Go into System Settings and authorize the rights for the application`
  String get Permission_failureDialog_contact_message {
    return Intl.message(
      'Go into System Settings and authorize the rights for the application',
      name: 'Permission_failureDialog_contact_message',
      desc: '权限失败弹窗 通讯录 内容',
      args: [],
    );
  }

  /// `Please allow to access your album`
  String get Permission_failureDialog_gallery_title {
    return Intl.message(
      'Please allow to access your album',
      name: 'Permission_failureDialog_gallery_title',
      desc: '权限失败弹窗 相册 标题',
      args: [],
    );
  }

  /// `You can set picture, scan QR code to bind vehicle`
  String get Permission_failureDialog_gallery_message {
    return Intl.message(
      'You can set picture, scan QR code to bind vehicle',
      name: 'Permission_failureDialog_gallery_message',
      desc: '权限失败弹窗 相册 内容',
      args: [],
    );
  }

  /// `Please allow to access your camera`
  String get Permission_failureDialog_camera_title {
    return Intl.message(
      'Please allow to access your camera',
      name: 'Permission_failureDialog_camera_title',
      desc: '权限失败弹窗 相机 标题',
      args: [],
    );
  }

  /// `You can set picture, scan QR code to bind vehicle`
  String get Permission_failureDialog_camera_message {
    return Intl.message(
      'You can set picture, scan QR code to bind vehicle',
      name: 'Permission_failureDialog_camera_message',
      desc: '权限失败弹窗 相机 内容',
      args: [],
    );
  }

  /// `Please turn on location service`
  String get Permission_failureDialog_location_title {
    return Intl.message(
      'Please turn on location service',
      name: 'Permission_failureDialog_location_title',
      desc: '权限失败弹窗 定位 标题',
      args: [],
    );
  }

  /// ``
  String get Permission_failureDialog_location_message {
    return Intl.message(
      '',
      name: 'Permission_failureDialog_location_message',
      desc: '权限失败弹窗 定位 内容 TBD',
      args: [],
    );
  }

  /// `Please turn on the Bluetooth`
  String get Permission_failureDialog_bluetooth_title {
    return Intl.message(
      'Please turn on the Bluetooth',
      name: 'Permission_failureDialog_bluetooth_title',
      desc: '权限失败弹窗 蓝牙 标题 TBD',
      args: [],
    );
  }

  /// ``
  String get Permission_failureDialog_bluetooth_message {
    return Intl.message(
      '',
      name: 'Permission_failureDialog_bluetooth_message',
      desc: '权限失败弹窗 蓝牙 内容 TBD',
      args: [],
    );
  }

  /// `Please turn on microphone privileges`
  String get Permission_failureDialog_microphone_title {
    return Intl.message(
      'Please turn on microphone privileges',
      name: 'Permission_failureDialog_microphone_title',
      desc: '权限失败弹窗 麦克风 标题 TBD',
      args: [],
    );
  }

  /// ``
  String get Permission_failureDialog_microphone_message {
    return Intl.message(
      '',
      name: 'Permission_failureDialog_microphone_message',
      desc: '权限失败弹窗 麦克风 内容 TBD',
      args: [],
    );
  }

  /// `Login expiration reminder`
  String get ReLoginDialog_title {
    return Intl.message(
      'Login expiration reminder',
      name: 'ReLoginDialog_title',
      desc: '重新登录弹窗 标题',
      args: [],
    );
  }

  /// `Login has expired, please log in again.`
  String get ReLoginDialog_message {
    return Intl.message(
      'Login has expired, please log in again.',
      name: 'ReLoginDialog_message',
      desc: '重新登录弹窗',
      args: [],
    );
  }

  /// `OK`
  String get ReLoginDialog_button {
    return Intl.message(
      'OK',
      name: 'ReLoginDialog_button',
      desc: '重新登录弹窗 按钮',
      args: [],
    );
  }

  /// `The service is unavailable because the current vehicle does not have a real name.`
  String get ScopeFailedUnActivated {
    return Intl.message(
      'The service is unavailable because the current vehicle does not have a real name.',
      name: 'ScopeFailedUnActivated',
      desc: 'scope 未激活导致',
      args: [],
    );
  }

  /// `Your don't have enough permissions to use the service.`
  String get ScopeFailedNoPermission {
    return Intl.message(
      'Your don\'t have enough permissions to use the service.',
      name: 'ScopeFailedNoPermission',
      desc: 'scope 未激活导致',
      args: [],
    );
  }

  /// `Version Upgrade Reminder`
  String get AppNeedUpgradeDialog_title {
    return Intl.message(
      'Version Upgrade Reminder',
      name: 'AppNeedUpgradeDialog_title',
      desc: 'app升级提示弹框 标题',
      args: [],
    );
  }

  /// `In order to provide better functionality and experience, we have launched a new client version. Please upgrade now to get the following benefits:\n\nA new interface involved, which is cleaner and more intuitive.\nFixed a number of issues to improve stability and performance.\nIntroduced new features to enrich your experience.`
  String get AppNeedUpgradeDialog_content {
    return Intl.message(
      'In order to provide better functionality and experience, we have launched a new client version. Please upgrade now to get the following benefits:\n\nA new interface involved, which is cleaner and more intuitive.\nFixed a number of issues to improve stability and performance.\nIntroduced new features to enrich your experience.',
      name: 'AppNeedUpgradeDialog_content',
      desc: 'app升级提示弹框 内容',
      args: [],
    );
  }

  /// `Upgrade Now`
  String get AppNeedUpgradeDialog_confirm {
    return Intl.message(
      'Upgrade Now',
      name: 'AppNeedUpgradeDialog_confirm',
      desc: 'app升级提示弹框 确认按钮',
      args: [],
    );
  }

  /// `Upgrade Later`
  String get AppNeedUpgradeDialog_cancel {
    return Intl.message(
      'Upgrade Later',
      name: 'AppNeedUpgradeDialog_cancel',
      desc: 'app升级提示弹框 取消按钮',
      args: [],
    );
  }

  /// `User Agreement and Privacy Protection`
  String get AppLocalPrivacyPageTitle {
    return Intl.message(
      'User Agreement and Privacy Protection',
      name: 'AppLocalPrivacyPageTitle',
      desc: '用户协议与隐私保护',
      args: [],
    );
  }

  /// `We take your personal information and privacy protection very seriously. To better safeguard your personal rights and interests, please carefully read through all the terms and conditions of the`
  String get AppLocalPrivacyPageCententHead1 {
    return Intl.message(
      'We take your personal information and privacy protection very seriously. To better safeguard your personal rights and interests, please carefully read through all the terms and conditions of the',
      name: 'AppLocalPrivacyPageCententHead1',
      desc: '',
      args: [],
    );
  }

  /// `"User Agreement"`
  String get AppUserAgreementTitle {
    return Intl.message(
      '"User Agreement"',
      name: 'AppUserAgreementTitle',
      desc: '《用户协议》',
      args: [],
    );
  }

  /// `"Privacy Policy"`
  String get AppPrivacyAgreementTitle {
    return Intl.message(
      '"Privacy Policy"',
      name: 'AppPrivacyAgreementTitle',
      desc: '《隐私政策》',
      args: [],
    );
  }

  /// `"Account Service Agreement"`
  String get AppAccountServiceTitle {
    return Intl.message(
      '"Account Service Agreement"',
      name: 'AppAccountServiceTitle',
      desc: '《账号服务协议》',
      args: [],
    );
  }

  /// `before using this product. To help you quickly understand the services we provide and how we collect your information, we hereby provide the following explanations:\n\n`
  String get AppLocalPrivacyPageCententHead2 {
    return Intl.message(
      'before using this product. To help you quickly understand the services we provide and how we collect your information, we hereby provide the following explanations:\n\n',
      name: 'AppLocalPrivacyPageCententHead2',
      desc: '',
      args: [],
    );
  }

  /// `1）We will provide you with services such as vehicle ordering and related services, vehicle charging, remote viewing and control of the vehicle, and we will collect and use your relevant and necessary personal information.\n\n2）You can inquire, correct, and delete the personal information you have authorized us to collect, and we also provide you with channels to deactivate your account.\n\n3）We will adopt various security measures to ensure the safety of your personal information. Unless with your consent or as stipulated by relevant laws and regulations, we will not share your personal information with any third party.\n\n`
  String get AppLocalPrivacyPageCentent {
    return Intl.message(
      '1）We will provide you with services such as vehicle ordering and related services, vehicle charging, remote viewing and control of the vehicle, and we will collect and use your relevant and necessary personal information.\n\n2）You can inquire, correct, and delete the personal information you have authorized us to collect, and we also provide you with channels to deactivate your account.\n\n3）We will adopt various security measures to ensure the safety of your personal information. Unless with your consent or as stipulated by relevant laws and regulations, we will not share your personal information with any third party.\n\n',
      name: 'AppLocalPrivacyPageCentent',
      desc: '',
      args: [],
    );
  }

  /// `Please carefully read the`
  String get AppLocalPrivacyPageEnding1 {
    return Intl.message(
      'Please carefully read the',
      name: 'AppLocalPrivacyPageEnding1',
      desc: '',
      args: [],
    );
  }

  /// `before using our products and services, and confirm whether you agree to them. If you agree to the above content, please click "Agree" to start using our products and services!`
  String get AppLocalPrivacyPageEnding2 {
    return Intl.message(
      'before using our products and services, and confirm whether you agree to them. If you agree to the above content, please click "Agree" to start using our products and services!',
      name: 'AppLocalPrivacyPageEnding2',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get AppUserAgreementAnd {
    return Intl.message(
      'and',
      name: 'AppUserAgreementAnd',
      desc: '《用户协议》',
      args: [],
    );
  }

  /// `Agreement Acceptance Required to Proceed`
  String get AppLocalPrivacyDialogTitle {
    return Intl.message(
      'Agreement Acceptance Required to Proceed',
      name: 'AppLocalPrivacyDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `We apologize, if you do not agree to the terms of the {agreementUrl}, {privacyUrl}, {accountServiceUrl}, we will not be able to continue to provide you with services`
  String AppLocalPrivacyDialogContent(
      Object agreementUrl, Object privacyUrl, Object accountServiceUrl) {
    return Intl.message(
      'We apologize, if you do not agree to the terms of the $agreementUrl, $privacyUrl, $accountServiceUrl, we will not be able to continue to provide you with services',
      name: 'AppLocalPrivacyDialogContent',
      desc: '',
      args: [agreementUrl, privacyUrl, accountServiceUrl],
    );
  }

  /// `Agree`
  String get AppLocalPrivacyPageDilogAgree {
    return Intl.message(
      'Agree',
      name: 'AppLocalPrivacyPageDilogAgree',
      desc: '',
      args: [],
    );
  }

  /// `Disagree`
  String get AppLocalPrivacyPageDisagree {
    return Intl.message(
      'Disagree',
      name: 'AppLocalPrivacyPageDisagree',
      desc: '',
      args: [],
    );
  }

  /// `Exit App`
  String get AppLocalPrivacyPageDilogExitApp {
    return Intl.message(
      'Exit App',
      name: 'AppLocalPrivacyPageDilogExitApp',
      desc: '',
      args: [],
    );
  }

  /// `Online Service`
  String get online_support_title_bar {
    return Intl.message(
      'Online Service',
      name: 'online_support_title_bar',
      desc: '',
      args: [],
    );
  }

  /// `Not Supported on Rooted Devices`
  String get AppNotSupportRootDialogTitle {
    return Intl.message(
      'Not Supported on Rooted Devices',
      name: 'AppNotSupportRootDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `For safety purpose, please replace the device, thank you for your understanding and support.`
  String get AppNotSupportRootDialogContent {
    return Intl.message(
      'For safety purpose, please replace the device, thank you for your understanding and support.',
      name: 'AppNotSupportRootDialogContent',
      desc: '',
      args: [],
    );
  }

  /// `{typeName} usage instructions`
  String PermissionDesc_title(Object typeName) {
    return Intl.message(
      '$typeName usage instructions',
      name: 'PermissionDesc_title',
      desc: '权限说明弹窗标题',
      args: [typeName],
    );
  }

  /// `Camera permission`
  String get PermissionDesc_typeName_camera {
    return Intl.message(
      'Camera permission',
      name: 'PermissionDesc_typeName_camera',
      desc: '权限说明弹窗类型 相机',
      args: [],
    );
  }

  /// `Gallery permission`
  String get PermissionDesc_typeName_gallery {
    return Intl.message(
      'Gallery permission',
      name: 'PermissionDesc_typeName_gallery',
      desc: '权限说明弹窗类型 相机',
      args: [],
    );
  }

  /// `The App may require access to your phone's camera or gallery for features such as uploading product images for non-returnable items, bug feedback, personal profile cover customization, uploading documents. Without this permission, some features may not be usable.`
  String get PermissionDesc_camera {
    return Intl.message(
      'The App may require access to your phone\'s camera or gallery for features such as uploading product images for non-returnable items, bug feedback, personal profile cover customization, uploading documents. Without this permission, some features may not be usable.',
      name: 'PermissionDesc_camera',
      desc: '权限说明文言 相机',
      args: [],
    );
  }

  /// `Contacts permission`
  String get PermissionDesc_typeName_contacts {
    return Intl.message(
      'Contacts permission',
      name: 'PermissionDesc_typeName_contacts',
      desc: '权限说明弹窗类型 通讯录',
      args: [],
    );
  }

  /// `When you create smart scenes and upload video or audio through the App, we may need to enable access to your device's media library. Without providing media library permission, you may not be able to use the corresponding features.`
  String get PermissionDesc_contacts {
    return Intl.message(
      'When you create smart scenes and upload video or audio through the App, we may need to enable access to your device\'s media library. Without providing media library permission, you may not be able to use the corresponding features.',
      name: 'PermissionDesc_contacts',
      desc: '权限说明文言 通讯录',
      args: [],
    );
  }

  /// `App wants to access your camera`
  String get permission_dialog_camera_title {
    return Intl.message(
      'App wants to access your camera',
      name: 'permission_dialog_camera_title',
      desc: '权限弹窗 相机 标题',
      args: [],
    );
  }

  /// `Camera permissions are used for functions such as uploading header image, and other functions that require taking photos or videos.`
  String get permission_dialog_camera_content {
    return Intl.message(
      'Camera permissions are used for functions such as uploading header image, and other functions that require taking photos or videos.',
      name: 'permission_dialog_camera_content',
      desc: '权限弹窗 相机 内容',
      args: [],
    );
  }

  /// `Allow App to use your location`
  String get permission_dialog_location_title {
    return Intl.message(
      'Allow App to use your location',
      name: 'permission_dialog_location_title',
      desc: '权限弹窗 定位 标题',
      args: [],
    );
  }

  /// `Nearby store recommendations, vehicle pick-up and drop off, obtaining vehicle location, maintenance appointments, remote parking assistance, and other functions require location permission. It is recommended that you choose "Allow when using the App" to ensure that these functions can be used normally.`
  String get permission_dialog_location_content {
    return Intl.message(
      'Nearby store recommendations, vehicle pick-up and drop off, obtaining vehicle location, maintenance appointments, remote parking assistance, and other functions require location permission. It is recommended that you choose "Allow when using the App" to ensure that these functions can be used normally.',
      name: 'permission_dialog_location_content',
      desc: '权限弹窗 定位 内容',
      args: [],
    );
  }

  /// `App would like access your phone storage`
  String get permission_dialog_storage_title {
    return Intl.message(
      'App would like access your phone storage',
      name: 'permission_dialog_storage_title',
      desc: '权限弹窗 存储 标题',
      args: [],
    );
  }

  /// `When you use the App to save images from the mall, save images for one-click charging, save PGC images, save article images, or upload or save images, we may need to access the storage permissions on your mobile device. If you do not provide access to your phone's storage, you may not be able to use the corresponding functions.`
  String get permission_dialog_storage_content {
    return Intl.message(
      'When you use the App to save images from the mall, save images for one-click charging, save PGC images, save article images, or upload or save images, we may need to access the storage permissions on your mobile device. If you do not provide access to your phone\'s storage, you may not be able to use the corresponding functions.',
      name: 'permission_dialog_storage_content',
      desc: '权限弹窗 存储 内容',
      args: [],
    );
  }

  /// `App would like access to your calendar`
  String get permission_dialog_calendar_title {
    return Intl.message(
      'App would like access to your calendar',
      name: 'permission_dialog_calendar_title',
      desc: '权限弹窗 日历 标题',
      args: [],
    );
  }

  /// `When you use the App to add events and schedule reminders, we may need to access the calendar permissions on your mobile device. If you do not provide access to your calendar, you may not be able to use the corresponding functions.`
  String get permission_dialog_calendar_content {
    return Intl.message(
      'When you use the App to add events and schedule reminders, we may need to access the calendar permissions on your mobile device. If you do not provide access to your calendar, you may not be able to use the corresponding functions.',
      name: 'permission_dialog_calendar_content',
      desc: '权限弹窗 日历 内容',
      args: [],
    );
  }

  /// `App wants to access your photo gallery`
  String get permission_dialog_gallery_title {
    return Intl.message(
      'App wants to access your photo gallery',
      name: 'permission_dialog_gallery_title',
      desc: '权限弹窗 图库 标题',
      args: [],
    );
  }

  /// `Photo permissions are used for uploading header image, and other functions that require uploading photos or videos.`
  String get permission_dialog_gallery_content {
    return Intl.message(
      'Photo permissions are used for uploading header image, and other functions that require uploading photos or videos.',
      name: 'permission_dialog_gallery_content',
      desc: '权限弹窗 图库 内容',
      args: [],
    );
  }

  /// `App wants to access your microphone`
  String get permission_dialog_microphone_title {
    return Intl.message(
      'App wants to access your microphone',
      name: 'permission_dialog_microphone_title',
      desc: '权限弹窗 麦克风 标题',
      args: [],
    );
  }

  /// `Microphone permission is used for voice notification and voice cloning functions.`
  String get permission_dialog_microphone_content {
    return Intl.message(
      'Microphone permission is used for voice notification and voice cloning functions.',
      name: 'permission_dialog_microphone_content',
      desc: '权限弹窗 麦克风 内容',
      args: [],
    );
  }

  /// `App would like access to your contacts`
  String get permission_dialog_contact_title {
    return Intl.message(
      'App would like access to your contacts',
      name: 'permission_dialog_contact_title',
      desc: '权限弹窗 通讯录 标题',
      args: [],
    );
  }

  /// `When you enter an emergency contact through the App, we may need to enable access to your contacts for inputting the name and phone number of the emergency contact.`
  String get permission_dialog_contact_content {
    return Intl.message(
      'When you enter an emergency contact through the App, we may need to enable access to your contacts for inputting the name and phone number of the emergency contact.',
      name: 'permission_dialog_contact_content',
      desc: '权限弹窗 通讯录 内容',
      args: [],
    );
  }

  /// `App Would Like to Send You Notifications`
  String get permission_dialog_notification_title {
    return Intl.message(
      'App Would Like to Send You Notifications',
      name: 'permission_dialog_notification_title',
      desc: '权限弹窗 通知 标题',
      args: [],
    );
  }

  /// `Notification Permissions are used to provide you with notifications, updates, events, and other push notifications.`
  String get permission_dialog_notification_content {
    return Intl.message(
      'Notification Permissions are used to provide you with notifications, updates, events, and other push notifications.',
      name: 'permission_dialog_notification_content',
      desc: '权限弹窗 通知 内容',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
