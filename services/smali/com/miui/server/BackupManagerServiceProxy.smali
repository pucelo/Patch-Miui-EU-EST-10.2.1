.class Lcom/miui/server/BackupManagerServiceProxy;
.super Ljava/lang/Object;
.source "BackupManagerServiceProxy.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BackupManagerServiceProxy"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fullBackup(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;Z)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    move-object v1, p0

    move v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v3

    move-object v10, p1

    invoke-interface/range {v0 .. v10}, Landroid/app/backup/IBackupManager;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    return-void
.end method

.method static fullRestore(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p0}, Landroid/app/backup/IBackupManager;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public static getPackageSizeInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V
    .registers 14

    const-string/jumbo v7, "storagestats"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/StorageStatsManager;

    const/4 v7, 0x0

    :try_start_a
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v6

    new-instance v3, Landroid/content/pm/PackageStats;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, p2, v7}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v6}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v8

    iput-wide v8, v3, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_3e

    const/4 v7, 0x1

    :try_start_38
    invoke-interface {p3, v3, v7}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3e

    :goto_3b
    return-void

    :catch_3c
    move-exception v2

    goto :goto_3b

    :catch_3e
    move-exception v1

    const-string/jumbo v7, "BackupManagerServiceProxy"

    const-string/jumbo v8, "getPackageSizeInfo error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_48
    new-instance v3, Landroid/content/pm/PackageStats;

    const/4 v7, 0x0

    invoke-direct {v3, p2, v7}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x0

    invoke-interface {p3, v3, v7}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_52} :catch_53

    goto :goto_3b

    :catch_53
    move-exception v2

    goto :goto_3b
.end method
