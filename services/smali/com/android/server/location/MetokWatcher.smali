.class public Lcom/android/server/location/MetokWatcher;
.super Ljava/lang/Object;
.source "MetokWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/MetokWatcher$1;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final TAG:Ljava/lang/String; = "MetokWatcher"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBoundComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    new-instance v1, Lcom/android/server/location/MetokWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/MetokWatcher$1;-><init>(Lcom/android/server/location/MetokWatcher;)V

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.metok"

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    return-void
.end method

.method private bindBestPackageLocked(Ljava/lang/String;Z)Z
    .registers 20

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    const v16, 0x10000080

    move/from16 v0, v16

    invoke-virtual {v14, v6, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    const/high16 v4, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v11, :cond_68

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2b
    :goto_2b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_68

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v14}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/high16 v13, -0x80000000

    const/4 v7, 0x0

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_62

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "serviceVersion"

    const/high16 v16, -0x80000000

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "serviceIsMultiuser"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    :cond_62
    if-le v13, v4, :cond_2b

    move v4, v13

    move-object v2, v5

    move v3, v7

    goto :goto_2b

    :cond_68
    if-nez v2, :cond_8f

    const-string/jumbo v14, "MetokWatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Odd, no component found for service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    const/4 v14, 0x0

    return v14

    :cond_8f
    if-eqz v3, :cond_b9

    const/4 v12, 0x0

    :goto_92
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-static {v2, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    if-ne v4, v14, :cond_c0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    if-ne v12, v14, :cond_be

    const/4 v1, 0x1

    :goto_a9
    if-nez p2, :cond_af

    xor-int/lit8 v14, v1, 0x1

    if-eqz v14, :cond_b7

    :cond_af
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v12}, Lcom/android/server/location/MetokWatcher;->bindToPackageLocked(Landroid/content/ComponentName;II)V

    :cond_b7
    const/4 v14, 0x1

    return v14

    :cond_b9
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    goto :goto_92

    :cond_be
    const/4 v1, 0x0

    goto :goto_a9

    :cond_c0
    const/4 v1, 0x0

    goto :goto_a9
.end method

.method private bindToPackageLocked(Landroid/content/ComponentName;II)V
    .registers 8

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    iput p3, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    const v3, 0x40000005    # 2.0000012f

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private unbindLocked()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getVersion()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_39

    :cond_1c
    :goto_1c
    monitor-exit v1

    return-void

    :cond_1e
    :try_start_1e
    const-string/jumbo v0, "MetokWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_39

    goto :goto_1c

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()Z
    .registers 8

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "MetokWatcher"

    const-string/jumbo v2, "failed to bind metok, when we are booting now"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_45

    :cond_17
    monitor-exit v1

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/MetokWatcher$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/MetokWatcher$2;-><init>(Lcom/android/server/location/MetokWatcher;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_44
    return v6

    :catchall_45
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public switchUser(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unlockUser(I)V
    .registers 5

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
