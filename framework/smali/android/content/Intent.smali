.class public Landroid/content/Intent;
.super Ljava/lang/Object;
.source "Intent.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/Intent$1;,
        Landroid/content/Intent$CommandOptionHandler;,
        Landroid/content/Intent$FilterComparison;,
        Landroid/content/Intent$ShortcutIconResource;
    }
.end annotation


# static fields
.field public static final ACTION_ADVANCED_SETTINGS_CHANGED:Ljava/lang/String; = "android.intent.action.ADVANCED_SETTINGS"

.field public static final ACTION_AIRPLANE_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_ALARM_CHANGED:Ljava/lang/String; = "android.intent.action.ALARM_CHANGED"

.field public static final ACTION_ALL_APPS:Ljava/lang/String; = "android.intent.action.ALL_APPS"

.field public static final ACTION_ANSWER:Ljava/lang/String; = "android.intent.action.ANSWER"

.field public static final ACTION_APPLICATION_PREFERENCES:Ljava/lang/String; = "android.intent.action.APPLICATION_PREFERENCES"

.field public static final ACTION_APPLICATION_RESTRICTIONS_CHANGED:Ljava/lang/String; = "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

.field public static final ACTION_APP_ERROR:Ljava/lang/String; = "android.intent.action.APP_ERROR"

.field public static final ACTION_ASSIST:Ljava/lang/String; = "android.intent.action.ASSIST"

.field public static final ACTION_ATTACH_DATA:Ljava/lang/String; = "android.intent.action.ATTACH_DATA"

.field public static final ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field public static final ACTION_BATTERY_LOW:Ljava/lang/String; = "android.intent.action.BATTERY_LOW"

.field public static final ACTION_BATTERY_OKAY:Ljava/lang/String; = "android.intent.action.BATTERY_OKAY"

.field public static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static final ACTION_BUG_REPORT:Ljava/lang/String; = "android.intent.action.BUG_REPORT"

.field public static final ACTION_CALL:Ljava/lang/String; = "android.intent.action.CALL"

.field public static final ACTION_CALL_BUTTON:Ljava/lang/String; = "android.intent.action.CALL_BUTTON"

.field public static final ACTION_CALL_EMERGENCY:Ljava/lang/String; = "android.intent.action.CALL_EMERGENCY"

.field public static final ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "android.intent.action.CALL_PRIVILEGED"

.field public static final ACTION_CAMERA_BUTTON:Ljava/lang/String; = "android.intent.action.CAMERA_BUTTON"

.field public static final ACTION_CARRIER_SETUP:Ljava/lang/String; = "android.intent.action.CARRIER_SETUP"

.field public static final ACTION_CHOOSER:Ljava/lang/String; = "android.intent.action.CHOOSER"

.field public static final ACTION_CLEAR_DNS_CACHE:Ljava/lang/String; = "android.intent.action.CLEAR_DNS_CACHE"

.field public static final ACTION_CLOSE_SYSTEM_DIALOGS:Ljava/lang/String; = "android.intent.action.CLOSE_SYSTEM_DIALOGS"

.field public static final ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final ACTION_CREATE_DOCUMENT:Ljava/lang/String; = "android.intent.action.CREATE_DOCUMENT"

.field public static final ACTION_CREATE_SHORTCUT:Ljava/lang/String; = "android.intent.action.CREATE_SHORTCUT"

.field public static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"

.field public static final ACTION_DEFAULT:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_DELETE:Ljava/lang/String; = "android.intent.action.DELETE"

.field public static final ACTION_DEVICE_INITIALIZATION_WIZARD:Ljava/lang/String; = "android.intent.action.DEVICE_INITIALIZATION_WIZARD"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_LOCKED_CHANGED:Ljava/lang/String; = "android.intent.action.DEVICE_LOCKED_CHANGED"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_LOW:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_LOW"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DEVICE_STORAGE_OK:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_OK"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_DIAL:Ljava/lang/String; = "android.intent.action.DIAL"

.field public static final ACTION_DISMISS_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

.field public static final ACTION_DOCK_EVENT:Ljava/lang/String; = "android.intent.action.DOCK_EVENT"

.field public static final ACTION_DREAMING_STARTED:Ljava/lang/String; = "android.intent.action.DREAMING_STARTED"

.field public static final ACTION_DREAMING_STOPPED:Ljava/lang/String; = "android.intent.action.DREAMING_STOPPED"

.field public static final ACTION_DYNAMIC_SENSOR_CHANGED:Ljava/lang/String; = "android.intent.action.DYNAMIC_SENSOR_CHANGED"

.field public static final ACTION_EDIT:Ljava/lang/String; = "android.intent.action.EDIT"

.field public static final ACTION_EPHEMERAL_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.EPHEMERAL_RESOLVER_SETTINGS"

.field public static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field public static final ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

.field public static final ACTION_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.FACTORY_RESET"

.field public static final ACTION_FACTORY_TEST:Ljava/lang/String; = "android.intent.action.FACTORY_TEST"

.field public static final ACTION_GET_CONTENT:Ljava/lang/String; = "android.intent.action.GET_CONTENT"

.field public static final ACTION_GET_RESTRICTION_ENTRIES:Ljava/lang/String; = "android.intent.action.GET_RESTRICTION_ENTRIES"

.field public static final ACTION_GLOBAL_BUTTON:Ljava/lang/String; = "android.intent.action.GLOBAL_BUTTON"

.field public static final ACTION_GTALK_SERVICE_CONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_CONNECTED"

.field public static final ACTION_GTALK_SERVICE_DISCONNECTED:Ljava/lang/String; = "android.intent.action.GTALK_DISCONNECTED"

.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final ACTION_IDLE_MAINTENANCE_END:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_END"

.field public static final ACTION_IDLE_MAINTENANCE_START:Ljava/lang/String; = "android.intent.action.ACTION_IDLE_MAINTENANCE_START"

.field public static final ACTION_INPUT_METHOD_CHANGED:Ljava/lang/String; = "android.intent.action.INPUT_METHOD_CHANGED"

.field public static final ACTION_INSERT:Ljava/lang/String; = "android.intent.action.INSERT"

.field public static final ACTION_INSERT_OR_EDIT:Ljava/lang/String; = "android.intent.action.INSERT_OR_EDIT"

.field public static final ACTION_INSTALL_EPHEMERAL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_EPHEMERAL_PACKAGE"

.field public static final ACTION_INSTALL_FAILURE:Ljava/lang/String; = "android.intent.action.INSTALL_FAILURE"

.field public static final ACTION_INSTALL_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

.field public static final ACTION_INSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.INSTALL_PACKAGE"

.field public static final ACTION_INSTANT_APP_RESOLVER_SETTINGS:Ljava/lang/String; = "android.intent.action.INSTANT_APP_RESOLVER_SETTINGS"

.field public static final ACTION_INTENT_FILTER_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

.field public static final ACTION_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field public static final ACTION_LOCKED_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.LOCKED_BOOT_COMPLETED"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_AVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_AVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final ACTION_MANAGED_PROFILE_UNAVAILABLE:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

.field public static final ACTION_MANAGED_PROFILE_UNLOCKED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_UNLOCKED"

.field public static final ACTION_MANAGE_APP_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_APP_PERMISSIONS"

.field public static final ACTION_MANAGE_NETWORK_USAGE:Ljava/lang/String; = "android.intent.action.MANAGE_NETWORK_USAGE"

.field public static final ACTION_MANAGE_PACKAGE_STORAGE:Ljava/lang/String; = "android.intent.action.MANAGE_PACKAGE_STORAGE"

.field public static final ACTION_MANAGE_PERMISSIONS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSIONS"

.field public static final ACTION_MANAGE_PERMISSION_APPS:Ljava/lang/String; = "android.intent.action.MANAGE_PERMISSION_APPS"

.field public static final ACTION_MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"

.field public static final ACTION_MEDIA_BAD_REMOVAL:Ljava/lang/String; = "android.intent.action.MEDIA_BAD_REMOVAL"

.field public static final ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field public static final ACTION_MEDIA_CHECKING:Ljava/lang/String; = "android.intent.action.MEDIA_CHECKING"

.field public static final ACTION_MEDIA_EJECT:Ljava/lang/String; = "android.intent.action.MEDIA_EJECT"

.field public static final ACTION_MEDIA_MOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_MOUNTED"

.field public static final ACTION_MEDIA_NOFS:Ljava/lang/String; = "android.intent.action.MEDIA_NOFS"

.field public static final ACTION_MEDIA_REMOVED:Ljava/lang/String; = "android.intent.action.MEDIA_REMOVED"

.field public static final ACTION_MEDIA_RESOURCE_GRANTED:Ljava/lang/String; = "android.intent.action.MEDIA_RESOURCE_GRANTED"

.field public static final ACTION_MEDIA_SCANNER_FINISHED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field public static final ACTION_MEDIA_SCANNER_SCAN_FILE:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

.field public static final ACTION_MEDIA_SCANNER_STARTED:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_STARTED"

.field public static final ACTION_MEDIA_SHARED:Ljava/lang/String; = "android.intent.action.MEDIA_SHARED"

.field public static final ACTION_MEDIA_UNMOUNTABLE:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTABLE"

.field public static final ACTION_MEDIA_UNMOUNTED:Ljava/lang/String; = "android.intent.action.MEDIA_UNMOUNTED"

.field public static final ACTION_MEDIA_UNSHARED:Ljava/lang/String; = "android.intent.action.MEDIA_UNSHARED"

.field public static final ACTION_MY_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.MY_PACKAGE_REPLACED"

.field public static final ACTION_NEW_OUTGOING_CALL:Ljava/lang/String; = "android.intent.action.NEW_OUTGOING_CALL"

.field public static final ACTION_OPEN_DOCUMENT:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT"

.field public static final ACTION_OPEN_DOCUMENT_TREE:Ljava/lang/String; = "android.intent.action.OPEN_DOCUMENT_TREE"

.field public static final ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final ACTION_PACKAGES_SUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_SUSPENDED"

.field public static final ACTION_PACKAGES_UNSUSPENDED:Ljava/lang/String; = "android.intent.action.PACKAGES_UNSUSPENDED"

.field public static final ACTION_PACKAGE_ADDED:Ljava/lang/String; = "android.intent.action.PACKAGE_ADDED"

.field public static final ACTION_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field public static final ACTION_PACKAGE_DATA_CLEARED:Ljava/lang/String; = "android.intent.action.PACKAGE_DATA_CLEARED"

.field public static final ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "android.intent.action.PACKAGE_FIRST_LAUNCH"

.field public static final ACTION_PACKAGE_FULLY_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_FULLY_REMOVED"

.field public static final ACTION_PACKAGE_INSTALL:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_PACKAGE_NEEDS_VERIFICATION:Ljava/lang/String; = "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

.field public static final ACTION_PACKAGE_REMOVED:Ljava/lang/String; = "android.intent.action.PACKAGE_REMOVED"

.field public static final ACTION_PACKAGE_REPLACED:Ljava/lang/String; = "android.intent.action.PACKAGE_REPLACED"

.field public static final ACTION_PACKAGE_RESTARTED:Ljava/lang/String; = "android.intent.action.PACKAGE_RESTARTED"

.field public static final ACTION_PACKAGE_VERIFIED:Ljava/lang/String; = "android.intent.action.PACKAGE_VERIFIED"

.field public static final ACTION_PASTE:Ljava/lang/String; = "android.intent.action.PASTE"

.field public static final ACTION_PICK:Ljava/lang/String; = "android.intent.action.PICK"

.field public static final ACTION_PICK_ACTIVITY:Ljava/lang/String; = "android.intent.action.PICK_ACTIVITY"

.field public static final ACTION_POWER_CONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_CONNECTED"

.field public static final ACTION_POWER_DISCONNECTED:Ljava/lang/String; = "android.intent.action.ACTION_POWER_DISCONNECTED"

.field public static final ACTION_POWER_USAGE_SUMMARY:Ljava/lang/String; = "android.intent.action.POWER_USAGE_SUMMARY"

.field public static final ACTION_PREFERRED_ACTIVITY_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

.field public static final ACTION_PRE_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.PRE_BOOT_COMPLETED"

.field public static final ACTION_PROCESS_TEXT:Ljava/lang/String; = "android.intent.action.PROCESS_TEXT"

.field public static final ACTION_PROVIDER_CHANGED:Ljava/lang/String; = "android.intent.action.PROVIDER_CHANGED"

.field public static final ACTION_QUERY_PACKAGE_RESTART:Ljava/lang/String; = "android.intent.action.QUERY_PACKAGE_RESTART"

