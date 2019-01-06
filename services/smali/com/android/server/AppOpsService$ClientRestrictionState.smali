.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    return-void
.end method

.method private isDefault([Z)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_9

    return v4

    :cond_9
    array-length v3, p1

    move v1, v2

    :goto_b
    if-ge v1, v3, :cond_15

    aget-boolean v0, p1, v1

    if-eqz v0, :cond_12

    return v2

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    return v4
.end method


# virtual methods
.method public binderDied()V
    .registers 10

    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v6}, Lcom/android/server/AppOpsService;->-get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_45

    if-nez v6, :cond_14

    monitor-exit v7

    return-void

    :cond_14
    :try_start_14
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v5, :cond_40

    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    array-length v3, v4

    const/4 v2, 0x0

    :goto_27
    if-ge v2, v3, :cond_3d

    aget-boolean v6, v4, v2

    if-eqz v6, :cond_3a

    move v0, v2

    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/-$Lambda$pxHDwRy_8WGgaOZHQ9e3tJlXPqU;

    invoke-direct {v8, v0, p0}, Lcom/android/server/-$Lambda$pxHDwRy_8WGgaOZHQ9e3tJlXPqU;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_40
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_43
    .catchall {:try_start_14 .. :try_end_43} :catchall_45

    monitor-exit v7

    return-void

    :catchall_45
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v2, :cond_7

    return v3

    :cond_7
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    if-nez v1, :cond_12

    return v3

    :cond_12
    aget-boolean v2, v1, p1

    if-nez v2, :cond_17

    return v3

    :cond_17
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v2, :cond_1c

    return v4

    :cond_1c
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_27

    return v4

    :cond_27
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public isDefault()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method synthetic lambda$-com_android_server_AppOpsService$ClientRestrictionState_117209(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->-wrap0(Lcom/android/server/AppOpsService;I)V

    return-void
.end method

.method public removeUser(I)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_14

    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    :cond_14
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_27

    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    :cond_27
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .registers 16

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v8, :cond_10

    if-eqz p2, :cond_10

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    :cond_10
    const/4 v8, -0x1

    if-ne p4, v8, :cond_39

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v8, v8, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [I

    const/4 v1, 0x0

    :goto_26
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3e

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    aput v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_39
    const/4 v8, 0x1

    new-array v7, v8, [I

    aput p4, v7, v10

    :cond_3e
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v8, :cond_b8

    array-length v4, v7

    const/4 v1, 0x0

    :goto_44
    if-ge v1, v4, :cond_b8

    aget v5, v7, v1

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Z

    if-nez v6, :cond_5d

    if-eqz p2, :cond_5d

    const/16 v8, 0x48

    new-array v6, v8, [Z

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5d
    if-eqz v6, :cond_74

    aget-boolean v8, v6, p1

    if-eq v8, p2, :cond_74

    aput-boolean p2, v6, p1

    if-nez p2, :cond_73

    invoke-direct {p0, v6}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v8

    if-eqz v8, :cond_73

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    const/4 v6, 0x0

    :cond_73
    const/4 v0, 0x1

    :cond_74
    if-eqz v6, :cond_af

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v8, :cond_89

    xor-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_89

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    :cond_89
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v8, :cond_af

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    invoke-static {p3, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_af

    if-eqz v3, :cond_b2

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_ae

    iput-object v9, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    :cond_ae
    :goto_ae
    const/4 v0, 0x1

    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_b2
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_ae

    :cond_b8
    return v0
.end method
