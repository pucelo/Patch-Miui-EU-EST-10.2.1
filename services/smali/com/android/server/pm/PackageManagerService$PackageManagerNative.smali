.class Lcom/android/server/pm/PackageManagerService$PackageManagerNative;
.super Landroid/content/pm/IPackageManagerNative$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerNative"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageManagerNative$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageManagerNative;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageManagerService;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    return-object v2

    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_28

    const-string/jumbo v3, "preload"

    return-object v3

    :cond_28
    const-string/jumbo v3, ""

    return-object v3
.end method

.method public getNamesForUids([I)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/PackageManagerService;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_17

    aget-object v2, v1, v0

    if-nez v2, :cond_14

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_17
    return-object v1
.end method

.method public getVersionCodeForPackage(Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerNative;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_16

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    return v3

    :catch_15
    move-exception v1

    :cond_16
    return v5
.end method