.field public static final ACTION_QUICK_CLOCK:Ljava/lang/String; = "android.intent.action.QUICK_CLOCK"

.field public static final ACTION_QUICK_VIEW:Ljava/lang/String; = "android.intent.action.QUICK_VIEW"

.field public static final ACTION_REBOOT:Ljava/lang/String; = "android.intent.action.REBOOT"

.field public static final ACTION_REMOTE_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final ACTION_REQUEST_SHUTDOWN:Ljava/lang/String; = "com.android.internal.intent.action.REQUEST_SHUTDOWN"

.field public static final ACTION_RESOLVE_EPHEMERAL_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_EPHEMERAL_PACKAGE"

.field public static final ACTION_RESOLVE_INSTANT_APP_PACKAGE:Ljava/lang/String; = "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

.field public static final ACTION_REVIEW_PERMISSIONS:Ljava/lang/String; = "android.intent.action.REVIEW_PERMISSIONS"

.field public static final ACTION_RUN:Ljava/lang/String; = "android.intent.action.RUN"

.field public static final ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field public static final ACTION_SCREEN_ON:Ljava/lang/String; = "android.intent.action.SCREEN_ON"

.field public static final ACTION_SEARCH:Ljava/lang/String; = "android.intent.action.SEARCH"

.field public static final ACTION_SEARCH_LONG_PRESS:Ljava/lang/String; = "android.intent.action.SEARCH_LONG_PRESS"

.field public static final ACTION_SEND:Ljava/lang/String; = "android.intent.action.SEND"

.field public static final ACTION_SENDTO:Ljava/lang/String; = "android.intent.action.SENDTO"

.field public static final ACTION_SEND_MULTIPLE:Ljava/lang/String; = "android.intent.action.SEND_MULTIPLE"

.field public static final ACTION_SERVICE_STATE:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_SETTING_RESTORED:Ljava/lang/String; = "android.os.action.SETTING_RESTORED"

.field public static final ACTION_SET_WALLPAPER:Ljava/lang/String; = "android.intent.action.SET_WALLPAPER"

.field public static final ACTION_SHOW_APP_INFO:Ljava/lang/String; = "android.intent.action.SHOW_APP_INFO"

.field public static final ACTION_SHOW_BRIGHTNESS_DIALOG:Ljava/lang/String; = "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

.field public static final ACTION_SHOW_KEYBOARD_SHORTCUTS:Ljava/lang/String; = "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

.field public static final ACTION_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SYNC:Ljava/lang/String; = "android.intent.action.SYNC"

.field public static final ACTION_SYSTEM_TUTORIAL:Ljava/lang/String; = "android.intent.action.SYSTEM_TUTORIAL"

.field public static final ACTION_THERMAL_EVENT:Ljava/lang/String; = "android.intent.action.THERMAL_EVENT"

.field public static final ACTION_TIMEZONE_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEZONE_CHANGED"

.field public static final ACTION_TIME_CHANGED:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field public static final ACTION_TIME_TICK:Ljava/lang/String; = "android.intent.action.TIME_TICK"

.field public static final ACTION_UID_REMOVED:Ljava/lang/String; = "android.intent.action.UID_REMOVED"

.field public static final ACTION_UMS_CONNECTED:Ljava/lang/String; = "android.intent.action.UMS_CONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UMS_DISCONNECTED:Ljava/lang/String; = "android.intent.action.UMS_DISCONNECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_UNINSTALL_PACKAGE:Ljava/lang/String; = "android.intent.action.UNINSTALL_PACKAGE"

.field public static final ACTION_UPGRADE_SETUP:Ljava/lang/String; = "android.intent.action.UPGRADE_SETUP"

.field public static final ACTION_USER_ADDED:Ljava/lang/String; = "android.intent.action.USER_ADDED"

.field public static final ACTION_USER_BACKGROUND:Ljava/lang/String; = "android.intent.action.USER_BACKGROUND"

.field public static final ACTION_USER_FOREGROUND:Ljava/lang/String; = "android.intent.action.USER_FOREGROUND"

.field public static final ACTION_USER_INFO_CHANGED:Ljava/lang/String; = "android.intent.action.USER_INFO_CHANGED"

.field public static final ACTION_USER_INITIALIZE:Ljava/lang/String; = "android.intent.action.USER_INITIALIZE"

.field public static final ACTION_USER_PRESENT:Ljava/lang/String; = "android.intent.action.USER_PRESENT"

.field public static final ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"

.field public static final ACTION_USER_STARTED:Ljava/lang/String; = "android.intent.action.USER_STARTED"

.field public static final ACTION_USER_STARTING:Ljava/lang/String; = "android.intent.action.USER_STARTING"

.field public static final ACTION_USER_STOPPED:Ljava/lang/String; = "android.intent.action.USER_STOPPED"

.field public static final ACTION_USER_STOPPING:Ljava/lang/String; = "android.intent.action.USER_STOPPING"

.field public static final ACTION_USER_SWITCHED:Ljava/lang/String; = "android.intent.action.USER_SWITCHED"

.field public static final ACTION_USER_UNLOCKED:Ljava/lang/String; = "android.intent.action.USER_UNLOCKED"

.field public static final ACTION_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field public static final ACTION_VOICE_ASSIST:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST"

.field public static final ACTION_VOICE_COMMAND:Ljava/lang/String; = "android.intent.action.VOICE_COMMAND"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "android.intent.action.WALLPAPER_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_WEB_SEARCH:Ljava/lang/String; = "android.intent.action.WEB_SEARCH"

.field private static final ATTR_ACTION:Ljava/lang/String; = "action"

.field private static final ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final ATTR_COMPONENT:Ljava/lang/String; = "component"

.field private static final ATTR_DATA:Ljava/lang/String; = "data"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_TYPE:Ljava/lang/String; = "type"

.field public static final CATEGORY_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.ALTERNATIVE"

.field public static final CATEGORY_APP_BROWSER:Ljava/lang/String; = "android.intent.category.APP_BROWSER"

.field public static final CATEGORY_APP_CALCULATOR:Ljava/lang/String; = "android.intent.category.APP_CALCULATOR"

.field public static final CATEGORY_APP_CALENDAR:Ljava/lang/String; = "android.intent.category.APP_CALENDAR"

.field public static final CATEGORY_APP_CONTACTS:Ljava/lang/String; = "android.intent.category.APP_CONTACTS"

.field public static final CATEGORY_APP_EMAIL:Ljava/lang/String; = "android.intent.category.APP_EMAIL"

.field public static final CATEGORY_APP_GALLERY:Ljava/lang/String; = "android.intent.category.APP_GALLERY"

.field public static final CATEGORY_APP_MAPS:Ljava/lang/String; = "android.intent.category.APP_MAPS"

.field public static final CATEGORY_APP_MARKET:Ljava/lang/String; = "android.intent.category.APP_MARKET"

.field public static final CATEGORY_APP_MESSAGING:Ljava/lang/String; = "android.intent.category.APP_MESSAGING"

.field public static final CATEGORY_APP_MUSIC:Ljava/lang/String; = "android.intent.category.APP_MUSIC"

.field public static final CATEGORY_BROWSABLE:Ljava/lang/String; = "android.intent.category.BROWSABLE"

.field public static final CATEGORY_CAR_DOCK:Ljava/lang/String; = "android.intent.category.CAR_DOCK"

.field public static final CATEGORY_CAR_MODE:Ljava/lang/String; = "android.intent.category.CAR_MODE"

.field public static final CATEGORY_DEFAULT:Ljava/lang/String; = "android.intent.category.DEFAULT"

.field public static final CATEGORY_DESK_DOCK:Ljava/lang/String; = "android.intent.category.DESK_DOCK"

.field public static final CATEGORY_DEVELOPMENT_PREFERENCE:Ljava/lang/String; = "android.intent.category.DEVELOPMENT_PREFERENCE"

.field public static final CATEGORY_EMBED:Ljava/lang/String; = "android.intent.category.EMBED"

.field public static final CATEGORY_FRAMEWORK_INSTRUMENTATION_TEST:Ljava/lang/String; = "android.intent.category.FRAMEWORK_INSTRUMENTATION_TEST"

.field public static final CATEGORY_HE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.HE_DESK_DOCK"

.field public static final CATEGORY_HOME:Ljava/lang/String; = "android.intent.category.HOME"

.field public static final CATEGORY_HOME_MAIN:Ljava/lang/String; = "android.intent.category.HOME_MAIN"

.field public static final CATEGORY_INFO:Ljava/lang/String; = "android.intent.category.INFO"

.field public static final CATEGORY_LAUNCHER:Ljava/lang/String; = "android.intent.category.LAUNCHER"

.field public static final CATEGORY_LAUNCHER_APP:Ljava/lang/String; = "android.intent.category.LAUNCHER_APP"

.field public static final CATEGORY_LEANBACK_LAUNCHER:Ljava/lang/String; = "android.intent.category.LEANBACK_LAUNCHER"

.field public static final CATEGORY_LEANBACK_SETTINGS:Ljava/lang/String; = "android.intent.category.LEANBACK_SETTINGS"

.field public static final CATEGORY_LE_DESK_DOCK:Ljava/lang/String; = "android.intent.category.LE_DESK_DOCK"

.field public static final CATEGORY_MONKEY:Ljava/lang/String; = "android.intent.category.MONKEY"

.field public static final CATEGORY_OPENABLE:Ljava/lang/String; = "android.intent.category.OPENABLE"

.field public static final CATEGORY_PREFERENCE:Ljava/lang/String; = "android.intent.category.PREFERENCE"

.field public static final CATEGORY_SAMPLE_CODE:Ljava/lang/String; = "android.intent.category.SAMPLE_CODE"

.field public static final CATEGORY_SELECTED_ALTERNATIVE:Ljava/lang/String; = "android.intent.category.SELECTED_ALTERNATIVE"

.field public static final CATEGORY_SETUP_WIZARD:Ljava/lang/String; = "android.intent.category.SETUP_WIZARD"

.field public static final CATEGORY_TAB:Ljava/lang/String; = "android.intent.category.TAB"

.field public static final CATEGORY_TEST:Ljava/lang/String; = "android.intent.category.TEST"

.field public static final CATEGORY_TYPED_OPENABLE:Ljava/lang/String; = "android.intent.category.TYPED_OPENABLE"

.field public static final CATEGORY_UNIT_TEST:Ljava/lang/String; = "android.intent.category.UNIT_TEST"

.field public static final CATEGORY_VOICE:Ljava/lang/String; = "android.intent.category.VOICE"

.field public static final CATEGORY_VR_HOME:Ljava/lang/String; = "android.intent.category.VR_HOME"

.field private static final COPY_MODE_ALL:I = 0x0

.field private static final COPY_MODE_FILTER:I = 0x1

.field private static final COPY_MODE_HISTORY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_ALARM_COUNT:Ljava/lang/String; = "android.intent.extra.ALARM_COUNT"

.field public static final EXTRA_ALLOW_MULTIPLE:Ljava/lang/String; = "android.intent.extra.ALLOW_MULTIPLE"

.field public static final EXTRA_ALLOW_REPLACE:Ljava/lang/String; = "android.intent.extra.ALLOW_REPLACE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ALTERNATE_INTENTS:Ljava/lang/String; = "android.intent.extra.ALTERNATE_INTENTS"

.field public static final EXTRA_ASSIST_CONTEXT:Ljava/lang/String; = "android.intent.extra.ASSIST_CONTEXT"

.field public static final EXTRA_ASSIST_INPUT_DEVICE_ID:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

.field public static final EXTRA_ASSIST_INPUT_HINT_KEYBOARD:Ljava/lang/String; = "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

.field public static final EXTRA_ASSIST_PACKAGE:Ljava/lang/String; = "android.intent.extra.ASSIST_PACKAGE"

.field public static final EXTRA_ASSIST_UID:Ljava/lang/String; = "android.intent.extra.ASSIST_UID"

.field public static final EXTRA_AUTO_LAUNCH_SINGLE_CHOICE:Ljava/lang/String; = "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

.field public static final EXTRA_BCC:Ljava/lang/String; = "android.intent.extra.BCC"

.field public static final EXTRA_BUG_REPORT:Ljava/lang/String; = "android.intent.extra.BUG_REPORT"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "android.intent.extra.CALLING_PACKAGE"

.field public static final EXTRA_CC:Ljava/lang/String; = "android.intent.extra.CC"

.field public static final EXTRA_CDMA_DEFAULT_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaDefaultRoamingIndicator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CDMA_ROAMING_INDICATOR:Ljava/lang/String; = "cdmaRoamingIndicator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.changed_component_name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_CHANGED_COMPONENT_NAME_LIST:Ljava/lang/String; = "android.intent.extra.changed_component_name_list"

