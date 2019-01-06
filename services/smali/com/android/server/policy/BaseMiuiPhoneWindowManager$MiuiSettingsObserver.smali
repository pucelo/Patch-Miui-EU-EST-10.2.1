.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BaseMiuiPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MiuiSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "trackball_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "camera_key_preferred_action_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "camera_key_preferred_action_shortcut_id"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "volumekey_wake_screen"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "volumekey_launch_camera"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "auto_test_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "single_key_use_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "key_bank_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "key_trans_card_in_ese"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "key_long_press_volume_down"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "torch_state"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "screen_key_press_app_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "vr_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "enable_mikey_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "accessibility_shortcut_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "accessibility_shortcut_target_service"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "accessibility_shortcut_on_lock_screen"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "double_click_power_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "three_gesture_down"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "long_press_home_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "long_press_menu_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "long_press_menu_key_when_lock"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "long_press_back_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "key_combination_power_home"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "key_combination_power_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "key_combination_power_back"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "long_press_power_launch_xiaoai"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "send_back_when_xiaoai_appear"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "force_fsg_nav_bar"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "fsg_disable_hw_keys"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(Z)V
    .registers 15

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v8, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_d
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/provider/MiuiSettings$Key;->updateOldKeyFunctionToNew(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "double_click_power_key"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mDoubleClickPowerKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "three_gesture_down"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "long_press_home_key"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressHomeKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "long_press_menu_key"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->hasNavigationBar()Z

    move-result v7

    if-nez v7, :cond_333

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "long_press_menu_key_when_lock"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;

    :goto_67
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "long_press_back_key"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressBackKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "key_combination_power_home"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerHome:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "key_combination_power_menu"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerMenu:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "key_combination_power_back"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mKeyCombinationPowerBack:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "screen_key_press_app_switch"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_33d

    const/4 v7, 0x1

    :goto_b6
    invoke-static {v9, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set9(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    const-string/jumbo v7, "screen_shot"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mThreeGestureDown:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_340

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    if-nez v7, :cond_e4

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v9, Lcom/miui/server/MiuiPointerEventListener;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/miui/server/MiuiPointerEventListener;-><init>(Landroid/content/Context;)V

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    :cond_e4
    :goto_e4
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    sget-boolean v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SUPPORT_EDGE_TOUCH_VOLUME:Z

    if-nez v7, :cond_358

    const-string/jumbo v7, "volumekey_wake_screen"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_358

    const/4 v7, 0x1

    :goto_fc
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyWakeScreen:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    sget-boolean v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->SUPPORT_EDGE_TOUCH_VOLUME:Z

    if-nez v7, :cond_35b

    const-string/jumbo v7, "volumekey_launch_camera"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_35b

    const/4 v7, 0x1

    :goto_116
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mVolumeKeyLaunchCamera:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "trackball_wake_screen"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_35e

    const/4 v7, 0x1

    :goto_12c
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTrackballWakeScreen:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "enable_mikey_mode"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_361

    const/4 v7, 0x1

    :goto_141
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMikeymodeEnabled:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "torch_state"

    const/4 v10, 0x0

    invoke-static {v5, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_364

    const/4 v7, 0x1

    :goto_150
    invoke-static {v9, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get11(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Z

    move-result v7

    if-nez v7, :cond_168

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get12(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_168
    const-string/jumbo v7, "camera_key_preferred_action_type"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v5, v7, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v7, 0x1

    if-ne v7, v3, :cond_36a

    const-string/jumbo v7, "camera_key_preferred_action_shortcut_id"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, -0x1

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x4

    if-ne v10, v7, :cond_367

    const/4 v7, 0x1

    :goto_18d
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mCameraKeyWakeScreen:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "auto_test_mode_on"

    const/4 v10, 0x0

    invoke-static {v5, v7, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_36d

    const/4 v7, 0x1

    :goto_19c
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTestModeEnabled:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "single_key_use_enable"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_370

    const/4 v7, 0x1

    :goto_1b2
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSingleKeyUse:Z

    if-eqz v7, :cond_373

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    :goto_1c0
    const-string/jumbo v7, "long_press_power_launch_xiaoai"

    invoke-static {}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get0()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v5, v7, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_37b

    const/4 v4, 0x1

    :goto_1d5
    sget-boolean v7, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v7, :cond_381

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    if-eqz v4, :cond_37e

    const-string/jumbo v7, "launch_voice_assistant"

    :goto_1e0
    iput-object v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    :goto_1e2
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "send_back_when_xiaoai_appear"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_38e

    const/4 v7, 0x1

    :goto_1f5
    invoke-static {v9, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set12(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "key_bank_card_in_ese"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-lez v7, :cond_391

    const/4 v7, 0x1

    :goto_20b
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveBankCard:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "key_trans_card_in_ese"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-lez v7, :cond_394

    const/4 v7, 0x1

    :goto_220
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mHaveTranksCard:Z

    const-string/jumbo v7, "key_long_press_volume_down"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b0

    const-string/jumbo v7, "Street-snap"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24c

    const-string/jumbo v7, "Street-snap-picture"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24c

    const-string/jumbo v7, "Street-snap-movie"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_397

    :cond_24c
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    :goto_252
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "vr_mode"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3c1

    const/4 v7, 0x1

    :goto_266
    invoke-static {v9, v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Z)Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "fsg_disable_hw_keys"

    invoke-static {v7, v9}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-boolean v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mFsgDisableHwKeys:Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "force_fsg_nav_bar"

    invoke-static {v7, v9}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-boolean v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportFsg:Z

    if-eq v6, v7, :cond_299

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-boolean v6, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mSupportFsg:Z

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->updateNavigationBarWidth()V

    :cond_299
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    move-result-object v7

    if-nez v7, :cond_2bc

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v9, Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "enabled_accessibility_services"

    iget-object v12, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v12

    invoke-direct {v9, v10, v11, v12}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Lmiui/provider/SettingsStringUtil$SettingStringHelper;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    :cond_2bc
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c4

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v7}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Lmiui/provider/SettingsStringUtil$SettingStringHelper;

    move-result-object v7

    invoke-virtual {v7}, Lmiui/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get17()Landroid/content/ComponentName;

    move-result-object v10

    invoke-static {v7, v10}, Lmiui/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v7

    :goto_2e0
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mTalkBackIsOpened:Z

    const-string/jumbo v7, "accessibility_shortcut_enabled"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v5, v7, v10, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3c7

    const/4 v1, 0x1

    :goto_2f4
    const-string/jumbo v7, "accessibility_shortcut_target_service"

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v9

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    if-eqz v1, :cond_3ca

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3ca

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get17()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_319
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mShortcutServiceIsTalkBack:Z

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const-string/jumbo v7, "accessibility_shortcut_on_lock_screen"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    const/4 v11, 0x0

    invoke-static {v5, v7, v11, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3cd

    const/4 v7, 0x1

    :goto_32f
    iput-boolean v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mAccessibilityShortcutOnLockScreen:Z
    :try_end_331
    .catchall {:try_start_d .. :try_end_331} :catchall_33a

    monitor-exit v8

    return-void

    :cond_333
    :try_start_333
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressMenuKeyWhenLock:Ljava/lang/String;
    :try_end_338
    .catchall {:try_start_333 .. :try_end_338} :catchall_33a

    goto/16 :goto_67

    :catchall_33a
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_33d
    const/4 v7, 0x0

    goto/16 :goto_b6

    :cond_340
    :try_start_340
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    if-eqz v7, :cond_e4

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    invoke-interface {v7, v9}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mMiuiPointerEventListener:Lcom/miui/server/MiuiPointerEventListener;

    goto/16 :goto_e4

    :cond_358
    const/4 v7, 0x0

    goto/16 :goto_fc

    :cond_35b
    const/4 v7, 0x0

    goto/16 :goto_116

    :cond_35e
    const/4 v7, 0x0

    goto/16 :goto_12c

    :cond_361
    const/4 v7, 0x0

    goto/16 :goto_141

    :cond_364
    const/4 v7, 0x0

    goto/16 :goto_150

    :cond_367
    const/4 v7, 0x0

    goto/16 :goto_18d

    :cond_36a
    const/4 v7, 0x0

    goto/16 :goto_18d

    :cond_36d
    const/4 v7, 0x0

    goto/16 :goto_19c

    :cond_370
    const/4 v7, 0x0

    goto/16 :goto_1b2

    :cond_373
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set4(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_1c0

    :cond_37b
    const/4 v4, 0x0

    goto/16 :goto_1d5

    :cond_37e
    const/4 v7, 0x0

    goto/16 :goto_1e0

    :cond_381
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    if-eqz v4, :cond_38c

    const-string/jumbo v7, "launch_google_search"

    :goto_388
    iput-object v7, v9, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mLongPressPowerKey:Ljava/lang/String;

    goto/16 :goto_1e2

    :cond_38c
    const/4 v7, 0x0

    goto :goto_388

    :cond_38e
    const/4 v7, 0x0

    goto/16 :goto_1f5

    :cond_391
    const/4 v7, 0x0

    goto/16 :goto_20b

    :cond_394
    const/4 v7, 0x0

    goto/16 :goto_220

    :cond_397
    const-string/jumbo v7, "public_transportation_shortcuts"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a8

    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x2

    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_252

    :cond_3a8
    iget-object v7, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set7(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)I

    goto/16 :goto_252

    :cond_3b0
    const-string/jumbo v7, "key_long_press_volume_down"

    const-string/jumbo v9, "none"

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$MiuiSettingsObserver;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)I

    move-result v10

    invoke-static {v5, v7, v9, v10}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_3bf
    .catchall {:try_start_340 .. :try_end_3bf} :catchall_33a

    goto/16 :goto_252

    :cond_3c1
    const/4 v7, 0x0

    goto/16 :goto_266

    :cond_3c4
    const/4 v7, 0x0

    goto/16 :goto_2e0

    :cond_3c7
    const/4 v1, 0x0

    goto/16 :goto_2f4

    :cond_3ca
    const/4 v7, 0x0

    goto/16 :goto_319

    :cond_3cd
    const/4 v7, 0x0

    goto/16 :goto_32f
.end method
