.class public final Landroid/provider/MiuiSettings$Key;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final CLOSE_APP:Ljava/lang/String; = "close_app"

.field public static final CLOSE_TALKBACK:Ljava/lang/String; = "close_talkback"

.field public static final DOUBLE_CLICK_POWER_KEY:Ljava/lang/String; = "double_click_power_key"

.field public static final GO_TO_SLEEP:Ljava/lang/String; = "go_to_sleep"

.field public static final KEY_AI_BUTTON_SETTINGS:Ljava/lang/String; = "key_ai_button_settings"

.field public static final KEY_BANK_CARD:Ljava/lang/String; = "key_bank_card_in_ese"

.field public static final KEY_BANK_CARD_DISABLE:I = 0x0

.field public static final KEY_COMBINATION_POWER_BACK:Ljava/lang/String; = "key_combination_power_back"

.field public static final KEY_COMBINATION_POWER_HOME:Ljava/lang/String; = "key_combination_power_home"

.field public static final KEY_COMBINATION_POWER_MENU:Ljava/lang/String; = "key_combination_power_menu"

.field public static final KEY_DOUBLE_CLICK_AI_BUTTON_SETTINGS:Ljava/lang/String; = "key_double_click_ai_button_settings"

.field public static final KEY_LONG_PRESS_DOWN_AI_BUTTON_SETTINGS:Ljava/lang/String; = "key_long_press_down_ai_button_settings"

.field public static final KEY_LONG_PRESS_UP_AI_BUTTON_SETTINGS:Ljava/lang/String; = "key_long_press_up_ai_button_settings"

.field public static final KEY_NONE:Ljava/lang/String; = "key_none"

.field public static final KEY_SINGLE_CLICK_AI_BUTTON_SETTINGS:Ljava/lang/String; = "key_single_click_ai_button_settings"

.field public static final KEY_TRANS_CARD:Ljava/lang/String; = "key_trans_card_in_ese"

.field public static final KEY_TRANS_CARD_DISABLE:I = 0x0

.field public static final KEY_UPDATED:Ljava/lang/String; = "key_updated"

.field public static final LAUNCH_CAMERA:Ljava/lang/String; = "launch_camera"

.field public static final LAUNCH_GOOGLE_SEARCH:Ljava/lang/String; = "launch_google_search"

.field public static final LAUNCH_RECENTS:Ljava/lang/String; = "launch_recents"

.field public static final LAUNCH_VOICE_ASSISTANT:Ljava/lang/String; = "launch_voice_assistant"

.field public static final LONG_PRESS_BACK_KEY:Ljava/lang/String; = "long_press_back_key"

.field public static final LONG_PRESS_HOME_KEY:Ljava/lang/String; = "long_press_home_key"

.field public static final LONG_PRESS_MENU_KEY:Ljava/lang/String; = "long_press_menu_key"

.field public static final LONG_PRESS_MENU_KEY_WHEN_LOCK:Ljava/lang/String; = "long_press_menu_key_when_lock"

.field public static final LONG_PRESS_POWER_LAUNCH_XIAOAI:Ljava/lang/String; = "long_press_power_launch_xiaoai"

.field public static final LONG_PRESS_POWER_LAUNCH_XIAOAI_DISABLE:I = 0x0

.field public static final LONG_PRESS_POWER_LAUNCH_XIAOAI_ENABLE:I = 0x1

.field public static final LONG_PRESS_VOLUME_DOWN:Ljava/lang/String; = "key_long_press_volume_down"

.field public static final LONG_PRESS_VOLUME_DOWN_DEFAULT:Ljava/lang/String; = "none"

.field public static final LONG_PRESS_VOLUME_DOWN_PAY:Ljava/lang/String; = "public_transportation_shortcuts"

.field public static final LONG_PRESS_VOLUME_DOWN_STREET_SNAP:Ljava/lang/String; = "Street-snap"

.field public static final LONG_PRESS_VOLUME_DOWN_STREET_SNAP_MOVIE:Ljava/lang/String; = "Street-snap-movie"