.field public static final EXTRA_CHANGED_PACKAGE_LIST:Ljava/lang/String; = "android.intent.extra.changed_package_list"

.field public static final EXTRA_CHANGED_UID_LIST:Ljava/lang/String; = "android.intent.extra.changed_uid_list"

.field public static final EXTRA_CHOOSER_REFINEMENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

.field public static final EXTRA_CHOOSER_TARGETS:Ljava/lang/String; = "android.intent.extra.CHOOSER_TARGETS"

.field public static final EXTRA_CHOSEN_COMPONENT:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT"

.field public static final EXTRA_CHOSEN_COMPONENT_INTENT_SENDER:Ljava/lang/String; = "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

.field public static final EXTRA_CLIENT_INTENT:Ljava/lang/String; = "android.intent.extra.client_intent"

.field public static final EXTRA_CLIENT_LABEL:Ljava/lang/String; = "android.intent.extra.client_label"

.field public static final EXTRA_COMPONENT_NAME:Ljava/lang/String; = "android.intent.extra.COMPONENT_NAME"

.field public static final EXTRA_CONTENT_ANNOTATIONS:Ljava/lang/String; = "android.intent.extra.CONTENT_ANNOTATIONS"

.field public static final EXTRA_CSS_INDICATOR:Ljava/lang/String; = "cssIndicator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "data-operator-alpha-long"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "data-operator-alpha-short"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_OPERATOR_NUMERIC:Ljava/lang/String; = "data-operator-numeric"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_RADIO_TECH:Ljava/lang/String; = "dataRadioTechnology"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_REG_STATE:Ljava/lang/String; = "dataRegState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DATA_REMOVED:Ljava/lang/String; = "android.intent.extra.DATA_REMOVED"

.field public static final EXTRA_DATA_ROAMING_TYPE:Ljava/lang/String; = "dataRoamingType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_DOCK_STATE:Ljava/lang/String; = "android.intent.extra.DOCK_STATE"

.field public static final EXTRA_DOCK_STATE_CAR:I = 0x2

.field public static final EXTRA_DOCK_STATE_DESK:I = 0x1

.field public static final EXTRA_DOCK_STATE_HE_DESK:I = 0x4

.field public static final EXTRA_DOCK_STATE_LE_DESK:I = 0x3

.field public static final EXTRA_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final EXTRA_DONT_KILL_APP:Ljava/lang/String; = "android.intent.extra.DONT_KILL_APP"

.field public static final EXTRA_EMAIL:Ljava/lang/String; = "android.intent.extra.EMAIL"

.field public static final EXTRA_EMERGENCY_ONLY:Ljava/lang/String; = "emergencyOnly"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_EPHEMERAL_FAILURE:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_FAILURE"

.field public static final EXTRA_EPHEMERAL_HOSTNAME:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_HOSTNAME"

.field public static final EXTRA_EPHEMERAL_SUCCESS:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_SUCCESS"

.field public static final EXTRA_EPHEMERAL_TOKEN:Ljava/lang/String; = "android.intent.extra.EPHEMERAL_TOKEN"

.field public static final EXTRA_EXCLUDE_COMPONENTS:Ljava/lang/String; = "android.intent.extra.EXCLUDE_COMPONENTS"

.field public static final EXTRA_FORCE_FACTORY_RESET:Ljava/lang/String; = "android.intent.extra.FORCE_FACTORY_RESET"

.field public static final EXTRA_FORCE_MASTER_CLEAR:Ljava/lang/String; = "android.intent.extra.FORCE_MASTER_CLEAR"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_FROM_STORAGE:Ljava/lang/String; = "android.intent.extra.FROM_STORAGE"

.field public static final EXTRA_HTML_TEXT:Ljava/lang/String; = "android.intent.extra.HTML_TEXT"

.field public static final EXTRA_INDEX:Ljava/lang/String; = "android.intent.extra.INDEX"

.field public static final EXTRA_INITIAL_INTENTS:Ljava/lang/String; = "android.intent.extra.INITIAL_INTENTS"

.field public static final EXTRA_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.INSTALLER_PACKAGE_NAME"

.field public static final EXTRA_INSTALL_RESULT:Ljava/lang/String; = "android.intent.extra.INSTALL_RESULT"

.field public static final EXTRA_INTENT:Ljava/lang/String; = "android.intent.extra.INTENT"

.field public static final EXTRA_IS_DATA_ROAMING_FROM_REGISTRATION:Ljava/lang/String; = "isDataRoamingFromRegistration"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_IS_USING_CARRIER_AGGREGATION:Ljava/lang/String; = "isUsingCarrierAggregation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_KEY_CONFIRM:Ljava/lang/String; = "android.intent.extra.KEY_CONFIRM"

.field public static final EXTRA_KEY_EVENT:Ljava/lang/String; = "android.intent.extra.KEY_EVENT"

.field public static final EXTRA_LOCAL_ONLY:Ljava/lang/String; = "android.intent.extra.LOCAL_ONLY"

.field public static final EXTRA_LTE_EARFCN_RSRP_BOOST:Ljava/lang/String; = "LteEarfcnRsrpBoost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_MANUAL:Ljava/lang/String; = "manual"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_MEDIA_RESOURCE_TYPE:Ljava/lang/String; = "android.intent.extra.MEDIA_RESOURCE_TYPE"

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_AUDIO_CODEC:I = 0x1

.field public static final EXTRA_MEDIA_RESOURCE_TYPE_VIDEO_CODEC:I = 0x0

.field public static final EXTRA_MIME_TYPES:Ljava/lang/String; = "android.intent.extra.MIME_TYPES"

.field public static final EXTRA_NETWORK_ID:Ljava/lang/String; = "networkId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NOT_UNKNOWN_SOURCE:Ljava/lang/String; = "android.intent.extra.NOT_UNKNOWN_SOURCE"

.field public static final EXTRA_OPERATOR_ALPHA_LONG:Ljava/lang/String; = "operator-alpha-long"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_OPERATOR_ALPHA_SHORT:Ljava/lang/String; = "operator-alpha-short"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_OPERATOR_NUMERIC:Ljava/lang/String; = "operator-numeric"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_ORIGINATING_UID:Ljava/lang/String; = "android.intent.extra.ORIGINATING_UID"

.field public static final EXTRA_ORIGINATING_URI:Ljava/lang/String; = "android.intent.extra.ORIGINATING_URI"

.field public static final EXTRA_PACKAGES:Ljava/lang/String; = "android.intent.extra.PACKAGES"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.intent.extra.PERMISSION_NAME"

.field public static final EXTRA_PHONE_NUMBER:Ljava/lang/String; = "android.intent.extra.PHONE_NUMBER"

.field public static final EXTRA_PROCESS_TEXT:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT"

.field public static final EXTRA_PROCESS_TEXT_READONLY:Ljava/lang/String; = "android.intent.extra.PROCESS_TEXT_READONLY"

.field public static final EXTRA_QUICK_VIEW_ADVANCED:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_ADVANCED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_QUICK_VIEW_FEATURES:Ljava/lang/String; = "android.intent.extra.QUICK_VIEW_FEATURES"

.field public static final EXTRA_QUIET_MODE:Ljava/lang/String; = "android.intent.extra.QUIET_MODE"

.field public static final EXTRA_REASON:Ljava/lang/String; = "android.intent.extra.REASON"

.field public static final EXTRA_REFERRER:Ljava/lang/String; = "android.intent.extra.REFERRER"

.field public static final EXTRA_REFERRER_NAME:Ljava/lang/String; = "android.intent.extra.REFERRER_NAME"

.field public static final EXTRA_REMOTE_CALLBACK:Ljava/lang/String; = "android.intent.extra.REMOTE_CALLBACK"

.field public static final EXTRA_REMOTE_INTENT_TOKEN:Ljava/lang/String; = "android.intent.extra.remote_intent_token"

.field public static final EXTRA_REMOVED_FOR_ALL_USERS:Ljava/lang/String; = "android.intent.extra.REMOVED_FOR_ALL_USERS"

.field public static final EXTRA_REPLACEMENT_EXTRAS:Ljava/lang/String; = "android.intent.extra.REPLACEMENT_EXTRAS"

.field public static final EXTRA_REPLACING:Ljava/lang/String; = "android.intent.extra.REPLACING"

.field public static final EXTRA_RESTRICTIONS_BUNDLE:Ljava/lang/String; = "android.intent.extra.restrictions_bundle"

.field public static final EXTRA_RESTRICTIONS_INTENT:Ljava/lang/String; = "android.intent.extra.restrictions_intent"

.field public static final EXTRA_RESTRICTIONS_LIST:Ljava/lang/String; = "android.intent.extra.restrictions_list"

.field public static final EXTRA_RESULT_NEEDED:Ljava/lang/String; = "android.intent.extra.RESULT_NEEDED"

.field public static final EXTRA_RESULT_RECEIVER:Ljava/lang/String; = "android.intent.extra.RESULT_RECEIVER"

.field public static final EXTRA_RETURN_RESULT:Ljava/lang/String; = "android.intent.extra.RETURN_RESULT"

.field public static final EXTRA_SETTING_NAME:Ljava/lang/String; = "setting_name"

.field public static final EXTRA_SETTING_NEW_VALUE:Ljava/lang/String; = "new_value"

.field public static final EXTRA_SETTING_PREVIOUS_VALUE:Ljava/lang/String; = "previous_value"

.field public static final EXTRA_SETTING_RESTORED_FROM_SDK_INT:Ljava/lang/String; = "restored_from_sdk_int"

.field public static final EXTRA_SHORTCUT_ICON:Ljava/lang/String; = "android.intent.extra.shortcut.ICON"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_ICON_RESOURCE:Ljava/lang/String; = "android.intent.extra.shortcut.ICON_RESOURCE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_INTENT:Ljava/lang/String; = "android.intent.extra.shortcut.INTENT"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHORTCUT_NAME:Ljava/lang/String; = "android.intent.extra.shortcut.NAME"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_SHUTDOWN_USERSPACE_ONLY:Ljava/lang/String; = "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

.field public static final EXTRA_SIM_ACTIVATION_RESPONSE:Ljava/lang/String; = "android.intent.extra.SIM_ACTIVATION_RESPONSE"

.field public static final EXTRA_SPLIT_NAME:Ljava/lang/String; = "android.intent.extra.SPLIT_NAME"

.field public static final EXTRA_STREAM:Ljava/lang/String; = "android.intent.extra.STREAM"

.field public static final EXTRA_SUBJECT:Ljava/lang/String; = "android.intent.extra.SUBJECT"

.field public static final EXTRA_SYSTEM_ID:Ljava/lang/String; = "systemId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_TASK_ID:Ljava/lang/String; = "android.intent.extra.TASK_ID"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.intent.extra.TEMPLATE"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.intent.extra.TEXT"

.field public static final EXTRA_THERMAL_STATE:Ljava/lang/String; = "android.intent.extra.THERMAL_STATE"

.field public static final EXTRA_THERMAL_STATE_EXCEEDED:I = 0x2

.field public static final EXTRA_THERMAL_STATE_NORMAL:I = 0x0

.field public static final EXTRA_THERMAL_STATE_WARNING:I = 0x1

.field public static final EXTRA_TIME_PREF_24_HOUR_FORMAT:Ljava/lang/String; = "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

.field public static final EXTRA_TIME_PREF_VALUE_USE_12_HOUR:I = 0x0

.field public static final EXTRA_TIME_PREF_VALUE_USE_24_HOUR:I = 0x1

.field public static final EXTRA_TIME_PREF_VALUE_USE_LOCALE_DEFAULT:I = 0x2

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.intent.extra.TITLE"

.field public static final EXTRA_UID:Ljava/lang/String; = "android.intent.extra.UID"

.field public static final EXTRA_UNINSTALL_ALL_USERS:Ljava/lang/String; = "android.intent.extra.UNINSTALL_ALL_USERS"

.field public static final EXTRA_USER:Ljava/lang/String; = "android.intent.extra.USER"

.field public static final EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "android.intent.extra.USER_ID"

.field public static final EXTRA_USER_REQUESTED_SHUTDOWN:Ljava/lang/String; = "android.intent.extra.USER_REQUESTED_SHUTDOWN"

.field public static final EXTRA_VERIFICATION_BUNDLE:Ljava/lang/String; = "android.intent.extra.VERIFICATION_BUNDLE"

.field public static final EXTRA_VERSION_CODE:Ljava/lang/String; = "android.intent.extra.VERSION_CODE"

