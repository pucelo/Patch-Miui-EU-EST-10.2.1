.class public Lcom/android/server/notification/ZenModeHelperInjector;
.super Ljava/lang/Object;
.source "ZenModeHelperInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMiuiRestrictions(Lcom/android/server/notification/ZenModeHelper;Landroid/app/AppOpsManager;Landroid/content/Context;)V
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v7, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v7, :cond_7

    return-void

    :cond_7
    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v7, "com.android.cellbroadcastreceiver"

    aput-object v7, v3, v8

    const/4 v7, 0x4

    new-array v4, v7, [Ljava/lang/String;

    const-string/jumbo v7, "com.android.systemui"

    aput-object v7, v4, v8

    const-string/jumbo v7, "android"

    aput-object v7, v4, v9

    const-string/jumbo v7, "com.android.cellbroadcastreceiver"

    const/4 v8, 0x2

    aput-object v7, v4, v8

    const-string/jumbo v7, "com.android.server.telecom"

    const/4 v8, 0x3

    aput-object v7, v4, v8

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    const/4 v1, 0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    packed-switch v6, :pswitch_data_54

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_37
    if-eqz v5, :cond_50

    move-object v7, v4

    :goto_3a
    const/4 v8, 0x6

    invoke-static {v1, v8, p1, v7}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    if-eqz v5, :cond_52

    :goto_40
    const/4 v7, 0x5

    invoke-static {v0, v7, p1, v4}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRestriction(ZILandroid/app/AppOpsManager;[Ljava/lang/String;)V

    return-void

    :pswitch_45
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-boolean v7, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-nez v7, :cond_4e

    iget-boolean v5, v2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    goto :goto_37

    :cond_4e
    const/4 v5, 0x1

    goto :goto_37

    :cond_50
    move-object v7, v3

    goto :goto_3a

    :cond_52
    move-object v4, v3

    goto :goto_40

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_45
    .end packed-switch
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

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_20

    :cond_8
    :goto_8
    return v0

    :pswitch_9
    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :pswitch_11
    if-eqz v1, :cond_8

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    invoke-static {p1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v0, 0x1

    goto :goto_8

    :cond_1e
    const/4 v0, 0x0

    goto :goto_8

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method static applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;III)I
    .registers 9

    const/4 v3, 0x4

    sget-boolean v2, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v2, :cond_a

    invoke-static {p0, p1, p3}, Lcom/android/server/notification/ZenModeHelperInjector;->applyRingerModeToZen(Lcom/android/server/notification/ZenModeHelper;Landroid/content/Context;I)I

    move-result v2

    return v2

    :cond_a
    if-eq p3, p2, :cond_15

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v1

    packed-switch p3, :pswitch_data_28

    :cond_14
    :goto_14
    return p4

    :cond_15
    const/4 v0, 0x0

    goto :goto_d

    :pswitch_17
    if-eqz v0, :cond_14

    if-nez v1, :cond_1d

    const/4 p4, 0x4

    goto :goto_14

    :cond_1d
    if-ne v3, v1, :cond_14

    const/4 p4, -0x1

    goto :goto_14

    :pswitch_21
    if-eqz v0, :cond_14

    if-ne v1, v3, :cond_14

    const/4 p4, 0x0

    goto :goto_14

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_21
    .end packed-switch
.end method

.method static getOutRingerMode(IIII)I
    .registers 5

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_5

    return p3

    :cond_5
    const/4 v0, -0x1

    if-ne p0, v0, :cond_9

    move p0, p1

    :cond_9
    const/4 v0, 0x4

    if-ne p0, v0, :cond_d

    :goto_c
    return p2

    :cond_d
    move p2, p3

    goto :goto_c
.end method

.method static miuiComputeZenMode(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;)I
    .registers 7

    const/4 v3, 0x0

    monitor-enter p1

    if-nez p1, :cond_6

    monitor-exit p1

    return v3

    :cond_6
    :try_start_6
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "conditionChanged"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "setNotificationPolicy"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "updateAutomaticZenRule"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "onSystemReady"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "readXml"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "init"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5d

    const-string/jumbo v3, "cleanUpZenRules"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5d

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v3, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_9b

    monitor-exit p1

    return v3

    :cond_5d
    :try_start_5d
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-nez v3, :cond_94

    const/4 v2, 0x0

    :goto_62
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6c
    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v3

    if-eqz v3, :cond_6c

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelperInjector;->zenSeverity(I)I

    move-result v3

    invoke-static {v2}, Lcom/android/server/notification/ZenModeHelperInjector;->zenSeverity(I)I

    move-result v4

    if-gt v3, v4, :cond_91

    iget v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6c

    if-nez v2, :cond_6c

    :cond_91
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    goto :goto_6c

    :cond_94
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v2, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I
    :try_end_98
    .catchall {:try_start_5d .. :try_end_98} :catchall_9b

    goto :goto_62

    :cond_99
    monitor-exit p1

    return v2

    :catchall_9b
    move-exception v3

    monitor-exit p1

    throw v3
.end method

.method private static zenSeverity(I)I
    .registers 2

    packed-switch p0, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x2

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method
