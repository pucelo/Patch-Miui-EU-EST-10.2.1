.class Lcom/android/server/VibratorServiceInjector$WorkerHandler;
.super Landroid/os/Handler;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_c0

    :goto_7
    return-void

    :pswitch_8
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get2()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;

    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->isValid:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->lastNotificationVibrationTime:J

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get5()Lcom/android/server/VibratorService;

    move-result-object v2

    iget v3, v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->uid:I

    iget-object v4, v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->pkg:Ljava/lang/String;

    iget-object v5, v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->effect:Landroid/os/VibrationEffect;

    iget v6, v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->usageHint:I

    iget-object v7, v10, Lcom/android/server/VibratorServiceInjector$NotificationVibrationInfo;->token:Landroid/os/IBinder;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_39
    .catchall {:try_start_d .. :try_end_37} :catchall_3e

    :goto_37
    monitor-exit v16

    goto :goto_7

    :catch_39
    move-exception v8

    :try_start_3a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_37

    :catchall_3e
    move-exception v2

    monitor-exit v16

    throw v2

    :pswitch_41
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/service/notification/StatusBarNotification;

    invoke-static {v13}, Lcom/android/server/VibratorServiceInjector$NotificationVibrationController;->-wrap1(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_7

    :pswitch_4b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    if-eqz v9, :cond_6d

    :try_start_60
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get0()Ljava/util/Set;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_60 .. :try_end_6b} :catchall_79

    :goto_6b
    monitor-exit v3

    goto :goto_7

    :cond_6d
    :try_start_6d
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get0()Ljava/util/Set;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_79

    goto :goto_6b

    :catchall_79
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_7c
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get1()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_81
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/VibratorServiceInjector$VibrationInfo;

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get3()Ljava/util/Map;

    move-result-object v2

    invoke-static {v15}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->-get0(Lcom/android/server/VibratorServiceInjector$VibrationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedList;

    if-nez v11, :cond_a7

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get3()Ljava/util/Map;

    move-result-object v2

    invoke-static {v15}, Lcom/android/server/VibratorServiceInjector$VibrationInfo;->-get0(Lcom/android/server/VibratorServiceInjector$VibrationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a7
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get4()I

    move-result v4

    if-le v2, v4, :cond_b4

    invoke-virtual {v11}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_b4
    invoke-virtual {v11, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_b7
    .catchall {:try_start_81 .. :try_end_b7} :catchall_b8

    goto :goto_6b

    :catchall_b8
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_bb
    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-wrap0()V

    goto/16 :goto_7

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_41
        :pswitch_4b
        :pswitch_7c
        :pswitch_bb
    .end packed-switch
.end method