.field public static final EXTRA_VOICE_RADIO_TECH:Ljava/lang/String; = "radioTechnology"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_REG_STATE:Ljava/lang/String; = "voiceRegState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_VOICE_ROAMING_TYPE:Ljava/lang/String; = "voiceRoamingType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_WIPE_ESIMS:Ljava/lang/String; = "com.android.internal.intent.extra.WIPE_ESIMS"

.field public static final EXTRA_WIPE_EXTERNAL_STORAGE:Ljava/lang/String; = "android.intent.extra.WIPE_EXTERNAL_STORAGE"

.field public static final FILL_IN_ACTION:I = 0x1

.field public static final FILL_IN_CATEGORIES:I = 0x4

.field public static final FILL_IN_CLIP_DATA:I = 0x80

.field public static final FILL_IN_COMPONENT:I = 0x8

.field public static final FILL_IN_DATA:I = 0x2

.field public static final FILL_IN_PACKAGE:I = 0x10

.field public static final FILL_IN_SELECTOR:I = 0x40

.field public static final FILL_IN_SOURCE_BOUNDS:I = 0x20

.field public static final FLAG_ACTIVITY_BROUGHT_TO_FRONT:I = 0x400000

.field public static final FLAG_ACTIVITY_CLEAR_TASK:I = 0x8000

.field public static final FLAG_ACTIVITY_CLEAR_TOP:I = 0x4000000

.field public static final FLAG_ACTIVITY_CLEAR_WHEN_TASK_RESET:I = 0x80000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_ACTIVITY_EXCLUDE_FROM_RECENTS:I = 0x800000

.field public static final FLAG_ACTIVITY_FORWARD_RESULT:I = 0x2000000

.field public static final FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY:I = 0x100000

.field public static final FLAG_ACTIVITY_LAUNCH_ADJACENT:I = 0x1000

.field public static final FLAG_ACTIVITY_MULTIPLE_TASK:I = 0x8000000

.field public static final FLAG_ACTIVITY_NEW_DOCUMENT:I = 0x80000

.field public static final FLAG_ACTIVITY_NEW_TASK:I = 0x10000000

.field public static final FLAG_ACTIVITY_NO_ANIMATION:I = 0x10000

.field public static final FLAG_ACTIVITY_NO_HISTORY:I = 0x40000000

.field public static final FLAG_ACTIVITY_NO_USER_ACTION:I = 0x40000

.field public static final FLAG_ACTIVITY_PREVIOUS_IS_TOP:I = 0x1000000

.field public static final FLAG_ACTIVITY_REORDER_TO_FRONT:I = 0x20000

.field public static final FLAG_ACTIVITY_RESET_TASK_IF_NEEDED:I = 0x200000

.field public static final FLAG_ACTIVITY_RETAIN_IN_RECENTS:I = 0x2000

.field public static final FLAG_ACTIVITY_SINGLE_TOP:I = 0x20000000

.field public static final FLAG_ACTIVITY_TASK_ON_HOME:I = 0x4000

.field public static final FLAG_DEBUG_LOG_RESOLUTION:I = 0x8

.field public static final FLAG_DEBUG_TRIAGED_MISSING:I = 0x100

.field public static final FLAG_EXCLUDE_STOPPED_PACKAGES:I = 0x10

.field public static final FLAG_FROM_BACKGROUND:I = 0x4

.field public static final FLAG_GRANT_PERSISTABLE_URI_PERMISSION:I = 0x40

.field public static final FLAG_GRANT_PREFIX_URI_PERMISSION:I = 0x80

.field public static final FLAG_GRANT_READ_URI_PERMISSION:I = 0x1

.field public static final FLAG_GRANT_WRITE_URI_PERMISSION:I = 0x2

.field public static final FLAG_IGNORE_EPHEMERAL:I = 0x200

.field public static final FLAG_INCLUDE_STOPPED_PACKAGES:I = 0x20

.field public static final FLAG_RECEIVER_BOOT_UPGRADE:I = 0x2000000

.field public static final FLAG_RECEIVER_EXCLUDE_BACKGROUND:I = 0x800000

.field public static final FLAG_RECEIVER_FOREGROUND:I = 0x10000000

.field public static final FLAG_RECEIVER_FROM_SHELL:I = 0x400000

.field public static final FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x1000000

.field public static final FLAG_RECEIVER_NO_ABORT:I = 0x8000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY:I = 0x40000000

.field public static final FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I = 0x4000000

.field public static final FLAG_RECEIVER_REPLACE_PENDING:I = 0x20000000

.field public static final FLAG_RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x200000

.field public static final IMMUTABLE_FLAGS:I = 0xc3

.field public static final METADATA_DOCK_HOME:Ljava/lang/String; = "android.dock_home"

.field public static final METADATA_SETUP_VERSION:Ljava/lang/String; = "android.SETUP_VERSION"

.field private static final TAG_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final TAG_EXTRA:Ljava/lang/String; = "extra"

.field public static final URI_ALLOW_UNSAFE:I = 0x4

.field public static final URI_ANDROID_APP_SCHEME:I = 0x2

.field public static final URI_INTENT_SCHEME:I = 0x1


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCategories:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mComponent:Landroid/content/ComponentName;

.field private mContentUserHint:I

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mLaunchStartTime:J

.field private mLaunchToken:Ljava/lang/String;

.field private mMiuiFlags:I

.field private mPackage:Ljava/lang/String;

.field private mSelector:Landroid/content/Intent;

.field private mSenderPackageName:Ljava/lang/String;

