.class Landroid/app/backup/BackupAgent$BackupServiceBinder;
.super Landroid/app/IBackupAgent$Stub;
.source "BackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupServiceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupServiceBinder"


# instance fields
.field final synthetic this$0:Landroid/app/backup/BackupAgent;


# direct methods
.method private constructor <init>(Landroid/app/backup/BackupAgent;)V
    .registers 2

    iput-object p1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-direct {p0}, Landroid/app/IBackupAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/backup/BackupAgent;Landroid/app/backup/BackupAgent$BackupServiceBinder;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/backup/BackupAgent$BackupServiceBinder;-><init>(Landroid/app/backup/BackupAgent;)V

    return-void
.end method


# virtual methods
.method public doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    new-instance v5, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    move-wide/from16 v0, p4

    invoke-direct {v5, v8, v0, v1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;J)V

    :try_start_f
    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8, p1, v5, p3}, Landroid/app/backup/BackupAgent;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_8e
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_14} :catch_3b
    .catchall {:try_start_f .. :try_end_14} :catchall_68

    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v8}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v8, 0x0

    :try_start_1e
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v1, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_25} :catch_39

    :goto_25
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    if-eq v8, v9, :cond_38

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_38
    return-void

    :catch_39
    move-exception v2

    goto :goto_25

    :catch_3b
    move-exception v4

    :try_start_3c
    const-string/jumbo v8, "BackupServiceBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onBackup ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") threw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v4
    :try_end_68
    .catchall {:try_start_3c .. :try_end_68} :catchall_68

    :catchall_68
    move-exception v8

    iget-object v9, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v9}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v10, 0x0

    :try_start_73
    move-object/from16 v0, p7

    move/from16 v1, p6

    invoke-interface {v0, v1, v10, v11}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_7a} :catch_c0

    :goto_7a
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    if-eq v9, v10, :cond_8d

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_8d
    throw v8

    :catch_8e
    move-exception v3

    :try_start_8f
    const-string/jumbo v8, "BackupServiceBinder"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onBackup ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v10}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") threw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_c0
    .catchall {:try_start_8f .. :try_end_c0} :catchall_68

    :catch_c0
    move-exception v2

    goto :goto_7a
.end method

.method public doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;)V
    .registers 20

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v10}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    :try_start_9
    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    new-instance v11, Landroid/app/backup/FullBackupDataOutput;

    move-wide/from16 v0, p2

    invoke-direct {v11, p1, v0, v1}, Landroid/app/backup/FullBackupDataOutput;-><init>(Landroid/os/ParcelFileDescriptor;J)V

    invoke-virtual {v10, v11}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_15} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_15} :catch_50
    .catchall {:try_start_9 .. :try_end_15} :catchall_7d

    iget-object v10, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v10}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    :try_start_1a
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v10, 0x4

    new-array v2, v10, [B

    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_29} :catch_43

    :goto_29
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v10, 0x0

    :try_start_2e
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v1, v10, v11}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_35} :catch_4e

    :goto_35
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    if-eq v10, v11, :cond_42

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_42
    return-void

    :catch_43
    move-exception v4

    const-string/jumbo v10, "BackupServiceBinder"

    const-string/jumbo v11, "Unable to finalize backup stream!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :catch_4e
    move-exception v3

    goto :goto_35

    :catch_50
    move-exception v6

    :try_start_51
    const-string/jumbo v10, "BackupServiceBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onFullBackup ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v12}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") threw"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v6
    :try_end_7d
    .catchall {:try_start_51 .. :try_end_7d} :catchall_7d

    :catchall_7d
    move-exception v10

    iget-object v11, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v11}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    :try_start_83
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v11, 0x4

    new-array v2, v11, [B

    invoke-virtual {v7, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_92} :catch_de

    :goto_92
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v12, 0x0

    :try_start_97
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-interface {v0, v1, v12, v13}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9e} :catch_e9

    :goto_9e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    if-eq v11, v12, :cond_ab

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_ab
    throw v10

    :catch_ac
    move-exception v5

    :try_start_ad
    const-string/jumbo v10, "BackupServiceBinder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onFullBackup ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v12}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") threw"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
    :try_end_de
    .catchall {:try_start_ad .. :try_end_de} :catchall_7d

    :catch_de
    move-exception v4

    const-string/jumbo v11, "BackupServiceBinder"

    const-string/jumbo v12, "Unable to finalize backup stream!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :catch_e9
    move-exception v3

    goto :goto_9e
.end method

