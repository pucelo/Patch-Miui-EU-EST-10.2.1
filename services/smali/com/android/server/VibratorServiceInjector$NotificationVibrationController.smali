.class Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;
.super Ljava/lang/Object;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationVibrationController"
.end annotation


# direct methods
.method static synthetic -wrap0(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;
    .registers 6

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->filterNotificationVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/service/notification/StatusBarNotification;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->onNotificationPost(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;
    .registers 11

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    instance-of v5, p0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v5, :cond_38

    move-object v3, p0

    check-cast v3, Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v2

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v0

    array-length v5, v2

    if-le v5, v9, :cond_38

    array-length v5, v0

    if-le v5, v9, :cond_38

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v1

    new-instance p0, Landroid/os/VibrationEffect$Waveform;

    new-array v5, v9, [J

    aget-wide v6, v2, v4

    aput-wide v6, v5, v4

    aget-wide v6, v2, v8

    aput-wide v6, v5, v8

    new-array v6, v9, [I

    aget v7, v0, v4

    aput v7, v6, v4

    aget v7, v0, v8

    aput v7, v6, v8

    if-le v1, v8, :cond_35

    move v1, v4

    :cond_35
    invoke-direct {p0, v5, v6, v1}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    :cond_38
    return-object p0
.end method

.method private static filterNotificationVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)Landroid/os/VibrationEffect;
    .registers 14

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_6
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get2()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;-><init>(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)V

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get2()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastVibrationTime:J

    invoke-static {v0}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->isNotificationVibrate(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)Z

    move-result v1

    if-eqz v1, :cond_52

    iget-boolean v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isTooOften:Z

    if-eqz v1, :cond_4e

    const-string/jumbo v1, "VibratorServiceInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'s notification vibrate too often, skip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_79

    monitor-exit v7

    return-object v8

    :cond_4e
    :try_start_4e
    invoke-static {p2}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->adjustVibrationEffect(Landroid/os/VibrationEffect;)Landroid/os/VibrationEffect;

    move-result-object p2

    :cond_52
    iget-boolean v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    if-eqz v1, :cond_5b

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z
    :try_end_59
    .catchall {:try_start_4e .. :try_end_59} :catchall_79

    monitor-exit v7

    return-object p2

    :cond_5b
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    :try_start_60
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->fillVibrationInfo(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    iget-object v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->pkg:Ljava/lang/String;

    iput-object v1, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v6, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get6()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v1

    const-wide/16 v2, 0x4b

    invoke-virtual {v1, v6, v2, v3}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_77
    .catchall {:try_start_60 .. :try_end_77} :catchall_79

    monitor-exit v7

    return-object v8

    :catchall_79
    move-exception v1

    monitor-exit v7

    throw v1
.end method

.method private static isNotificationVibrate(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)Z
    .registers 5

    iget-wide v0, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastVibrationTime:J

    iget-wide v2, p0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2bc

    cmp-long v0, v0, v2

    if-gez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static onNotificationPost(Landroid/service/notification/StatusBarNotification;)V
    .registers 11

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get2()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    if-nez v0, :cond_28

    new-instance v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;-><init>(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)V

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get2()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationTime:J

    iget-wide v6, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationVibrationTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-gtz v6, :cond_71

    :goto_38
    iput-boolean v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isTooOften:Z

    invoke-static {v0}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->isNotificationVibrate(Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-boolean v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isTooOften:Z

    if-eqz v1, :cond_6f

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get6()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->pkg:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->removeMessages(ILjava/lang/Object;)V

    const-string/jumbo v1, "VibratorServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\'s notification vibrate too often, skip"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_7 .. :try_end_6f} :catchall_73

    :cond_6f
    monitor-exit v5

    return-void

    :cond_71
    move v1, v4

    goto :goto_38

    :catchall_73
    move-exception v1

    monitor-exit v5

    throw v1
.end method
