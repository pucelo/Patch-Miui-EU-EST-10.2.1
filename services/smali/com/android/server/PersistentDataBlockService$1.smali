.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get1(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    :cond_18
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 8

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    :try_start_4
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_2b

    :try_start_19
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_3a
    .catchall {:try_start_19 .. :try_end_20} :catchall_49

    :try_start_20
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3, v2}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_37

    move-result v3

    :try_start_26
    monitor-exit v4
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_3a
    .catchall {:try_start_26 .. :try_end_27} :catchall_49

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v3

    :catch_2b
    move-exception v0

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "partition not available"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v4

    throw v3
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3a} :catch_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_49

    :catch_3a
    move-exception v1

    :try_start_3b
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "error reading data block size"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_49

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v6

    :catchall_49
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method public getFlashLockState()I
    .registers 3

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;)V

    const-string/jumbo v1, "ro.boot.flash.locked"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    return v1

    :cond_17
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    return v1

    :cond_22
    const/4 v1, -0x1

    return v1
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap9(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap1(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public hasFrpCredentialHandle()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get3(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public read()[B
    .registers 12

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-wrap2(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_16

    new-array v6, v8, [B

    return-object v6

    :cond_16
    :try_start_16
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_42

    :try_start_2b
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_32} :catch_ae
    .catchall {:try_start_2b .. :try_end_32} :catchall_c9

    :try_start_32
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6, v3}, Lcom/android/server/PersistentDataBlockService;->-wrap3(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v5

    if-nez v5, :cond_5a

    const/4 v6, 0x0

    new-array v6, v6, [B
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_ab

    :try_start_3d
    monitor-exit v7
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3e} :catch_ae
    .catchall {:try_start_3d .. :try_end_3e} :catchall_c9

    :try_start_3e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4e

    :goto_41
    return-object v6

    :catch_42
    move-exception v1

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "partition not available?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10

    :catch_4e
    move-exception v2

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "failed to close OutputStream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :cond_5a
    :try_start_5a
    new-array v0, v5, [B

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    move-result v4

    if-ge v4, v5, :cond_9a

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to read entire data block. bytes read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_89
    .catchall {:try_start_5a .. :try_end_89} :catchall_ab

    :try_start_89
    monitor-exit v7
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8a} :catch_ae
    .catchall {:try_start_89 .. :try_end_8a} :catchall_c9

    :try_start_8a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    :goto_8d
    return-object v10

    :catch_8e
    move-exception v2

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_9a
    :try_start_9a
    monitor-exit v7
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9b} :catch_ae
    .catchall {:try_start_9a .. :try_end_9b} :catchall_c9

    :try_start_9b
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_9f

    :goto_9e
    return-object v0

    :catch_9f
    move-exception v2

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :catchall_ab
    move-exception v6

    :try_start_ac
    monitor-exit v7

    throw v6
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_ae} :catch_ae
    .catchall {:try_start_ac .. :try_end_ae} :catchall_c9

    :catch_ae
    move-exception v2

    :try_start_af
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to read data"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_af .. :try_end_b9} :catchall_c9

    :try_start_b9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    :goto_bc
    return-object v10

    :catch_bd
    move-exception v2

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    :catchall_c9
    move-exception v6

    :try_start_ca
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_ce

    :goto_cd
    throw v6

    :catch_ce
    move-exception v2

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "failed to close OutputStream"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap10(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap8(Lcom/android/server/PersistentDataBlockService;)V

    if-eqz p1, :cond_23

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap12(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-wrap12(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    :cond_23
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_2a
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->-wrap7(Lcom/android/server/PersistentDataBlockService;Z)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_36

    monitor-exit v1

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public wipe()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-wrap10(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_c
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/PersistentDataBlockService;->-wrap4(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_26

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "failed to wipe persistent partition"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_37

    :goto_24
    monitor-exit v2

    return-void

    :cond_26
    :try_start_26
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/server/PersistentDataBlockService;->-set0(Lcom/android/server/PersistentDataBlockService;Z)Z

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "persistent partition now wiped and unwritable"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_37

    goto :goto_24

    :catchall_37
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write([B)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v10, -0x1

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/PersistentDataBlockService;->-wrap11(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-wrap5(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    array-length v7, p1

    int-to-long v8, v7

    cmp-long v7, v8, v4

    if-lez v7, :cond_19

    neg-long v8, v4

    long-to-int v7, v8

    return v7

    :cond_19
    :try_start_19
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v9}, Lcom/android/server/PersistentDataBlockService;->-get2(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2e} :catch_56

    array-length v7, p1

    add-int/lit8 v7, v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const v7, 0x19901873

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v7, p1

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get5(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_49
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-get4(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v7

    if-nez v7, :cond_62

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_99

    monitor-exit v8

    return v10

    :catch_56
    move-exception v1

    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "partition not available?"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10

    :cond_62
    const/16 v7, 0x20

    :try_start_64
    new-array v0, v7, [B

    const/4 v7, 0x0

    const/16 v9, 0x20

    invoke-virtual {v6, v0, v7, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_76} :catch_84
    .catchall {:try_start_64 .. :try_end_76} :catchall_94

    :try_start_76
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->-wrap0(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v7

    if-eqz v7, :cond_9c

    array-length v7, p1
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_99

    monitor-exit v8

    return v7

    :catch_84
    move-exception v2

    :try_start_85
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "failed writing to the persistent data block"

    invoke-static {v7, v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_94

    :try_start_8f
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_99

    monitor-exit v8

    return v10

    :catchall_94
    move-exception v7

    :try_start_95
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_99

    :catchall_99
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_9c
    monitor-exit v8

    return v10
.end method
