.class Lcom/android/server/pm/PackageManagerService$11;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$callingUid:I

.field final synthetic val$canViewInstantApps:Z

.field final synthetic val$deleteAllUsers:Z

.field final synthetic val$deleteFlags:I

.field final synthetic val$internalPackageName:Ljava/lang/String;

.field final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I

.field final synthetic val$users:[I

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;IZZIII[ILandroid/content/pm/IPackageDeleteObserver2;Ljava/lang/String;)V
    .registers 12

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11;->val$internalPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$11;->val$callingUid:I

    iput-boolean p4, p0, Lcom/android/server/pm/PackageManagerService$11;->val$canViewInstantApps:Z

    iput-boolean p5, p0, Lcom/android/server/pm/PackageManagerService$11;->val$deleteAllUsers:Z

    iput p6, p0, Lcom/android/server/pm/PackageManagerService$11;->val$versionCode:I

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$11;->val$deleteFlags:I

    iput-object p9, p0, Lcom/android/server/pm/PackageManagerService$11;->val$users:[I

    iput-object p10, p0, Lcom/android/server/pm/PackageManagerService$11;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v9, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v9, v9, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$11;->val$internalPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x1

    if-eqz v3, :cond_26

    iget v9, p0, Lcom/android/server/pm/PackageManagerService$11;->val$callingUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v6

    if-eqz v6, :cond_52

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$11;->val$canViewInstantApps:Z

    :cond_26
    :goto_26
    if-eqz v1, :cond_bd

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerService$11;->val$deleteAllUsers:Z

    if-nez v9, :cond_54

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$11;->val$internalPackageName:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$11;->val$versionCode:I

    iget v12, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iget v13, p0, Lcom/android/server/pm/PackageManagerService$11;->val$deleteFlags:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v5

    :goto_3a
    :try_start_3a
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$11;->val$observer:Landroid/content/pm/IPackageDeleteObserver2;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v5, v11}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_42} :catch_c0

    :goto_42
    move v4, v5

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$11$1;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$11;->val$packageName:Ljava/lang/String;

    invoke-direct {v10, p0, v11, v4}, Lcom/android/server/pm/PackageManagerService$11$1;-><init>(Lcom/android/server/pm/PackageManagerService$11;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_52
    const/4 v1, 0x1

    goto :goto_26

    :cond_54
    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$11;->val$internalPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/pm/PackageManagerService$11;->val$users:[I

    invoke-static {v9, v10, v11}, Lcom/android/server/pm/PackageManagerService;->-wrap16(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;[I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v9

    if-eqz v9, :cond_73

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$11;->val$internalPackageName:Ljava/lang/String;

    iget v11, p0, Lcom/android/server/pm/PackageManagerService$11;->val$versionCode:I

    iget v12, p0, Lcom/android/server/pm/PackageManagerService$11;->val$userId:I

    iget v13, p0, Lcom/android/server/pm/PackageManagerService$11;->val$deleteFlags:I

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v5

    goto :goto_3a

    :cond_73
    iget v9, p0, Lcom/android/server/pm/PackageManagerService$11;->val$deleteFlags:I

    and-int/lit8 v7, v9, -0x3

    iget-object v10, p0, Lcom/android/server/pm/PackageManagerService$11;->val$users:[I

    const/4 v9, 0x0

    array-length v11, v10

    :goto_7b
    if-ge v9, v11, :cond_ba

    aget v8, v10, v9

    invoke-static {v0, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v12

    if-nez v12, :cond_b7

    iget-object v12, p0, Lcom/android/server/pm/PackageManagerService$11;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, p0, Lcom/android/server/pm/PackageManagerService$11;->val$internalPackageName:Ljava/lang/String;

    iget v14, p0, Lcom/android/server/pm/PackageManagerService$11;->val$versionCode:I

    invoke-virtual {v12, v13, v14, v8, v7}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;III)I

    move-result v5

    const/4 v12, 0x1

    if-eq v5, v12, :cond_b7

    const-string/jumbo v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Package delete failed for user "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", returnCode "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    add-int/lit8 v9, v9, 0x1

    goto :goto_7b

    :cond_ba
    const/4 v5, -0x4

    goto/16 :goto_3a

    :cond_bd
    const/4 v5, -0x1

    goto/16 :goto_3a

    :catch_c0
    move-exception v2

    const-string/jumbo v9, "PackageManager"

    const-string/jumbo v10, "Observer no longer exists."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42
.end method
