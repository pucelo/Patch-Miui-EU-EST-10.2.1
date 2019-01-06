.class public Lcom/android/server/AppOpsServiceState;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsServiceState$Callback;,
        Lcom/android/server/AppOpsServiceState$UserState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final POWER_SAVE_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field private static final TAG:Ljava/lang/String; = "AppOpsServiceState"

.field private static sCtsIgnore:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultMode:I

.field private mGreaterThanL:Z

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mLastNotifyOp:I

.field private mLastNotifyUid:I

.field private mPowerSaving:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsServiceState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsServiceState;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsServiceState;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->startService(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/AppOpsServiceState;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.app.usage.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.usepermission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.netlegacy22.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.netlegacy22.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.provider.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.telephony2.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.writeexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.readexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.externalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.server.alertwindowapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.server.alertwindowappsdk25"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.app2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_16

    :goto_c
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private declared-synchronized getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;
    .registers 6

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsServiceState$UserState;
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_1d

    if-nez v0, :cond_1b

    if-nez p2, :cond_10

    monitor-exit p0

    return-object v2

    :cond_10
    :try_start_10
    new-instance v0, Lcom/android/server/AppOpsServiceState$UserState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsServiceState$UserState;-><init>(Lcom/android/server/AppOpsServiceState$UserState;)V

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private inMiuiAllowedBlackList(I)Z
    .registers 4

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_14

    :goto_4
    iget-boolean v1, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    if-eqz v1, :cond_11

    const/16 v1, 0x3e

    if-le p1, v1, :cond_11

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    :sswitch_12
    const/4 v0, 0x1

    goto :goto_4

    :sswitch_data_14
    .sparse-switch
        0x3 -> :sswitch_12
        0xb -> :sswitch_12
        0x1c -> :sswitch_12
    .end sparse-switch
.end method

.method private isSystemApp(IILjava/lang/String;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_b

    return v8

    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_f
    iget-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v4, :cond_19

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    :cond_19
    iget-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, p3, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_30

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_34
    .catchall {:try_start_f .. :try_end_28} :catchall_39

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_30

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v8

    :cond_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_33
    return v7

    :catch_34
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_39
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private startService(I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/AppOpsServiceState$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsServiceState$2;-><init>(Lcom/android/server/AppOpsServiceState;I)V

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updatePowerState()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "POWER_SAVE_MODE_OPEN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_14

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    return-void

    :cond_14
    move v0, v1

    goto :goto_11
.end method


# virtual methods
.method public allowedToMode(IILjava/lang/String;)I
    .registers 8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    if-nez v0, :cond_10

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eqz v1, :cond_10

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    if-eqz v0, :cond_1e

    const/16 v2, 0x2718

    if-ne p1, v2, :cond_1e

    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    return v2

    :cond_1e
    return v3
.end method

.method public askOperationLocked(IILjava/lang/String;)I
    .registers 10

    iget v1, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_13

    const/4 v3, 0x0

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    :cond_13
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v4, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v4, :cond_28

    :try_start_22
    iget-object v4, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v4, p2, p3, p1}, Lcom/android/internal/app/IOpsCallback;->askOperation(ILjava/lang/String;I)I
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-result v1

    :cond_28
    :goto_28
    return v1

    :catch_29
    move-exception v0

    goto :goto_28
.end method

.method public getSuggestMode(IILjava/lang/String;)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "is_pad"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e

    iput v1, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    :cond_e
    return-void
.end method

.method public isAppPermissionControlOpen(II)Z
    .registers 6

    sget-object v1, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    const/16 v1, 0x2718

    if-ne p1, v1, :cond_12

    :cond_10
    const/4 v1, 0x1

    return v1

    :cond_12
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/security/SecurityManager;->getAppPermissionControlOpen(I)Z

    move-result v0

    :cond_21
    return v0
.end method

.method public isCtsIgnore(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMiuiAllowed(IILjava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->inMiuiAllowedBlackList(I)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/16 v0, 0x2718

    if-ne p1, v0, :cond_13

    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->isSystemApp(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAppApplyOperation(ILjava/lang/String;IIZ)V
    .registers 14

    const/4 v1, 0x0

    if-nez p4, :cond_4

    return-void

    :cond_4
    sparse-switch p3, :sswitch_data_30

    return-void

    :sswitch_8
    iget v0, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyUid:I

    if-ne v0, p1, :cond_11

    iget v0, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyOp:I

    if-ne v0, p3, :cond_11

    return-void

    :cond_11
    iput p1, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyUid:I

    iput p3, p0, Lcom/android/server/AppOpsServiceState;->mLastNotifyOp:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v7

    if-eqz v7, :cond_2d

    iget-object v0, v7, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v0, :cond_2d

    :try_start_23
    iget-object v0, v7, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IOpsCallback;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2d} :catch_2e

    :cond_2d
    :goto_2d
    return-void

    :catch_2e
    move-exception v6

    goto :goto_2d

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_8
        0x4 -> :sswitch_8
        0x5 -> :sswitch_8
        0x6 -> :sswitch_8
        0x7 -> :sswitch_8
        0xa -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xe -> :sswitch_8
        0xf -> :sswitch_8
        0x14 -> :sswitch_8
        0x15 -> :sswitch_8
        0x16 -> :sswitch_8
        0x1a -> :sswitch_8
        0x1b -> :sswitch_8
        0x29 -> :sswitch_8
        0x2a -> :sswitch_8
        0x2715 -> :sswitch_8
        0x271a -> :sswitch_8
        0x271b -> :sswitch_8
        0x2721 -> :sswitch_8
    .end sparse-switch
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .registers 10

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    if-nez p1, :cond_15

    return v7

    :cond_15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v1

    if-nez v1, :cond_21

    return v7

    :cond_21
    iput-object p1, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    iget-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    invoke-virtual {v2}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    :cond_2c
    new-instance v2, Lcom/android/server/AppOpsServiceState$Callback;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/AppOpsServiceState$Callback;-><init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V

    iput-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized removeUser(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string/jumbo v1, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/AppOpsServiceState$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppOpsServiceState$1;-><init>(Lcom/android/server/AppOpsServiceState;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    return-void
.end method
