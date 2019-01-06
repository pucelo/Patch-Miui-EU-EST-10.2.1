.class Lcom/android/server/backup/BackupManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_backup_BackupManagerService$3_84891(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-get6(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_BackupManagerService$3_87593(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-get6(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_BackupManagerService$3_88806(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->-get6(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 27

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const/4 v14, 0x0

    const-string/jumbo v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2e

    const-string/jumbo v19, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2e

    const-string/jumbo v19, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_96

    :cond_2e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    if-nez v18, :cond_35

    return-void

    :cond_35
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_45

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v15, v14, v19

    :cond_45
    const-string/jumbo v19, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    const-string/jumbo v19, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v15, v8}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_78
    const-string/jumbo v19, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v19, "android.intent.extra.REPLACING"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    :cond_8e
    :goto_8e
    if-eqz v14, :cond_95

    array-length v0, v14

    move/from16 v19, v0

    if-nez v19, :cond_c6

    :cond_95
    return-void

    :cond_96
    const-string/jumbo v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_ae

    const/4 v5, 0x1

    const-string/jumbo v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    goto :goto_8e

    :cond_ae
    const-string/jumbo v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8e

    const/4 v5, 0x0

    const-string/jumbo v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    goto :goto_8e

    :cond_c6
    const-string/jumbo v19, "android.intent.extra.UID"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    if-eqz v5, :cond_1d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20

    if-eqz v16, :cond_ed

    :try_start_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    :cond_ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_e0 .. :try_end_f8} :catchall_17d

    monitor-exit v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v20, v19

    :goto_104
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1c8

    aget-object v11, v14, v20

    :try_start_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->-wrap5(Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_180

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v19

    if-eqz v19, :cond_180

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    :goto_158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v19, v0

    new-instance v22, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_178
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10c .. :try_end_178} :catch_1a3

    :goto_178
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_104

    :catchall_17d
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_180
    :try_start_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22
    :try_end_18d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_180 .. :try_end_18d} :catch_1a3

    :try_start_18d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/server/backup/BackupManagerService;->dequeueFullBackupLocked(Ljava/lang/String;)V
    :try_end_198
    .catchall {:try_start_18d .. :try_end_198} :catchall_1c5

    :try_start_198
    monitor-exit v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-wrap25(Lcom/android/server/backup/BackupManagerService;)V
    :try_end_1a2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_198 .. :try_end_1a2} :catch_1a3

    goto :goto_158

    :catch_1a3
    move-exception v9

    const-string/jumbo v19, "BackupManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Can\'t resolve new app "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_178

    :catchall_1c5
    move-exception v19

    :try_start_1c6
    monitor-exit v22

    throw v19
    :try_end_1c8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1c6 .. :try_end_1c8} :catch_1a3

    :cond_1c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "@pm@"

    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->-wrap17(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)V

    :cond_1d4
    return-void

    :cond_1d5
    if-eqz v16, :cond_203

    :goto_1d7
    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    :goto_1dc
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1d4

    aget-object v15, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1dc

    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V
    :try_end_21d
    .catchall {:try_start_210 .. :try_end_21d} :catchall_21f

    monitor-exit v20

    goto :goto_1d7

    :catchall_21f
    move-exception v19

    monitor-exit v20

    throw v19
.end method