.field private mSourceBounds:Landroid/graphics/Rect;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/content/Intent$1;

    invoke-direct {v0}, Landroid/content/Intent$1;-><init>()V

    sput-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Intent;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    iget-object v0, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v0, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v0, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_2b

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_2b
    const/4 v0, 0x1

    if-eq p2, v0, :cond_71

    iget v0, p1, Landroid/content/Intent;->mFlags:I

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    iget v0, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    iget-object v0, p1, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_47

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :cond_47
    iget-object v0, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_54

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    :cond_54
    const/4 v0, 0x2

    if-eq p2, v0, :cond_7e

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_64

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_64
    iget-object v0, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_71

    new-instance v0, Landroid/content/ClipData;

    iget-object v1, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-direct {v0, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipData;)V

    iput-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    :cond_71
    :goto_71
    iget-object v0, p1, Landroid/content/Intent;->mSenderPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/Intent;->mSenderPackageName:Ljava/lang/String;

    iget v0, p1, Landroid/content/Intent;->mMiuiFlags:I

    iput v0, p0, Landroid/content/Intent;->mMiuiFlags:I

    iget-wide v0, p1, Landroid/content/Intent;->mLaunchStartTime:J

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    return-void

    :cond_7e
    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_71

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->maybeIsEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_71

    sget-object v0, Landroid/os/Bundle;->STRIPPED:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    goto :goto_71
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    invoke-virtual {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p3, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;
    .registers 11

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.CHOOSER"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {v0, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_18

    const-string/jumbo v5, "android.intent.extra.TITLE"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    :cond_18
    if-eqz p2, :cond_20

    const-string/jumbo v5, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v0, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_20
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit16 v3, v5, 0xc3

    if-eqz v3, :cond_59

    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-nez v4, :cond_51

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_51

    new-instance v1, Landroid/content/ClipData$Item;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5a

    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    :goto_4c
    new-instance v4, Landroid/content/ClipData;

    invoke-direct {v4, v6, v2, v1}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    :cond_51
    if-eqz v4, :cond_59

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_59
    return-object v0

    :cond_5a
    new-array v2, v7, [Ljava/lang/String;

    goto :goto_4c
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getIntentOld(Ljava/lang/String;)Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/16 v19, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    if-ltz v9, :cond_301

    const/4 v4, 0x0

    move v11, v9

    const/4 v12, 0x0

    add-int/lit8 v9, v9, 0x1

    const-string/jumbo v19, "action("

    const/16 v20, 0x0

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_3b

    const/4 v12, 0x1

    add-int/lit8 v9, v9, 0x7

    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v13, 0x1

    :cond_3b
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "categories("

    const/16 v20, 0x0

    const/16 v21, 0xb

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_8c

    const/4 v12, 0x1

    add-int/lit8 v9, v9, 0xb

    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    :goto_62
    if-ge v9, v13, :cond_8a

    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    if-ltz v16, :cond_74

    move/from16 v0, v16

    if-le v0, v13, :cond_76

    :cond_74
    move/from16 v16, v13

    :cond_76
    move/from16 v0, v16

    if-ge v9, v0, :cond_87

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_87
    add-int/lit8 v9, v16, 0x1

    goto :goto_62

    :cond_8a
    add-int/lit8 v9, v13, 0x1

    :cond_8c
    const-string/jumbo v19, "type("

    const/16 v20, 0x0

    const/16 v21, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_ba

    const/4 v12, 0x1

    add-int/lit8 v9, v9, 0x5

    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mType:Ljava/lang/String;

    add-int/lit8 v9, v13, 0x1

    :cond_ba
    const-string/jumbo v19, "launchFlags("

    const/16 v20, 0x0

    const/16 v21, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_102

    const/4 v12, 0x1

    add-int/lit8 v9, v9, 0xc

    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v10, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v19, p1, 0x4

    if-nez v19, :cond_100

    iget v0, v10, Landroid/content/Intent;->mFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, -0xc4

    move/from16 v19, v0

    move/from16 v0, v19

    iput v0, v10, Landroid/content/Intent;->mFlags:I

    :cond_100
    add-int/lit8 v9, v13, 0x1

    :cond_102
    const-string/jumbo v19, "component("

    const/16 v20, 0x0

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_153

    const/4 v12, 0x1

    add-int/lit8 v9, v9, 0xa

    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    if-ltz v16, :cond_151

    move/from16 v0, v16

    if-ge v0, v13, :cond_151

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v19, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    new-instance v19, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    :cond_151
    add-int/lit8 v9, v13, 0x1

    :cond_153
    const-string/jumbo v19, "extras("

    const/16 v20, 0x0

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v9, v1, v2, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v19

    if-eqz v19, :cond_236

    const/4 v12, 0x1

    add-int/lit8 v9, v9, 0x7

    const/16 v19, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_18c

    new-instance v19, Ljava/net/URISyntaxException;

    const-string/jumbo v20, "EXTRA missing trailing \')\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    :cond_18a
    add-int/lit8 v9, v9, 0x1

    :cond_18c
    if-ge v9, v6, :cond_236

    const/16 v19, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    add-int/lit8 v19, v9, 0x1

    move/from16 v0, v19

    if-le v13, v0, :cond_1a0

    if-lt v9, v6, :cond_1af

    :cond_1a0
    new-instance v19, Ljava/net/URISyntaxException;

    const-string/jumbo v20, "EXTRA missing \'=\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    :cond_1af
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v17

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v9, v13, 0x1

    const/16 v19, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v13, v0, :cond_1d1

    if-lt v13, v6, :cond_1d2

    :cond_1d1
    move v13, v6

    :cond_1d2
    if-lt v9, v13, :cond_1e3

    new-instance v19, Ljava/net/URISyntaxException;

    const-string/jumbo v20, "EXTRA missing \'!\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    :cond_1e3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move v9, v13

    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    if-nez v19, :cond_1f9

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_1f9
    sparse-switch v17, :sswitch_data_314

    :try_start_1fc
    new-instance v19, Ljava/net/URISyntaxException;

    const-string/jumbo v20, "EXTRA has unknown type"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19
    :try_end_20b
    .catch Ljava/lang/NumberFormatException; {:try_start_1fc .. :try_end_20b} :catch_20b

    :catch_20b
    move-exception v8

    new-instance v19, Ljava/net/URISyntaxException;

    const-string/jumbo v20, "EXTRA value can\'t be parsed"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    :sswitch_21b
    :try_start_21b
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22a
    .catch Ljava/lang/NumberFormatException; {:try_start_21b .. :try_end_22a} :catch_20b

    :goto_22a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v19, 0x29

    move/from16 v0, v19

    if-ne v5, v0, :cond_2e2

    :cond_236
    if-eqz v12, :cond_2f7

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    :goto_24a
    iget-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_257

    const-string/jumbo v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mAction:Ljava/lang/String;

    :cond_257
    :goto_257
    return-object v10

    :sswitch_258
    :try_start_258
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_22a

    :sswitch_268
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_22a

    :sswitch_278
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_22a

    :sswitch_28e
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_22a

    :sswitch_29e
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_22a

    :sswitch_2af
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_22a

    :sswitch_2c0
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_22a

    :sswitch_2d1
    iget-object v0, v10, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V
    :try_end_2e0
    .catch Ljava/lang/NumberFormatException; {:try_start_258 .. :try_end_2e0} :catch_20b

    goto/16 :goto_22a

    :cond_2e2
    const/16 v19, 0x21

    move/from16 v0, v19

    if-eq v5, v0, :cond_18a

    new-instance v19, Ljava/net/URISyntaxException;

    const-string/jumbo v20, "EXTRA missing \'!\'"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v9}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v19

    :cond_2f7
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v10, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_24a

    :cond_301
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.action.VIEW"

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_257

    nop

    :sswitch_data_314
    .sparse-switch
        0x42 -> :sswitch_258
        0x53 -> :sswitch_21b
        0x62 -> :sswitch_268
        0x63 -> :sswitch_278
        0x64 -> :sswitch_28e
        0x66 -> :sswitch_29e
        0x69 -> :sswitch_2af
        0x6c -> :sswitch_2c0
        0x73 -> :sswitch_2d1
    .end sparse-switch
.end method

.method public static isAccessUriMode(I)Z
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x3

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private static makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ClipData$Item;"
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p0, :cond_1f

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    :goto_9
    if-eqz p1, :cond_21

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :goto_11
    if-eqz p2, :cond_23

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_19
    new-instance v3, Landroid/content/ClipData$Item;

    invoke-direct {v3, v1, v0, v4, v2}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-object v3

    :cond_1f
    const/4 v2, 0x0

    goto :goto_9

    :cond_21
    const/4 v1, 0x0

    goto :goto_11

    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    return-object v0
.end method

.method public static makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 3

    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1c
    return-object p0
.end method

.method public static parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    move-object/from16 v6, v17

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/16 v30, 0x0

    move-object/from16 v18, v17

    :cond_d
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_7dd

    const-string/jumbo v33, "-a"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    goto :goto_d

    :cond_33
    const-string/jumbo v33, "-d"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_50

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    goto :goto_d

    :cond_50
    const-string/jumbo v33, "-t"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_69

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    goto :goto_d

    :cond_69
    const-string/jumbo v33, "-c"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_89

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    goto :goto_d

    :cond_89
    const-string/jumbo v33, "-e"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a9

    :cond_96
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_a9
    const-string/jumbo v33, "--es"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_96

    const-string/jumbo v33, "--esn"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d6

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    const/16 v33, 0x0

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_d6
    const-string/jumbo v33, "--ei"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_fa

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_fa
    const-string/jumbo v33, "--eu"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11e

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_11e
    const-string/jumbo v33, "--ecn"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_157

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_702

    new-instance v33, Ljava/lang/IllegalArgumentException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Bad component name: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_157
    const-string/jumbo v33, "--eia"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_19a

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const/16 v16, 0x0

    :goto_180
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_70b

    aget-object v33, v29, v16

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    aput v33, v25, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_180

    :cond_19a
    const-string/jumbo v33, "--eial"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1e1

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    :goto_1c6
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_716

    aget-object v33, v29, v16

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_1c6

    :cond_1e1
    const-string/jumbo v33, "--el"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_205

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_205
    const-string/jumbo v33, "--ela"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_248

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [J

    move-object/from16 v26, v0

    const/16 v16, 0x0

    :goto_22e
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_721

    aget-object v33, v29, v16

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    aput-wide v34, v26, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_22e

    :cond_248
    const-string/jumbo v33, "--elal"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_28f

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    :goto_274
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_72d

    aget-object v33, v29, v16

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v33

    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_274

    :cond_28f
    const-string/jumbo v33, "--ef"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2b4

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_2b4
    const-string/jumbo v33, "--efa"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2f7

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v24, v0

    const/16 v16, 0x0

    :goto_2dd
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_739

    aget-object v33, v29, v16

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Float;->floatValue()F

    move-result v33

    aput v33, v24, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_2dd

    :cond_2f7
    const-string/jumbo v33, "--efal"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_33e

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, ","

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v20

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    :goto_323
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_745

    aget-object v33, v29, v16

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_323

    :cond_33e
    const-string/jumbo v33, "--esa"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_366

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "(?<!\\\\),"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_366
    const-string/jumbo v33, "--esal"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3a9

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "(?<!\\\\),"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v29

    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v16, 0x0

    :goto_392
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_74b

    aget-object v33, v29, v16

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_392

    :cond_3a9
    const-string/jumbo v33, "--ez"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3e6

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v33, "true"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_3dc

    const-string/jumbo v33, "t"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_757

    :cond_3dc
    const/4 v5, 0x1

    :goto_3dd
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_3e6
    const-string/jumbo v33, "-n"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_41b

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_7a3

    new-instance v33, Ljava/lang/IllegalArgumentException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Bad component name: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_41b
    const-string/jumbo v33, "-p"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_43c

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_43c
    const-string/jumbo v33, "-f"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_45e

    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_45e
    const-string/jumbo v33, "--grant-read-uri-permission"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_476

    const/16 v33, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_476
    const-string/jumbo v33, "--grant-write-uri-permission"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_48e

    const/16 v33, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_48e
    const-string/jumbo v33, "--grant-persistable-uri-permission"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4a6

    const/16 v33, 0x40

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_4a6
    const-string/jumbo v33, "--grant-prefix-uri-permission"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4be

    const/16 v33, 0x80

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_4be
    const-string/jumbo v33, "--exclude-stopped-packages"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4d6

    const/16 v33, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_4d6
    const-string/jumbo v33, "--include-stopped-packages"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_4ee

    const/16 v33, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_4ee
    const-string/jumbo v33, "--debug-log-resolution"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_506

    const/16 v33, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_506
    const-string/jumbo v33, "--activity-brought-to-front"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_51e

    const/high16 v33, 0x400000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_51e
    const-string/jumbo v33, "--activity-clear-top"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_536

    const/high16 v33, 0x4000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_536
    const-string/jumbo v33, "--activity-clear-when-task-reset"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_54e

    const/high16 v33, 0x80000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_54e
    const-string/jumbo v33, "--activity-exclude-from-recents"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_566

    const/high16 v33, 0x800000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_566
    const-string/jumbo v33, "--activity-launched-from-history"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_57e

    const/high16 v33, 0x100000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_57e
    const-string/jumbo v33, "--activity-multiple-task"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_596

    const/high16 v33, 0x8000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_596
    const-string/jumbo v33, "--activity-no-animation"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5ae

    const/high16 v33, 0x10000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_5ae
    const-string/jumbo v33, "--activity-no-history"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5c6

    const/high16 v33, 0x40000000    # 2.0f

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_5c6
    const-string/jumbo v33, "--activity-no-user-action"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5de

    const/high16 v33, 0x40000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_5de
    const-string/jumbo v33, "--activity-previous-is-top"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_5f6

    const/high16 v33, 0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_5f6
    const-string/jumbo v33, "--activity-reorder-to-front"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_60e

    const/high16 v33, 0x20000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_60e
    const-string/jumbo v33, "--activity-reset-task-if-needed"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_626

    const/high16 v33, 0x200000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_626
    const-string/jumbo v33, "--activity-single-top"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_63e

    const/high16 v33, 0x20000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_63e
    const-string/jumbo v33, "--activity-clear-task"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_657

    const v33, 0x8000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_657
    const-string/jumbo v33, "--activity-task-on-home"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_66f

    const/16 v33, 0x4000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_66f
    const-string/jumbo v33, "--receiver-registered-only"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_687

    const/high16 v33, 0x40000000    # 2.0f

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_687
    const-string/jumbo v33, "--receiver-replace-pending"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_69f

    const/high16 v33, 0x20000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_69f
    const-string/jumbo v33, "--receiver-foreground"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6b7

    const/high16 v33, 0x10000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_6b7
    const-string/jumbo v33, "--receiver-no-abort"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6cf

    const/high16 v33, 0x8000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_6cf
    const-string/jumbo v33, "--receiver-include-background"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6e7

    const/high16 v33, 0x1000000

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_6e7
    const-string/jumbo v33, "--selector"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_7b1

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_d

    :cond_702
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_70b
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_716
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_d

    :cond_721
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_72d
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_739
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_745
    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_74b
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_757
    const-string/jumbo v33, "false"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_771

    const-string/jumbo v33, "f"

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_774

    :cond_771
    const/4 v5, 0x0

    goto/16 :goto_3dd

    :cond_774
    :try_start_774
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I
    :try_end_77b
    .catch Ljava/lang/NumberFormatException; {:try_start_774 .. :try_end_77b} :catch_784

    move-result v33

    if-eqz v33, :cond_781

    const/4 v5, 0x1

    goto/16 :goto_3dd

    :cond_781
    const/4 v5, 0x0

    goto/16 :goto_3dd

    :catch_784
    move-exception v12

    new-instance v33, Ljava/lang/IllegalArgumentException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Invalid boolean value: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_7a3
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_d

    const/4 v14, 0x1

    goto/16 :goto_d

    :cond_7b1
    if-eqz p1, :cond_7bf

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/content/Intent$CommandOptionHandler;->handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z

    move-result v33

    if-nez v33, :cond_d

    :cond_7bf
    new-instance v33, Ljava/lang/IllegalArgumentException;

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "Unknown option: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_7dd
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v11, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_854

    const/4 v15, 0x1

    :goto_7eb
    if-eqz v15, :cond_8d0

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    :goto_7f0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v4, :cond_856

    if-eqz v15, :cond_80b

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v33, "android.intent.action.MAIN"

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v33, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_80b
    :goto_80b
    if-eqz v6, :cond_8ba

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const/16 v33, 0x0

    check-cast v33, Landroid/os/Bundle;

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v31

    const/16 v33, 0x0

    check-cast v33, Landroid/os/Bundle;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_8a7

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v33

    if-eqz v33, :cond_8a7

    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_844
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_8a7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    goto :goto_844

    :cond_854
    const/4 v15, 0x0

    goto :goto_7eb

    :cond_856
    const/16 v33, 0x3a

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    if-ltz v33, :cond_869

    const/16 v33, 0x7

    move/from16 v0, v33

    invoke-static {v4, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    goto :goto_80b

    :cond_869
    const/16 v33, 0x2f

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v33

    if-ltz v33, :cond_890

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v33, "android.intent.action.MAIN"

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v33, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_80b

    :cond_890
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v33, "android.intent.action.MAIN"

    move-object/from16 v0, v33

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v33, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_80b

    :cond_8a7
    const/16 v33, 0x48

    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    if-nez v13, :cond_8c5

    move-object/from16 v13, v31

    :cond_8b4
    :goto_8b4
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v14, 0x1

    :cond_8ba
    if-nez v14, :cond_8cf

    new-instance v33, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v34, "No intent supplied"

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    :cond_8c5
    if-eqz v31, :cond_8b4

    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    move-object/from16 v13, v31

    goto :goto_8b4

    :cond_8cf
    return-object v17

    :cond_8d0
    move-object/from16 v17, v18

    goto/16 :goto_7f0
.end method

.method public static parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v10, Lcom/android/internal/R$styleable;->Intent:[I

    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x3

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_7d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_23
    invoke-virtual {v3, v10, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_3c

    if-eqz v1, :cond_3c

    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_43
    :goto_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_a3

    const/4 v10, 0x3

    if-ne v9, v10, :cond_53

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_a3

    :cond_53
    const/4 v10, 0x3

    if-eq v9, v10, :cond_43

    const/4 v10, 0x4

    if-eq v9, v10, :cond_43

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v10, "categories"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    sget-object v10, Lcom/android/internal/R$styleable;->IntentCategory:[I

    invoke-virtual {p0, p2, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_79

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_79
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_43

    :cond_7d
    const/4 v10, 0x0

    goto :goto_23

    :cond_7f
    const-string/jumbo v10, "extra"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9f

    iget-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v10, :cond_93

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_93
    const-string/jumbo v10, "extra"

    iget-object v11, v3, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v10, p2, v11}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_43

    :cond_9f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_43

    :cond_a3
    return-object v3
.end method

.method public static parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    const/4 v14, 0x0

    :try_start_1
    const-string/jumbo v24, "android-app:"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    and-int/lit8 v24, p1, 0x3

    if-eqz v24, :cond_5a

    const-string/jumbo v24, "intent:"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5a

    xor-int/lit8 v24, v4, 0x1

    if-eqz v24, :cond_5a

    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v24, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_2d} :catch_4a

    :try_start_2d
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_38} :catch_39
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2d .. :try_end_38} :catch_4a

    return-object v16

    :catch_39
    move-exception v9

    :try_start_3a
    new-instance v24, Ljava/net/URISyntaxException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24
    :try_end_4a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3a .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception v10

    new-instance v24, Ljava/net/URISyntaxException;

    const-string/jumbo v25, "illegal Intent URI format"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v14}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v24

    :cond_5a
    :try_start_5a
    const-string/jumbo v24, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_7a

    if-nez v4, :cond_8f

    new-instance v24, Landroid/content/Intent;

    const-string/jumbo v25, "android.intent.action.VIEW"

    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v24

    :cond_7a
    const-string/jumbo v24, "#Intent;"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-nez v24, :cond_8f

    if-nez v4, :cond_8e

    invoke-static/range {p0 .. p1}, Landroid/content/Intent;->getIntentOld(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v24

    return-object v24

    :cond_8e
    const/4 v14, -0x1

    :cond_8f
    new-instance v16, Landroid/content/Intent;

    const-string/jumbo v24, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v7, v16

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    if-ltz v14, :cond_108

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v14, v14, 0x8

    move-object/from16 v17, v16

    :goto_b1
    if-ltz v14, :cond_322

    const-string/jumbo v24, "end"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    xor-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_322

    const/16 v24, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-gez v12, :cond_d0

    add-int/lit8 v12, v14, -0x1

    :cond_d0
    const/16 v24, 0x3b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_10d

    add-int/lit8 v24, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    :goto_ee
    const-string/jumbo v24, "action="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_111

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-nez v15, :cond_105

    const/4 v13, 0x1

    :cond_105
    :goto_105
    add-int/lit8 v14, v22, 0x1

    goto :goto_b1

    :cond_108
    move-object/from16 v8, p0

    move-object/from16 v17, v16

    goto :goto_b1

    :cond_10d
    const-string/jumbo v23, ""

    goto :goto_ee

    :cond_111
    const-string/jumbo v24, "category="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_126

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_105

    :cond_126
    const-string/jumbo v24, "type="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_13a

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/Intent;->mType:Ljava/lang/String;

    goto :goto_105

    :cond_13a
    const-string/jumbo v24, "launchFlags="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_16c

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v24, p1, 0x4

    if-nez v24, :cond_105

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/Intent;->mFlags:I

    move/from16 v24, v0

    move/from16 v0, v24

    and-int/lit16 v0, v0, -0xc4

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v17

    iput v0, v1, Landroid/content/Intent;->mFlags:I

    goto :goto_105

    :cond_16c
    const-string/jumbo v24, "package="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_180

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    goto :goto_105

    :cond_180
    const-string/jumbo v24, "component="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_199

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    goto/16 :goto_105

    :cond_199
    const-string/jumbo v24, "scheme="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1d0

    if-eqz v15, :cond_1cc

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    goto/16 :goto_105

    :cond_1cc
    move-object/from16 v21, v23

    goto/16 :goto_105

    :cond_1d0
    const-string/jumbo v24, "sourceBounds="

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_1e9

    invoke-static/range {v23 .. v23}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto/16 :goto_105

    :cond_1e9
    add-int/lit8 v24, v14, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_206

    const-string/jumbo v24, "SEL"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_206

    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    const/4 v15, 0x1

    goto/16 :goto_105

    :cond_206
    add-int/lit8 v24, v14, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    if-nez v24, :cond_227

    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_227
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v24, "S."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_241

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_105

    :cond_241
    const-string/jumbo v24, "B."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_25b

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_105

    :cond_25b
    const-string/jumbo v24, "b."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_275

    invoke-static/range {v23 .. v23}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_105

    :cond_275
    const-string/jumbo v24, "c."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_291

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto/16 :goto_105

    :cond_291
    const-string/jumbo v24, "d."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2ab

    invoke-static/range {v23 .. v23}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_105

    :cond_2ab
    const-string/jumbo v24, "f."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2c5

    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_105

    :cond_2c5
    const-string/jumbo v24, "i."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2df

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_105

    :cond_2df
    const-string/jumbo v24, "l."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_2f9

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_105

    :cond_2f9
    const-string/jumbo v24, "s."

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v24

    if-eqz v24, :cond_313

    invoke-static/range {v23 .. v23}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto/16 :goto_105

    :cond_313
    new-instance v24, Ljava/net/URISyntaxException;

    const-string/jumbo v25, "unknown EXTRA type"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2, v14}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v24

    :cond_322
    if-eqz v15, :cond_49a

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    move-object/from16 v24, v0

    if-nez v24, :cond_32f

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    :cond_32f
    :goto_32f
    if-eqz v8, :cond_373

    const-string/jumbo v24, "intent:"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_374

    const/16 v24, 0x7

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v21, :cond_363

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x3a

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_363
    :goto_363
    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_366
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5a .. :try_end_366} :catch_4a

    move-result v24

    if-lez v24, :cond_373

    :try_start_369
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/Intent;->mData:Landroid/net/Uri;
    :try_end_373
    .catch Ljava/lang/IllegalArgumentException; {:try_start_369 .. :try_end_373} :catch_489
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_369 .. :try_end_373} :catch_4a

    :cond_373
    return-object v16

    :cond_374
    :try_start_374
    const-string/jumbo v24, "android-app:"

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_363

    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_484

    const/16 v24, 0xd

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x2f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_484

    const/16 v24, 0x2f

    const/16 v25, 0xe

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    if-gez v11, :cond_3cb

    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v13, :cond_3c7

    const-string/jumbo v24, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3c7
    const-string/jumbo v8, ""

    goto :goto_363

    :cond_3cb
    const/4 v5, 0x0

    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    add-int/lit8 v24, v11, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_424

    const/16 v24, 0x2f

    add-int/lit8 v25, v11, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    if-ltz v19, :cond_437

    add-int/lit8 v24, v11, 0x1

    move/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move/from16 v11, v19

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_424

    const/16 v24, 0x2f

    add-int/lit8 v25, v19, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v20

    if-ltz v20, :cond_424

    add-int/lit8 v24, v19, 0x1

    move/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move/from16 v11, v20

    :cond_424
    :goto_424
    if-nez v21, :cond_440

    if-nez v13, :cond_432

    const-string/jumbo v24, "android.intent.action.MAIN"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_432
    const-string/jumbo v8, ""

    goto/16 :goto_363

    :cond_437
    add-int/lit8 v24, v11, 0x1

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_424

    :cond_440
    if-nez v5, :cond_45c

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_363

    :cond_45c
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "://"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_363

    :cond_484
    const-string/jumbo v8, ""

    goto/16 :goto_363

    :catch_489
    move-exception v9

    new-instance v24, Ljava/net/URISyntaxException;

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24
    :try_end_49a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_374 .. :try_end_49a} :catch_4a

    :cond_49a
    move-object/from16 v16, v17

    goto/16 :goto_32f
