.class public Landroid/app/ExtraNotificationManager;
.super Ljava/lang/Object;
.source "ExtraNotificationManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_11

    move v0, v1

    :goto_5
    const/16 v3, 0x1c

    invoke-virtual {p2, v3, p1, v0, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    if-eqz p0, :cond_13

    :goto_c
    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1, v1, p3}, Landroid/app/AppOpsManager;->setRestriction(III[Ljava/lang/String;)V

    return-void

    :cond_11
    move v0, v2

    goto :goto_5

    :cond_13
    move v1, v2

    goto :goto_c
.end method

.method public static enableVIPMode(Landroid/content/Context;ZI)V
    .registers 10

    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string/jumbo v2, "SilenceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableVIPMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v1

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iput-boolean v5, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez p1, :cond_38

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    const/4 v2, 0x2

    invoke-static {v6, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    :goto_34
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    return-void

    :cond_38
    invoke-static {v6, v5}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_34
.end method

.method public static getConditionId(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v2, :cond_a

    :goto_9
    return-object v1

    :cond_a
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    goto :goto_9
.end method

.method public static getRemainTime(Landroid/content/Context;)J
    .registers 6

    const-wide/16 v2, 0x0

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_f

    :goto_e
    return-wide v2

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_e
.end method

.method public static getZenMode(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    return v0
.end method

.method public static getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .registers 2

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public static isQuietModeEnable(Landroid/content/Context;I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_7

    return v2

    :cond_7
    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v0, 0x3e7

    :goto_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "quiet_mode_enable"

    invoke-static {v3, v4, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_1f

    :goto_1c
    return v1

    :cond_1d
    move v0, p1

    goto :goto_f

    :cond_1f
    move v1, v2

    goto :goto_1c
.end method

.method public static isRepeatedCallEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    return v0
.end method

.method public static isSilenceModeEnable(Landroid/content/Context;I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserCalling()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v0, 0x3e7

    :goto_9
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1

    :cond_11
    move v0, p1

    goto :goto_9
.end method

.method public static isVIPModeEnable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    return v0
.end method

.method public static setQuietMode(Landroid/content/Context;ZI)V
    .registers 9

    const/4 v1, 0x0

    const/16 v5, 0x3e7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v0

    if-eqz p1, :cond_25

    if-nez v0, :cond_10

    invoke-static {p0, v4, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_24
    return-void

    :cond_25
    if-ne v0, v4, :cond_2a

    invoke-static {p0, v3, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "quiet_mode_enable"

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_24
.end method

.method public static setRepeatedCallEnable(Landroid/content/Context;Z)V
    .registers 4

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    return-void
.end method

.method public static setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 6

    const-string/jumbo v0, "SilenceMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSilenceMode mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static setZenMode(Landroid/content/Context;I)V
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public static setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 14

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v2, :cond_f

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v3, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_in_silent"

    const/4 v4, -0x2

    invoke-static {v2, v3, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_8e

    const/4 v8, 0x1

    :goto_1e
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x4

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_41

    const/4 v2, 0x3

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_41

    if-ne p1, v6, :cond_41

    if-eqz v8, :cond_41

    const/4 p1, 0x2

    :cond_41
    if-nez p2, :cond_63

    invoke-static {p0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "forever"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/service/notification/Condition;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    move v7, v5

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    iget-object p2, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_63
    if-eqz p0, :cond_83

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "settings"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_83

    const-string/jumbo v2, "silence_DND"

    sget-object v3, Landroid/provider/MiuiSettings$SilenceMode;->MISTAT_RINGERMODE_LIST:[Ljava/lang/String;

    aget-object v3, v3, p1

    const-string/jumbo v4, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2, v3, v4, v6, v7}, Landroid/provider/MiuiSettings$SilenceMode;->reportRingerModeInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_83
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string/jumbo v3, "miui_manual"

    invoke-virtual {v2, p1, p2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void

    :cond_8e
    const/4 v8, 0x0

    goto :goto_1e
.end method

.method public static setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z
    .registers 8

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v2, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v3, :cond_36

    or-int/lit8 v2, v2, 0x2

    :goto_10
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v3, :cond_39

    or-int/lit8 v2, v2, 0x8

    :goto_16
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v3, :cond_3c

    or-int/lit8 v2, v2, 0x4

    :goto_1c
    iget-boolean v3, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eqz v3, :cond_3f

    or-int/lit8 v2, v2, 0x10

    :goto_22
    new-instance v1, Landroid/app/NotificationManager$Policy;

    iget v3, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v4, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v5, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    const/4 v3, 0x1

    return v3

    :cond_36
    and-int/lit8 v2, v2, -0x3

    goto :goto_10

    :cond_39
    and-int/lit8 v2, v2, -0x9

    goto :goto_16

    :cond_3c
    and-int/lit8 v2, v2, -0x5

    goto :goto_1c

    :cond_3f
    and-int/lit8 v2, v2, -0x11

    goto :goto_22
.end method

.method public static startCountDownSilenceMode(Landroid/content/Context;II)V
    .registers 5

    if-nez p2, :cond_7

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void

    :cond_7
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {p0, p2, v1}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    iget-object v1, v0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0, p1, v1}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void
.end method

.method public static updateRestriction(Landroid/content/Context;)V
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v8, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v8, :cond_7

    return-void

    :cond_7
    const-string/jumbo v8, "appops"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v8, "com.android.cellbroadcastreceiver"

    aput-object v8, v4, v9

    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v8, "com.android.systemui"

    aput-object v8, v5, v9

    const-string/jumbo v8, "android"

    aput-object v8, v5, v10

    const-string/jumbo v8, "com.android.cellbroadcastreceiver"

    const/4 v9, 0x2

    aput-object v8, v5, v9

    const-string/jumbo v8, "com.android.server.telecom"

    const/4 v9, 0x3

    aput-object v8, v5, v9

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenMode(Landroid/content/Context;)I

    move-result v7

    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v6, 0x0

    packed-switch v7, :pswitch_data_5e

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_40
    if-eqz v6, :cond_59

    move-object v8, v5

    :goto_43
    const/4 v9, 0x6

    invoke-static {v1, v9, v2, v8}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    if-eqz v6, :cond_5b

    :goto_49
    const/4 v8, 0x5

    invoke-static {v0, v8, v2, v5}, Landroid/app/ExtraNotificationManager;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    return-void

    :pswitch_4e
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v8, v3, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v8, :cond_57

    iget-boolean v6, v3, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    goto :goto_40

    :cond_57
    const/4 v6, 0x1

    goto :goto_40

    :cond_59
    move-object v8, v4

    goto :goto_43

    :cond_5b
    move-object v5, v4

    goto :goto_49

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4e
    .end packed-switch
.end method