.method public doMeasureFullBackup(JILandroid/app/backup/IBackupManager;)V
    .registers 16

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    new-instance v3, Landroid/app/backup/FullBackupDataOutput;

    invoke-direct {v3, p1, p2}, Landroid/app/backup/FullBackupDataOutput;-><init>(J)V

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    :try_start_e
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6, v3}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_57
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_1e
    .catchall {:try_start_e .. :try_end_13} :catchall_4b

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_16
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v6

    invoke-interface {p4, p3, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_8b

    :goto_1d
    return-void

    :catch_1e
    move-exception v2

    :try_start_1f
    const-string/jumbo v6, "BackupServiceBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFullBackup[M] ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") threw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v2
    :try_end_4b
    .catchall {:try_start_1f .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :try_start_4f
    invoke-virtual {v3}, Landroid/app/backup/FullBackupDataOutput;->getSize()J

    move-result-wide v8

    invoke-interface {p4, p3, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_56} :catch_89

    :goto_56
    throw v6

    :catch_57
    move-exception v1

    :try_start_58
    const-string/jumbo v6, "BackupServiceBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFullBackup[M] ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") threw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_89
    .catchall {:try_start_58 .. :try_end_89} :catchall_4b

    :catch_89
    move-exception v0

    goto :goto_56

    :catch_8b
    move-exception v0

    goto :goto_1d
.end method

.method public doQuotaExceeded(JJ)V
    .registers 12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/backup/BackupAgent;->onQuotaExceeded(JJ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_12
    .catchall {:try_start_4 .. :try_end_9} :catchall_3f

    iget-object v1, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v1}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_12
    move-exception v0

    :try_start_13
    const-string/jumbo v1, "BackupServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onQuotaExceeded("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") threw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
    :try_end_3f
    .catchall {:try_start_13 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception v1

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v6}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_12
    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6, v3, p2, p3}, Landroid/app/backup/BackupAgent;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_83
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_17} :catch_37
    .catchall {:try_start_12 .. :try_end_17} :catchall_64

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v6, 0x0

    :try_start_21
    invoke-interface {p5, p4, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_35

    :goto_24
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    if-eq v6, v7, :cond_34

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_34
    return-void

    :catch_35
    move-exception v0

    goto :goto_24

    :catch_37
    move-exception v2

    :try_start_38
    const-string/jumbo v6, "BackupServiceBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onRestore ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") threw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v2
    :try_end_64
    .catchall {:try_start_38 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v6

    iget-object v7, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v7}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v8, 0x0

    :try_start_6f
    invoke-interface {p5, p4, v8, v9}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_72} :catch_b5

    :goto_72
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-eq v7, v8, :cond_82

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_82
    throw v6

    :catch_83
    move-exception v1

    :try_start_84
    const-string/jumbo v6, "BackupServiceBinder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onRestore ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v8}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") threw"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_b5
    .catchall {:try_start_84 .. :try_end_b5} :catchall_64

    :catch_b5
    move-exception v0

    goto :goto_72
.end method

.method public doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_19} :catch_43
    .catchall {:try_start_4 .. :try_end_19} :catchall_77

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v3}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v3}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v4, 0x0

    :try_start_2c
    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-interface {v0, v1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_33} :catch_41

    :goto_33
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v3, v4, :cond_40

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_40
    return-void

    :catch_41
    move-exception v2

    goto :goto_33

    :catch_43
    move-exception v14

    :try_start_44
    const-string/jumbo v3, "BackupServiceBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onRestoreFile ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v5}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") threw"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_77
    .catchall {:try_start_44 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->reloadSharedPreferences()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v4, 0x0

    :try_start_8b
    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-interface {v0, v1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_92} :catch_a0

    :goto_92
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-eq v4, v5, :cond_9f

    invoke-static/range {p1 .. p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_9f
    throw v3

    :catch_a0
    move-exception v2

    goto :goto_92
.end method

.method public doRestoreFinished(ILandroid/app/backup/IBackupManager;)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v4}, Landroid/app/backup/BackupAgent;->onRestoreFinished()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_19
    .catchall {:try_start_4 .. :try_end_9} :catchall_46

    iget-object v4, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v4}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v4, 0x0

    :try_start_13
    invoke-interface {p2, p1, v4, v5}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v0

    goto :goto_16

    :catch_19
    move-exception v1

    :try_start_1a
    const-string/jumbo v4, "BackupServiceBinder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestoreFinished ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v6}, Landroid/app/backup/BackupAgent;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") threw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1
    :try_end_46
    .catchall {:try_start_1a .. :try_end_46} :catchall_46

    :catchall_46
    move-exception v4

    iget-object v5, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-static {v5}, Landroid/app/backup/BackupAgent;->-wrap0(Landroid/app/backup/BackupAgent;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-wide/16 v6, 0x0

    :try_start_51
    invoke-interface {p2, p1, v6, v7}, Landroid/app/backup/IBackupManager;->opComplete(IJ)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_54} :catch_55

    :goto_54
    throw v4

    :catch_55
    move-exception v0

    goto :goto_54
.end method

.method public fail(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Landroid/app/backup/BackupAgent$BackupServiceBinder;->this$0:Landroid/app/backup/BackupAgent;

    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/app/backup/BackupAgent$FailRunnable;

    invoke-direct {v1, p1}, Landroid/app/backup/BackupAgent$FailRunnable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
