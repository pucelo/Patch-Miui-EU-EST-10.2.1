.class public Lcom/android/server/pm/PackageManagerServicePermissionProxy;
.super Ljava/lang/Object;
.source "PackageManagerServicePermissionProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_9
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/SettingBase;

    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v1

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/BasePermission;)I
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_28

    monitor-exit v6

    return-void

    :catchall_28
    move-exception v5

    monitor-exit v6

    throw v5
.end method
