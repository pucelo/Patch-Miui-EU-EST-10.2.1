.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_24e

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-wrap8(Lcom/android/server/StorageManagerService;)V

    goto :goto_9

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-wrap7(Lcom/android/server/StorageManagerService;)V

    goto :goto_9

    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-wrap1(Lcom/android/server/StorageManagerService;)Z

    move-result v17

    if-nez v17, :cond_51

    const-string/jumbo v17, "StorageManagerService"

    const-string/jumbo v18, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    const-wide/16 v18, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_51
    const-string/jumbo v17, "StorageManagerService"

    const-string/jumbo v18, "Running fstrim idle maintenance"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Lcom/android/server/StorageManagerService;->-set2(Lcom/android/server/StorageManagerService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-get7(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/server/StorageManagerService;->-get6(Lcom/android/server/StorageManagerService;)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/io/File;->setLastModified(J)Z
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7e} :catch_a3

    :goto_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-wrap3(Lcom/android/server/StorageManagerService;)Z

    move-result v17

    if-eqz v17, :cond_ae

    const/4 v8, 0x2

    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/server/StorageManagerService;->fstrim(I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_9

    :catch_a3
    move-exception v6

    const-string/jumbo v17, "StorageManagerService"

    const-string/jumbo v18, "Unable to record last fstrim!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    :cond_ae
    const/4 v8, 0x0

    goto :goto_8b

    :pswitch_b0
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/storage/IStorageShutdownObserver;

    const/4 v14, 0x0

    :try_start_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v17

    const-string/jumbo v18, "volume"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const-string/jumbo v20, "shutdown"

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_da
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_b7 .. :try_end_da} :catch_24b

    move-result v14

    :goto_db
    if-eqz v12, :cond_9

    if-eqz v14, :cond_eb

    const/16 v17, 0x0

    :goto_e1
    :try_start_e1
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_e6
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_e6} :catch_e8

    goto/16 :goto_9

    :catch_e8
    move-exception v9

    goto/16 :goto_9

    :cond_eb
    const/16 v17, -0x1

    goto :goto_e1

    :pswitch_ee
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-wrap0(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v17

    if-eqz v17, :cond_12d

    const-string/jumbo v17, "StorageManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Ignoring mount "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " due to policy"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_12d
    :try_start_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v17

    const-string/jumbo v18, "volume"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const-string/jumbo v20, "mount"

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-object v20, v19, v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    aput-object v20, v19, v21

    move-object/from16 v0, v16

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x3

    aput-object v20, v19, v21

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_172
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_12d .. :try_end_172} :catch_174

    goto/16 :goto_9

    :catch_174
    move-exception v10

    goto/16 :goto_9

    :pswitch_177
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/storage/VolumeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_18e
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/os/storage/StorageVolume;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v17, "StorageManagerService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Volume "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " broadcasting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    new-instance v11, Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v17, "android.os.storage.extra.STORAGE_VOLUME"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v17, 0x5000000

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v17

    invoke-virtual {v15}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_9

    :pswitch_20d
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v17

    sget-object v18, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v19, "android.permission.WRITE_MEDIA_STORAGE"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_22d
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Lcom/android/server/StorageManagerService;->-wrap6(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/server/StorageManagerService;->-wrap13(Lcom/android/server/StorageManagerService;)V

    goto/16 :goto_9

    :catch_24b
    move-exception v10

    goto/16 :goto_db

    :pswitch_data_24e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_14
        :pswitch_b0
        :pswitch_1e
        :pswitch_ee
        :pswitch_18e
        :pswitch_20d
        :pswitch_177
        :pswitch_22d
        :pswitch_240
    .end packed-switch
.end method
