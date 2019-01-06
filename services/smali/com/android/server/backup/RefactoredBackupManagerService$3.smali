.class Lcom/android/server/backup/RefactoredBackupManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "RefactoredBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService$3_49338(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/TransportManager;->onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService$3_52086(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/TransportManager;->onPackageAdded(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_backup_RefactoredBackupManagerService$3_53299(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

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

    if-eqz v19, :cond_94

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

    if-eqz v7, :cond_76

    const-string/jumbo v19, "android.intent.extra.changed_component_name_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v19

    new-instance v20, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v15, v8}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$2;-><init>(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_76
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

    :cond_8c
    :goto_8c
    if-eqz v14, :cond_93

    array-length v0, v14

    move/from16 v19, v0

    if-nez v19, :cond_c4

    :cond_93
    return-void

    :cond_94
    const-string/jumbo v19, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_ac

    const/4 v5, 0x1

    const-string/jumbo v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    goto :goto_8c

    :cond_ac
    const-string/jumbo v19, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8c

    const/4 v5, 0x0

    const-string/jumbo v19, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    goto :goto_8c

    :cond_c4
    const-string/jumbo v19, "android.intent.extra.UID"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    if-eqz v5, :cond_1bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get2(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v20

    monitor-enter v20

    if-eqz v16, :cond_e9

    :try_start_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap5(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;I)V

    :cond_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap2(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_dc .. :try_end_f4} :catchall_169

    monitor-exit v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v20, v19

    :goto_100
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1b2

    aget-object v11, v14, v20

    :try_start_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get7(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_16c

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v19

    if-eqz v19, :cond_16c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/server/backup/RefactoredBackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V

    :goto_146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v19

    new-instance v22, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;

    const/16 v23, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_164
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_108 .. :try_end_164} :catch_18d

    :goto_164
    add-int/lit8 v19, v20, 0x1

    move/from16 v20, v19

    goto :goto_100

    :catchall_169
    move-exception v19

    monitor-exit v20

    throw v19

    :cond_16c
    :try_start_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get9(Lcom/android/server/backup/RefactoredBackupManagerService;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_177
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16c .. :try_end_177} :catch_18d

    :try_start_177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap4(Lcom/android/server/backup/RefactoredBackupManagerService;Ljava/lang/String;)V
    :try_end_182
    .catchall {:try_start_177 .. :try_end_182} :catchall_1af

    :try_start_182
    monitor-exit v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap7(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    :try_end_18c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_182 .. :try_end_18c} :catch_18d

    goto :goto_146

    :catch_18d
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

    goto :goto_164

    :catchall_1af
    move-exception v19

    :try_start_1b0
    monitor-exit v22

    throw v19
    :try_end_1b2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b0 .. :try_end_1b2} :catch_18d

    :cond_1b2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "@pm@"

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/backup/RefactoredBackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    :cond_1be
    return-void

    :cond_1bf
    if-eqz v16, :cond_1eb

    :goto_1c1
    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    :goto_1c6
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1be

    aget-object v15, v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get1(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v21

    new-instance v22, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;

    const/16 v23, 0x3

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2, v15}, Lcom/android/server/backup/-$Lambda$UGPbw6RN8_4TeqlxQ94PEo_ieak$1;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1c6

    :cond_1eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get2(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/util/SparseArray;

    move-result-object v20

    monitor-enter v20

    :try_start_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/RefactoredBackupManagerService$3;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v14, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-wrap5(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;I)V
    :try_end_203
    .catchall {:try_start_1f6 .. :try_end_203} :catchall_205

    monitor-exit v20

    goto :goto_1c1

    :catchall_205
    move-exception v19

    monitor-exit v20

    throw v19
.end method