.end method

.method public static printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    const/16 v3, 0x2f

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "<INTENT> specifications include these flags and arguments:"

    aput-object v3, v1, v2

    const-string/jumbo v3, "    [-a <ACTION>] [-d <DATA_URI>] [-t <MIME_TYPE>]"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [-c <CATEGORY> [-c <CATEGORY>] ...]"

    const/4 v4, 0x2

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [-e|--es <EXTRA_KEY> <EXTRA_STRING_VALUE> ...]"

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--esn <EXTRA_KEY> ...]"

    const/4 v4, 0x4

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--ez <EXTRA_KEY> <EXTRA_BOOLEAN_VALUE> ...]"

    const/4 v4, 0x5

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--ei <EXTRA_KEY> <EXTRA_INT_VALUE> ...]"

    const/4 v4, 0x6

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--el <EXTRA_KEY> <EXTRA_LONG_VALUE> ...]"

    const/4 v4, 0x7

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--ef <EXTRA_KEY> <EXTRA_FLOAT_VALUE> ...]"

    const/16 v4, 0x8

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--eu <EXTRA_KEY> <EXTRA_URI_VALUE> ...]"

    const/16 v4, 0x9

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--ecn <EXTRA_KEY> <EXTRA_COMPONENT_NAME_VALUE>]"

    const/16 v4, 0xa

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--eia <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const/16 v4, 0xb

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as Integer[])"

    const/16 v4, 0xc

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--eial <EXTRA_KEY> <EXTRA_INT_VALUE>[,<EXTRA_INT_VALUE...]]"

    const/16 v4, 0xd

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as List<Integer>)"

    const/16 v4, 0xe

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--ela <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const/16 v4, 0xf

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as Long[])"

    const/16 v4, 0x10

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--elal <EXTRA_KEY> <EXTRA_LONG_VALUE>[,<EXTRA_LONG_VALUE...]]"

    const/16 v4, 0x11

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as List<Long>)"

    const/16 v4, 0x12

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--efa <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const/16 v4, 0x13

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as Float[])"

    const/16 v4, 0x14

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--efal <EXTRA_KEY> <EXTRA_FLOAT_VALUE>[,<EXTRA_FLOAT_VALUE...]]"

    const/16 v4, 0x15

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as List<Float>)"

    const/16 v4, 0x16

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--esa <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const/16 v4, 0x17

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as String[]; to embed a comma into a string,"

    const/16 v4, 0x18

    aput-object v3, v1, v4

    const-string/jumbo v3, "         escape it using \"\\,\")"

    const/16 v4, 0x19

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--esal <EXTRA_KEY> <EXTRA_STRING_VALUE>[,<EXTRA_STRING_VALUE...]]"

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    const-string/jumbo v3, "        (mutiple extras passed as List<String>; to embed a comma into a string,"

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    const-string/jumbo v3, "         escape it using \"\\,\")"

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [-f <FLAG>]"

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--grant-read-uri-permission] [--grant-write-uri-permission]"

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--grant-persistable-uri-permission] [--grant-prefix-uri-permission]"

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--debug-log-resolution] [--exclude-stopped-packages]"

    const/16 v4, 0x20

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--include-stopped-packages]"

    const/16 v4, 0x21

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-brought-to-front] [--activity-clear-top]"

    const/16 v4, 0x22

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-clear-when-task-reset] [--activity-exclude-from-recents]"

    const/16 v4, 0x23

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-launched-from-history] [--activity-multiple-task]"

    const/16 v4, 0x24

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-no-animation] [--activity-no-history]"

    const/16 v4, 0x25

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-no-user-action] [--activity-previous-is-top]"

    const/16 v4, 0x26

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-reorder-to-front] [--activity-reset-task-if-needed]"

    const/16 v4, 0x27

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-single-top] [--activity-clear-task]"

    const/16 v4, 0x28

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--activity-task-on-home]"

    const/16 v4, 0x29

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--receiver-registered-only] [--receiver-replace-pending]"

    const/16 v4, 0x2a

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--receiver-foreground] [--receiver-no-abort]"

    const/16 v4, 0x2b

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--receiver-include-background]"

    const/16 v4, 0x2c

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [--selector]"

    const/16 v4, 0x2d

    aput-object v3, v1, v4

    const-string/jumbo v3, "    [<URI> | <PACKAGE> | <COMPONENT>]"

    const/16 v4, 0x2e

    aput-object v3, v1, v4

    array-length v3, v1

    :goto_146
    if-ge v2, v3, :cond_153

    aget-object v0, v1, v2

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_146

    :cond_153
    return-void
.end method

