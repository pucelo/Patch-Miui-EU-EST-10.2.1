.class public Lcom/android/systemui/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AUTOGROUP_KEY:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final ENABLE_USER_FOLD:Z

.field public static final FORCE_SHOW_PROGRESS_BAR_WITH_SUBTEXT:Z

.field public static final HAS_POWER_CENTER:Z

.field public static final HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

.field public static IS_ES_VODAFONE:Z

.field public static final IS_INTERNATIONAL:Z

.field public static final IS_MIPAD_CLOVER:Z

.field public static IS_MX_TELCEL:Z

.field public static final IS_NARROW_NOTCH:Z

.field public static final IS_NOTCH:Z

.field public static final IS_OLED_SCREEN:Z

.field public static final IS_TABLET:Z

.field public static final SHOW_NOTIFICATION_HEADER:Z

.field public static final SOUND_CHARGE_WIRELESS:Ljava/io/File;

.field public static final SOUND_CHARGING:Ljava/io/File;

.field public static final SOUND_DISCONNECT:Ljava/io/File;

.field public static final SOUND_FLASHLIGHT:Ljava/io/File;

.field public static final SOUND_SCREENSHOT:Ljava/io/File;

.field public static final SOUND_SCREENSHOT_KR:Ljava/io/File;

.field public static final STATUS_BAR_HIDE_VOLTE:Z

.field public static final SUPPORT_ANDROID_FLASHLIGHT:Z

.field public static final SUPPORT_AOD:Z

.field public static final SUPPORT_DISABLE_USB_BY_SIM:Z

.field public static final SUPPORT_DUAL_GPS:Z

.field public static final SUPPORT_EXTREME_BATTERY_SAVER:Z

.field public static final SUPPORT_SCREEN_PAPER_MODE:Z

.field public static final THEME_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x17

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "debug.miuisystemui.staging"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    const-string/jumbo v0, "ro.miui.notch"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    const-string/jumbo v0, "sakura"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sakura_india"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "platina"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/android/systemui/Constants;->IS_NARROW_NOTCH:Z

    const-string/jumbo v0, "oled"

    const-string/jumbo v3, "ro.display.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->IS_OLED_SCREEN:Z

    const-string/jumbo v0, "clover"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->IS_MIPAD_CLOVER:Z

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    sput-boolean v0, Lcom/android/systemui/Constants;->IS_TABLET:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v0, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/Constants;->HAS_POWER_CENTER:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/Constants;->ENABLE_USER_FOLD:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    :goto_2
    sput-boolean v0, Lcom/android/systemui/Constants;->SUPPORT_DISABLE_USB_BY_SIM:Z

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v4, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/systemui/Constants;->SHOW_NOTIFICATION_HEADER:Z

    const-string/jumbo v0, "support_aod"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->SUPPORT_AOD:Z

    const-string/jumbo v0, "support_dual_gps"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->SUPPORT_DUAL_GPS:Z

    const-string/jumbo v0, "support_android_flashlight"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->SUPPORT_ANDROID_FLASHLIGHT:Z

    const-string/jumbo v0, "support_extreme_battery_saver"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->SUPPORT_EXTREME_BATTERY_SAVER:Z

    const-string/jumbo v0, "support_screen_paper_mode"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->SUPPORT_SCREEN_PAPER_MODE:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v4, :cond_4

    :goto_4
    sput-boolean v1, Lcom/android/systemui/Constants;->FORCE_SHOW_PROGRESS_BAR_WITH_SUBTEXT:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_5

    const-string/jumbo v0, "ranker_group"

    :goto_5
    sput-object v0, Lcom/android/systemui/Constants;->AUTOGROUP_KEY:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/charging.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Constants;->SOUND_CHARGING:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/charge_wireless.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Constants;->SOUND_CHARGE_WIRELESS:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/disconnect.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Constants;->SOUND_DISCONNECT:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/screenshot.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Constants;->SOUND_SCREENSHOT:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/screenshot_kr.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Constants;->SOUND_SCREENSHOT_KR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/media/audio/ui/flashlight.ogg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Constants;->SOUND_FLASHLIGHT:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/theme/com.android.systemui"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Constants;->THEME_FILE:Ljava/io/File;

    const-string/jumbo v0, "ro.miui.product.home"

    const-string/jumbo v1, "com.miui.home"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v0, "hk_h3g"

    const-string/jumbo v1, "ro.miui.customized.region"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->STATUS_BAR_HIDE_VOLTE:Z

    const-string/jumbo v0, "es_vodafone"

    const-string/jumbo v1, "ro.miui.customized.region"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->IS_ES_VODAFONE:Z

    const-string/jumbo v0, "mx_telcel"

    const-string/jumbo v1, "ro.miui.customized.region"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/Constants;->IS_MX_TELCEL:Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto/16 :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v1, v2

    goto/16 :goto_4

    :cond_5
    const-string/jumbo v0, "ranker_bundle"

    goto/16 :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
