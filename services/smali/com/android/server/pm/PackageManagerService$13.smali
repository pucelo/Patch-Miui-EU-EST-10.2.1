.class Lcom/android/server/pm/PackageManagerService$13;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$filterApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$13;->val$filterApp:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v4, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$filterApp:Z

    if-nez v4, :cond_8c

    const/4 v2, 0x0

    :try_start_d
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    const-string/jumbo v7, "clearApplicationUserData"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1d} :catch_50
    .catchall {:try_start_d .. :try_end_1d} :catchall_61

    :try_start_1d
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    invoke-static {v4, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap8(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_4d

    move-result v3

    :try_start_27
    monitor-exit v6

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->-wrap29(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_37} :catch_50
    .catchall {:try_start_27 .. :try_end_37} :catchall_61

    :try_start_37
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$13;->val$userId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_5e

    :try_start_44
    monitor-exit v6
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_45} :catch_50
    .catchall {:try_start_44 .. :try_end_45} :catchall_61

    if-eqz v2, :cond_4a

    :try_start_47
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_63

    :cond_4a
    :goto_4a
    if-eqz v5, :cond_71

    throw v5

    :catchall_4d
    move-exception v4

    :try_start_4e
    monitor-exit v6

    throw v4
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_50} :catch_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_61

    :catch_50
    move-exception v4

    :try_start_51
    throw v4
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v5

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    :goto_56
    if-eqz v2, :cond_5b

    :try_start_58
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_5b} :catch_65

    :cond_5b
    :goto_5b
    if-eqz v5, :cond_70

    throw v5

    :catchall_5e
    move-exception v4

    :try_start_5f
    monitor-exit v6

    throw v4
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_61} :catch_50
    .catchall {:try_start_5f .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v4

    goto :goto_56

    :catch_63
    move-exception v5

    goto :goto_4a

    :catch_65
    move-exception v6

    if-nez v5, :cond_6a

    move-object v5, v6

    goto :goto_5b

    :cond_6a
    if-eq v5, v6, :cond_5b

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5b

    :cond_70
    throw v4

    :cond_71
    if-eqz v3, :cond_80

    const-class v4, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    if-eqz v0, :cond_80

    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    :cond_80
    :goto_80
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v4, :cond_8b

    :try_start_84
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$13;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$13;->val$packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_8b} :catch_8e

    :cond_8b
    :goto_8b
    return-void

    :cond_8c
    const/4 v3, 0x0

    goto :goto_80

    :catch_8e
    move-exception v1

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v5, "Observer no longer exists."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b
.end method