.field public static final LONG_PRESS_VOLUME_DOWN_STREET_SNAP_PICTURE:Ljava/lang/String; = "Street-snap-picture"

.field public static final MI_PAY:Ljava/lang/String; = "mi_pay"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final SCREEN_SHOT:Ljava/lang/String; = "screen_shot"

.field public static final SEND_BACK_WHEN_XIAOAI_APPEAR:Ljava/lang/String; = "send_back_when_xiaoai_appear"

.field public static final SHOW_MENU:Ljava/lang/String; = "show_menu"

.field public static final SINGLE_KEY_USE_ACTION:Ljava/lang/String; = "single_key_use_enable"

.field public static final SINGLE_KEY_USE_DISABLE:I = 0x0

.field public static final SINGLE_KEY_USE_ENABLE:I = 0x1

.field public static final SPLIT_SCREEN:Ljava/lang/String; = "split_screen"

.field public static final THREE_GESTURE_DOWN:Ljava/lang/String; = "three_gesture_down"

.field public static final TURN_ON_TORCH:Ljava/lang/String; = "turn_on_torch"

.field public static final VOLUMEKEY_LAUNCH_CAMERA:Ljava/lang/String; = "volumekey_launch_camera"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string/jumbo v1, "double_click_power_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x0

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    const-string/jumbo v1, "three_gesture_down"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string/jumbo v0, "screen_shot"

    goto :goto_19

    :cond_27
    const-string/jumbo v1, "long_press_home_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    sget-boolean v1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v1, :cond_38

    const-string/jumbo v0, "launch_voice_assistant"

    goto :goto_19

    :cond_38
    const-string/jumbo v0, "launch_google_search"

    goto :goto_19

    :cond_3c
    const-string/jumbo v1, "long_press_menu_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string/jumbo v0, "show_menu"

    goto :goto_19

    :cond_49
    const-string/jumbo v1, "long_press_menu_key_when_lock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string/jumbo v0, "turn_on_torch"

    goto :goto_19

    :cond_56
    const-string/jumbo v1, "long_press_back_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v0, 0x0

    goto :goto_19

    :cond_61
    const-string/jumbo v1, "key_combination_power_home"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v0, 0x0

    goto :goto_19

    :cond_6c
    const-string/jumbo v1, "key_combination_power_back"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v0, 0x0

    goto :goto_19

    :cond_77
    const-string/jumbo v1, "key_combination_power_menu"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static isTSMClientInstalled(Landroid/content/Context;)Z
    .registers 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_14

    :try_start_7
    const-string/jumbo v3, "com.miui.tsmclient"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_e} :catch_13

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 v3, 0x1

    return v3

    :catch_13
    move-exception v0

    :cond_14
    return v5
.end method

.method public static updateOldKeyFunctionToNew(Landroid/content/Context;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_updated"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_5b

    const-string/jumbo v3, "screen_key_long_press_app_switch"

    invoke-static {p0, v3}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screen_key_long_press_home"

    invoke-static {p0, v3}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "screen_key_long_press_back"

    invoke-static {p0, v3}, Landroid/provider/MiuiSettings$System;->getScreenKeyLongPressAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "voice_assistant"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "long_press_home_key"

    const-string/jumbo v5, "launch_voice_assistant"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3a
    :goto_3a
    const-string/jumbo v3, "close_app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "long_press_back_key"

    const-string/jumbo v5, "close_app"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_50
    :goto_50
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "key_updated"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5b
    return-void

    :cond_5c
    const-string/jumbo v3, "voice_assistant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "long_press_back_key"

    const-string/jumbo v5, "launch_voice_assistant"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_3a

    :cond_73
    const-string/jumbo v3, "voice_assistant"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "long_press_menu_key"

    const-string/jumbo v5, "launch_voice_assistant"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_3a

    :cond_8a
    const-string/jumbo v3, "close_app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "long_press_home_key"

    const-string/jumbo v5, "close_app"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_50

    :cond_a1
    const-string/jumbo v3, "close_app"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "long_press_menu_key"

    const-string/jumbo v5, "close_app"

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_50
.end method