.method public static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_f
    if-ltz v2, :cond_a2

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "action"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_28
    const-string/jumbo v8, "data"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_25

    :cond_39
    const-string/jumbo v8, "type"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_25

    :cond_46
    const-string/jumbo v8, "component"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_25

    :cond_57
    const-string/jumbo v8, "flags"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    const/16 v8, 0x10

    invoke-static {v3, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_25

    :cond_6a
    const-string/jumbo v8, "Intent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreFromXml: unknown attribute="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    :cond_85
    const-string/jumbo v8, "Intent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restoreFromXml: unknown name="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_a2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_d4

    const/4 v8, 0x3

    if-ne v4, v8, :cond_b2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ge v8, v7, :cond_d4

    :cond_b2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_a2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "categories"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_c8
    if-ltz v2, :cond_a2

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 v2, v2, -0x1

    goto :goto_c8

    :cond_d4
    return-object v5
.end method

.method private toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 13

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_30

    const-string/jumbo v0, "SEL;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v2, :cond_46

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iget-object v2, v2, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    :goto_2a
    move-object v3, v6

    move-object v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_45

    const-string/jumbo v0, "#Intent;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "end"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    return-void

    :cond_46
    move-object v2, v6

    goto :goto_2a
.end method

.method private toUriInner(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15

    const/16 v8, 0x3b

    if-eqz p2, :cond_12

    const-string/jumbo v5, "scheme="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v5, :cond_34

    iget-object v5, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_34

    const-string/jumbo v5, "action="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v5, :cond_5e

    const/4 v1, 0x0

    :goto_39
    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_5e

    const-string/jumbo v5, "category="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_5e
    iget-object v5, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v5, :cond_79

    const-string/jumbo v5, "type="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    const-string/jumbo v7, "/"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_79
    iget v5, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v5, :cond_91

    const-string/jumbo v5, "launchFlags=0x"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_91
    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v5, :cond_b3

    iget-object v5, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b3

    const-string/jumbo v5, "package="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b3
    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_d2

    const-string/jumbo v5, "component="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-static {v6, v7}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d2
    iget-object v5, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_ee

    const-string/jumbo v5, "sourceBounds="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ee
    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_173

    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_fc
    :goto_fc
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_173

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_139

    const/16 v0, 0x53

    :goto_114
    if-eqz v0, :cond_fc

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_fc

    :cond_139
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_140

    const/16 v0, 0x42

    goto :goto_114

    :cond_140
    instance-of v5, v4, Ljava/lang/Byte;

    if-eqz v5, :cond_147

    const/16 v0, 0x62

    goto :goto_114

    :cond_147
    instance-of v5, v4, Ljava/lang/Character;

    if-eqz v5, :cond_14e

    const/16 v0, 0x63

    goto :goto_114

    :cond_14e
    instance-of v5, v4, Ljava/lang/Double;

    if-eqz v5, :cond_155

    const/16 v0, 0x64

    goto :goto_114

    :cond_155
    instance-of v5, v4, Ljava/lang/Float;

    if-eqz v5, :cond_15c

    const/16 v0, 0x66

    goto :goto_114

    :cond_15c
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_163

    const/16 v0, 0x69

    goto :goto_114

    :cond_163
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_16a

    const/16 v0, 0x6c

    goto :goto_114

    :cond_16a
    instance-of v5, v4, Ljava/lang/Short;

    if-eqz v5, :cond_171

    const/16 v0, 0x73

    goto :goto_114

    :cond_171
    const/4 v0, 0x0

    goto :goto_114

    :cond_173
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFlags(I)Landroid/content/Intent;
    .registers 3

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public addMiuiFlags(I)Landroid/content/Intent;
    .registers 3

    iget v0, p0, Landroid/content/Intent;->mMiuiFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/content/Intent;->mMiuiFlags:I

    return-object p0
.end method

.method public canStripForHistory()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_d
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public cloneFilter()Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->describeContents()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public fillIn(Landroid/content/Intent;I)I
    .registers 11

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_15

    iget-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v4, :cond_10

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_15

    :cond_10
    iget-object v4, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_15
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v4, :cond_1d

    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v4, :cond_30

    :cond_1d
    iget-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-nez v4, :cond_da

    iget-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-nez v4, :cond_da

    :goto_25
    iget-object v4, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object v4, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v4, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    :cond_30
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_4b

    iget-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_3c

    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_4b

    :cond_3c
    iget-object v4, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v4, :cond_49

    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v4, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_49
    or-int/lit8 v0, v0, 0x4

    :cond_4b
    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_61

    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_57

    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_61

    :cond_57
    iget-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-nez v4, :cond_61

    iget-object v4, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x10

    :cond_61
    iget-object v4, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v4, :cond_7a

    and-int/lit8 v4, p2, 0x40

    if-eqz v4, :cond_7a

    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v4, :cond_7a

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p1, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    iput-object v6, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x40

    :cond_7a
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_8d

    iget-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v4, :cond_86

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_8d

    :cond_86
    iget-object v4, p1, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    iput-object v4, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    or-int/lit16 v0, v0, 0x80

    const/4 v2, 0x1

    :cond_8d
    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_9b

    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_9b

    iget-object v4, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iput-object v4, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    or-int/lit8 v0, v0, 0x8

    :cond_9b
    iget v4, p0, Landroid/content/Intent;->mFlags:I

    iget v5, p1, Landroid/content/Intent;->mFlags:I

    or-int/2addr v4, v5

    iput v4, p0, Landroid/content/Intent;->mFlags:I

    iget-object v4, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_b9

    iget-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_ae

    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_b9

    :cond_ae
    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, p1, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v4, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    or-int/lit8 v0, v0, 0x20

    :cond_b9
    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v4, :cond_e0

    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_cb

    new-instance v4, Landroid/os/Bundle;

    iget-object v5, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const/4 v2, 0x1

    :cond_cb
    :goto_cb
    if-eqz v2, :cond_d9

    iget v4, p0, Landroid/content/Intent;->mContentUserHint:I

    if-ne v4, v7, :cond_d9

    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    if-eq v4, v7, :cond_d9

    iget v4, p1, Landroid/content/Intent;->mContentUserHint:I

    iput v4, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_d9
    return v0

    :cond_da
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_30

    goto/16 :goto_25

    :cond_e0
    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_cb

    :try_start_e4
    new-instance v3, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v4, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iput-object v3, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;
    :try_end_f2
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_f2} :catch_f4

    const/4 v2, 0x1

    goto :goto_cb

    :catch_f4
    move-exception v1

    const-string/jumbo v4, "Intent"

    const-string/jumbo v5, "Failure filling in extras"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cb
.end method

.method public filterEquals(Landroid/content/Intent;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    return v2

    :cond_f
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iget-object v1, p1, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    :cond_1a
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    return v2

    :cond_25
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    return v2

    :cond_30
    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    return v2

    :cond_3b
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    return v2

    :cond_46
    const/4 v0, 0x1

    return v0
.end method

.method public filterHashCode()I
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_d
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_23
    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2e
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_39

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_39
    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_44
    return v0
.end method

.method public fixUris(I)V
    .registers 11

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    :cond_c
    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v7, :cond_15

    iget-object v7, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v7, p1}, Landroid/content/ClipData;->fixUris(I)V

    :cond_15
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "android.intent.action.SEND"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_38

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-eqz v5, :cond_37

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-static {v5, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_37
    :goto_37
    return-void

    :cond_38
    const-string/jumbo v7, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_37

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_50
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_66

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-static {v7, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    :cond_66
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {p0, v7, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_37

    :cond_6d
    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE_SECURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_88

    const-string/jumbo v7, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    :cond_88
    const-string/jumbo v7, "output"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    if-eqz v4, :cond_37

    const-string/jumbo v7, "output"

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_37
.end method

.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanArrayExtra(Ljava/lang/String;)[Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    goto :goto_5
.end method

.method public getBooleanExtra(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_4
.end method

.method public getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_5
.end method

.method public getByteArrayExtra(Ljava/lang/String;)[B
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_5
.end method

.method public getByteExtra(Ljava/lang/String;B)B
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    goto :goto_4
.end method

.method public getCategories()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getCharArrayExtra(Ljava/lang/String;)[C
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    goto :goto_5
.end method

.method public getCharExtra(Ljava/lang/String;C)C
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result p2

    goto :goto_4
.end method

.method public getCharSequenceArrayExtra(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5
.end method

.method public getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5
.end method

.method public getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_5
.end method

.method public getClipData()Landroid/content/ClipData;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getContentUserHint()I
    .registers 2

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    return v0
.end method

.method public getData()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getDataString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getDoubleArrayExtra(Ljava/lang/String;)[D
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    goto :goto_5
.end method

.method public getDoubleExtra(Ljava/lang/String;D)D
    .registers 6

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return-wide p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide p2

    goto :goto_4
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p2

    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v0, v1

    :cond_e
    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_c
    return-object v0
.end method

.method public getFlags()I
    .registers 2

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    return v0
.end method

.method public getFloatArrayExtra(Ljava/lang/String;)[F
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    goto :goto_5
.end method

.method public getFloatExtra(Ljava/lang/String;F)F
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_4
.end method

.method public getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public getIntArrayExtra(Ljava/lang/String;)[I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_5
.end method

.method public getIntExtra(Ljava/lang/String;I)I
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_4
.end method

.method public getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5
.end method

.method public getLaunchStartTime()J
    .registers 3

    iget-wide v0, p0, Landroid/content/Intent;->mLaunchStartTime:J

    return-wide v0
.end method

.method public getLaunchToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method public getLongArrayExtra(Ljava/lang/String;)[J
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    goto :goto_5
.end method

.method public getLongExtra(Ljava/lang/String;J)J
    .registers 6

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return-wide p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_4
.end method

.method public getMiuiFlags()I
    .registers 2

    iget v0, p0, Landroid/content/Intent;->mMiuiFlags:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_5
.end method

.method public getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5
.end method

.method public getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_5
.end method

.method public getScheme()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    :cond_b
    return-object v0
.end method

.method public getSelector()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mSenderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_5
.end method

.method public getShortArrayExtra(Ljava/lang/String;)[S
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getShortArray(Ljava/lang/String;)[S

    move-result-object v0

    goto :goto_5
.end method

.method public getShortExtra(Ljava/lang/String;S)S
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_5

    :goto_4
    return p2

    :cond_5
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result p2

    goto :goto_4
.end method

.method public getSourceBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_5
.end method

.method public getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasCategory(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasExtra(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasFileDescriptors()Z
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isDocument()Z
    .registers 3

    const/high16 v1, 0x80000

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isExcludingStopped()Z
    .registers 3

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public markLaunchingStart(J)V
    .registers 4

    iput-wide p1, p0, Landroid/content/Intent;->mLaunchStartTime:J

    return-void
.end method

.method public maybeStripForHistory()Landroid/content/Intent;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Intent;->canStripForHistory()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;I)V

    return-object v0
.end method

.method public migrateExtraStreamToClipData()Z
    .registers 22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/Bundle;->isParcelled()Z

    move-result v18

    if-eqz v18, :cond_17

    const/16 v18, 0x0

    return v18

    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v18

    if-eqz v18, :cond_20

    const/16 v18, 0x0

    return v18

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v18, "android.intent.action.CHOOSER"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_69

    const/4 v11, 0x0

    :try_start_30
    const-string/jumbo v18, "android.intent.extra.INTENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    if-eqz v9, :cond_43

    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_30 .. :try_end_42} :catch_1d5

    move-result v11

    :cond_43
    :goto_43
    :try_start_43
    const-string/jumbo v18, "android.intent.extra.INITIAL_INTENTS"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v10

    if-eqz v10, :cond_68

    const/4 v8, 0x0

    :goto_51
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_68

    aget-object v9, v10, v8

    check-cast v9, Landroid/content/Intent;

    if-eqz v9, :cond_64

    invoke-virtual {v9}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z
    :try_end_61
    .catch Ljava/lang/ClassCastException; {:try_start_43 .. :try_end_61} :catch_67

    move-result v18

    or-int v11, v11, v18

    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_51

    :catch_67
    move-exception v5

    :cond_68
    return v11

    :cond_69
    const-string/jumbo v18, "android.intent.action.SEND"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_db

    :try_start_74
    const-string/jumbo v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    const-string/jumbo v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    const-string/jumbo v18, "android.intent.extra.HTML_TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v14, :cond_9b

    if-eqz v16, :cond_d6

    :cond_9b
    new-instance v4, Landroid/content/ClipData;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    new-instance v19, Landroid/content/ClipData$Item;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2, v14}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_d3
    .catch Ljava/lang/ClassCastException; {:try_start_74 .. :try_end_d3} :catch_1d2

    const/16 v18, 0x1

    return v18

    :cond_d6
    if-nez v6, :cond_9b

    :cond_d8
    :goto_d8
    const/16 v18, 0x0

    return v18

    :cond_db
    const-string/jumbo v18, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17f

    :try_start_e6
    const-string/jumbo v18, "android.intent.extra.STREAM"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    const-string/jumbo v18, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    const-string/jumbo v18, "android.intent.extra.HTML_TEXT"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v12, -0x1

    if-eqz v15, :cond_10e

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    :cond_10e
    if-eqz v17, :cond_121

    if-ltz v12, :cond_11d

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-eq v12, v0, :cond_11d

    const/16 v18, 0x0

    return v18

    :cond_11d
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v12

    :cond_121
    if-eqz v7, :cond_134

    if-ltz v12, :cond_130

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-eq v12, v0, :cond_130

    const/16 v18, 0x0

    return v18

    :cond_130
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    :cond_134
    if-lez v12, :cond_d8

    new-instance v4, Landroid/content/ClipData;

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v15, v0, v7, v1}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/4 v8, 0x1

    :goto_15e
    if-ge v8, v12, :cond_16e

    move-object/from16 v0, v17

    invoke-static {v15, v0, v7, v8}, Landroid/content/Intent;->makeClipItem(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/ClipData$Item;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_15e

    :cond_16e
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_17c
    .catch Ljava/lang/ClassCastException; {:try_start_e6 .. :try_end_17c} :catch_1cf

    const/16 v18, 0x1

    return v18

    :cond_17f
    const-string/jumbo v18, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1a0

    const-string/jumbo v18, "android.media.action.IMAGE_CAPTURE_SECURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1a0

    const-string/jumbo v18, "android.media.action.VIDEO_CAPTURE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d8

    :cond_1a0
    :try_start_1a0
    const-string/jumbo v18, "output"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/Uri;
    :try_end_1ad
    .catch Ljava/lang/ClassCastException; {:try_start_1a0 .. :try_end_1ad} :catch_1cb

    if-eqz v13, :cond_d8

    const-string/jumbo v18, ""

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v18, 0x1

    return v18

    :catch_1cb
    move-exception v5

    const/16 v18, 0x0

    return v18

    :catch_1cf
    move-exception v5

    goto/16 :goto_d8

    :catch_1d2
    move-exception v5

    goto/16 :goto_d8

    :catch_1d5
    move-exception v5

    goto/16 :goto_43
.end method

.method public prepareToEnterProcess()V
    .registers 4

    const/4 v2, -0x2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setDefusable(Z)V

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->prepareToEnterProcess()V

    :cond_e
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->prepareToEnterProcess()V

    :cond_17
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    if-eq v0, v2, :cond_2e

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2e

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p0, v0}, Landroid/content/Intent;->fixUris(I)V

    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_2e
    return-void
.end method

.method public prepareToLeaveProcess(Landroid/content/Context;)V
    .registers 5

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_14
    invoke-virtual {p0, v0}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    return-void

    :cond_18
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public prepareToLeaveProcess(Z)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setAllowFds(Z)V

    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    :cond_d
    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ClipData;->prepareToLeaveProcess(ZI)V

    :cond_1a
    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isParcelled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_3a

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->prepareToLeaveProcess(Z)V

    :cond_3a
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_55

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_55

    invoke-static {}, Landroid/os/StrictMode;->vmFileUriExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_55

    if-eqz p1, :cond_55

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string/jumbo v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    :cond_55
    :goto_55
    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_70

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_70

    invoke-static {}, Landroid/os/StrictMode;->vmContentUriWithoutPermissionEnabled()Z

    move-result v1

    if-eqz v1, :cond_70

    if-eqz p1, :cond_70

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    const-string/jumbo v2, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    :cond_70
    :goto_70
    return-void

    :cond_71
    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "android.intent.action.PACKAGE_VERIFIED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    const-string/jumbo v2, "miui.intent.action.MEDIA_SCANNER_SCAN_FOLDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string/jumbo v2, "Intent.getData()"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->checkFileUriExposed(Ljava/lang/String;)V

    goto/16 :goto_55

    :cond_102
    const-string/jumbo v2, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const-string/jumbo v2, "Intent.getData()"

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri;->checkContentUriWithoutPermission(Ljava/lang/String;I)V

    goto/16 :goto_70
.end method

.method public prepareToLeaveUser(I)V
    .registers 4

    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_7

    iput p1, p0, Landroid/content/Intent;->mContentUserHint:I

    :cond_7
    return-void
.end method

.method public putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;B)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;C)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    .registers 6

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;F)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    .registers 6

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;S)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[C)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[D)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[F)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[I)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[J)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/CharSequence;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[S)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    return-object p0
.end method

.method public putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    return-object p0
.end method

.method public putExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_12

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_11
    :goto_11
    return-object p0

    :cond_12
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_11
.end method

.method public putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :cond_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_59

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    const/4 v1, 0x0

    :goto_47
    if-ge v1, v0, :cond_5c

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_59
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_5c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_69

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    :cond_69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_76

    new-instance v2, Landroid/content/ClipData;

    invoke-direct {v2, p1}, Landroid/content/ClipData;-><init>(Landroid/os/Parcel;)V

    iput-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    :cond_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/Intent;->mSenderPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/Intent;->mMiuiFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/Intent;->mLaunchStartTime:J

    return-void
.end method

.method public removeCategory(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_14

    iput-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    :cond_14
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_14

    iput-object v1, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_14
    return-void
.end method

.method public removeFlags(I)V
    .registers 4

    iget v0, p0, Landroid/content/Intent;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/Intent;->mFlags:I

    return-void
.end method

.method public removeUnsafeExtras()V
    .registers 2

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->filterValues()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    :cond_c
    return-void
.end method

.method public replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_c
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :cond_8
    iput-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v1

    :cond_8
    const/high16 v1, 0x10000

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_20
    return-object v2
.end method

.method public resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;
    .registers 7

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_c

    :try_start_5
    iget-object v3, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v3, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_a} :catch_18

    move-result-object v0

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    const/high16 v3, 0x10000

    or-int/2addr v3, p2

    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_b

    :catch_18
    move-exception v1

    goto :goto_b
.end method

.method public resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;
    .registers 11

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object v5

    :cond_8
    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_f

    return-object v6

    :cond_f
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_6d

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2a

    :goto_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6b

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Multiple system services handle "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6b
    move-object v0, v1

    goto :goto_27

    :cond_6d
    return-object v0
.end method

.method public resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_22

    const-string/jumbo v0, "content"

    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    return-object v2
.end method

.method public resolveType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string/jumbo v1, "action"

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object v1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_1d

    const-string/jumbo v1, "data"

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d
    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v1, :cond_29

    const-string/jumbo v1, "type"

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_29
    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_39

    const-string/jumbo v1, "component"

    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_39
    const-string/jumbo v1, "flags"

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v1, :cond_72

    const-string/jumbo v1, "categories"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_59
    if-ltz v0, :cond_6c

    const-string/jumbo v2, "category"

    iget-object v1, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_59

    :cond_6c
    const-string/jumbo v1, "categories"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_72
    return-void
.end method

.method public setAction(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iput-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method public setAllowFds(Z)V
    .registers 3

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setAllowFds(Z)Z

    :cond_9
    return-void
.end method

.method public setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setClipData(Landroid/content/ClipData;)V
    .registers 2

    iput-object p1, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    return-void
.end method

.method public setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .registers 2

    iput-object p1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setData(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3

    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 3

    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    iput-object p1, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object p2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setDefusable(Z)V
    .registers 3

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setDefusable(Z)V

    :cond_9
    return-void
.end method

.method public setExtrasClassLoader(Ljava/lang/ClassLoader;)V
    .registers 3

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_9
    return-void
.end method

.method public setFlags(I)Landroid/content/Intent;
    .registers 2

    iput p1, p0, Landroid/content/Intent;->mFlags:I

    return-object p0
.end method

.method public setLaunchToken(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/content/Intent;->mLaunchToken:Ljava/lang/String;

    return-void
.end method

.method public setMiuiFlags(I)Landroid/content/Intent;
    .registers 2

    iput p1, p0, Landroid/content/Intent;->mMiuiFlags:I

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t set package name when selector is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iput-object p1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setSelector(Landroid/content/Intent;)V
    .registers 4

    if-ne p1, p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Intent being set as a selector of itself"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-eqz p1, :cond_1a

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Can\'t set selector when package name is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object p1, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    return-void
.end method

.method public setSender(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/content/Intent;->mSenderPackageName:Ljava/lang/String;

    return-void
.end method

.method public setSourceBounds(Landroid/graphics/Rect;)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    :goto_a
    return-void

    :cond_b
    iput-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    goto :goto_a
.end method

.method public setType(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    iput-object p1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    return-object p0
.end method

.method public setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    invoke-static {p1}, Landroid/content/Intent;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public toInsecureString()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string/jumbo v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toInsecureStringWithClip()Ljava/lang/String;
    .registers 7

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string/jumbo v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(ZZZZ)Ljava/lang/String;
    .registers 11

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString(Ljava/lang/StringBuilder;ZZZZ)V
    .registers 14

    const/16 v2, 0x20

    const/4 v6, 0x1

    iget-object v0, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string/jumbo v0, "act="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    :cond_14
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v0, :cond_48

    if-nez v6, :cond_1d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    const/4 v6, 0x0

    const-string/jumbo v0, "cat=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_25
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v7, v0, :cond_42

    if-lez v7, :cond_34

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_34
    iget-object v0, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_42
    const-string/jumbo v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_63

    if-nez v6, :cond_51

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_51
    const/4 v6, 0x0

    const-string/jumbo v0, "dat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_13f

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    :goto_63
    iget-object v0, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    if-eqz v0, :cond_79

    if-nez v6, :cond_6c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6c
    const/4 v6, 0x0

    const-string/jumbo v0, "typ="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    iget v0, p0, Landroid/content/Intent;->mFlags:I

    if-eqz v0, :cond_93

    if-nez v6, :cond_82

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_82
    const/4 v6, 0x0

    const-string/jumbo v0, "flg=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_a9

    if-nez v6, :cond_9c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9c
    const/4 v6, 0x0

    const-string/jumbo v0, "pkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a9
    if-eqz p3, :cond_c5

    iget-object v0, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_c5

    if-nez v6, :cond_b4

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b4
    const/4 v6, 0x0

    const-string/jumbo v0, "cmp="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c5
    iget-object v0, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_df

    if-nez v6, :cond_ce

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_ce
    const/4 v6, 0x0

    const-string/jumbo v0, "bnds="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_df
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v0, :cond_fb

    if-nez v6, :cond_e8

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e8
    const-string/jumbo v0, "clip={"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_146

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    :goto_f5
    const/4 v6, 0x0

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_fb
    if-eqz p4, :cond_10d

    iget-object v0, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_10d

    if-nez v6, :cond_106

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_106
    const/4 v6, 0x0

    const-string/jumbo v0, "(has extras)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10d
    iget v0, p0, Landroid/content/Intent;->mContentUserHint:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_124

    if-nez v6, :cond_117

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_117
    const/4 v6, 0x0

    const-string/jumbo v0, "u="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_124
    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v0, :cond_13e

    const-string/jumbo v0, " sel="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13e
    return-void

    :cond_13f
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_63

    :cond_146
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ClipDescription;->toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    :goto_15a
    iget-object v0, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, v6}, Landroid/content/ClipData;->toShortStringShortItems(Ljava/lang/StringBuilder;Z)V

    goto :goto_f5

    :cond_160
    const/4 v6, 0x1

    goto :goto_15a
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v0, "Intent { "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    const-string/jumbo v0, " }"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri(I)Ljava/lang/String;
    .registers 16

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_9a

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Intent must include an explicit package name to build an android-app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    const-string/jumbo v0, "android-app://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_84

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_84

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_84

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_64

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_74

    const/16 v0, 0x3f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_74
    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedFragment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_84

    const/16 v0, 0x23

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    if-nez v2, :cond_96

    const-string/jumbo v3, "android.intent.action.MAIN"

    :goto_89
    iget-object v4, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_96
    const-string/jumbo v3, "android.intent.action.VIEW"

    goto :goto_89

    :cond_9a
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    if-eqz v0, :cond_f7

    iget-object v0, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v11, 0x0

    :goto_ae
    if-ge v11, v6, :cond_e6

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v0, 0x61

    if-lt v8, v0, :cond_bf

    const/16 v0, 0x7a

    if-gt v8, v0, :cond_bf

    :cond_bc
    add-int/lit8 v11, v11, 0x1

    goto :goto_ae

    :cond_bf
    const/16 v0, 0x41

    if-lt v8, v0, :cond_c7

    const/16 v0, 0x5a

    if-le v8, v0, :cond_bc

    :cond_c7
    const/16 v0, 0x2e

    if-eq v8, v0, :cond_bc

    const/16 v0, 0x2d

    if-eq v8, v0, :cond_bc

    const/16 v0, 0x3a

    if-ne v8, v0, :cond_e6

    if-lez v11, :cond_e6

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "intent:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    :cond_e6
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e9
    :goto_e9
    const-string/jumbo v3, "android.intent.action.VIEW"

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/Intent;->toUriFragment(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f7
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e9

    const-string/jumbo v0, "intent:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e9
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/Intent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/Intent;->mData:Landroid/net/Uri;

    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v2, p0, Landroid/content/Intent;->mType:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v2, p0, Landroid/content/Intent;->mFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/content/Intent;->mComponent:Landroid/content/ComponentName;

    invoke-static {v2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_4a

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2c
    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v0, :cond_51

    iget-object v2, p0, Landroid/content/Intent;->mCategories:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2c

    :cond_4e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_51
    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    if-eqz v2, :cond_83

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mSelector:Landroid/content/Intent;

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5d
    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    if-eqz v2, :cond_87

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v2, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_69
    iget v2, p0, Landroid/content/Intent;->mContentUserHint:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/content/Intent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v2, p0, Landroid/content/Intent;->mSenderPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v2, p0, Landroid/content/Intent;->mMiuiFlags:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/content/Intent;->mLaunchStartTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_83
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5d

    :cond_87
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_69
.end method
