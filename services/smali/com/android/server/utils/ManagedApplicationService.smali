.class public Lcom/android/server/utils/ManagedApplicationService;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/utils/ManagedApplicationService$BinderChecker;,
        Lcom/android/server/utils/ManagedApplicationService$EventCallback;,
        Lcom/android/server/utils/ManagedApplicationService$LogEvent;,
        Lcom/android/server/utils/ManagedApplicationService$LogFormattable;,
        Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x4

.field private static final MAX_RETRY_DURATION_MS:J = 0x3e80L

.field private static final MIN_RETRY_DURATION_MS:J = 0x7d0L

.field public static final RETRY_BEST_EFFORT:I = 0x3

.field public static final RETRY_FOREVER:I = 0x1

.field public static final RETRY_NEVER:I = 0x2

.field private static final RETRY_RESET_TIME_MS:J = 0xfa00L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBoundInterface:Landroid/os/IInterface;

.field private final mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

.field private final mClientLabel:I

.field private final mComponent:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mIsImportant:Z

.field private mLastRetryTimeMs:J

.field private final mLock:Ljava/lang/Object;

.field private mNextRetryDurationMs:J

.field private mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private final mRetryType:I

.field private mRetrying:Z

.field private final mSettingsAction:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/IInterface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$BinderChecker;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/utils/ManagedApplicationService;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$EventCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/utils/ManagedApplicationService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/utils/ManagedApplicationService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/utils/ManagedApplicationService;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/utils/ManagedApplicationService;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/utils/ManagedApplicationService;Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    .registers 2

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/utils/ManagedApplicationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/utils/ManagedApplicationService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->stopRetriesLocked()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;

    invoke-direct {v0, p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    iput-object p5, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/utils/ManagedApplicationService;->mChecker:Lcom/android/server/utils/ManagedApplicationService$BinderChecker;

    iput-boolean p7, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z

    iput p8, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    iput-object p9, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iput-object p10, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)Lcom/android/server/utils/ManagedApplicationService;
    .registers 21

    new-instance v0, Lcom/android/server/utils/ManagedApplicationService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/utils/ManagedApplicationService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;IILjava/lang/String;Lcom/android/server/utils/ManagedApplicationService$BinderChecker;ZILandroid/os/Handler;Lcom/android/server/utils/ManagedApplicationService$EventCallback;)V

    return-object v0
.end method

.method private checkAndDeliverServiceDiedCbLocked()Z
    .registers 7

    const/4 v5, 0x3

    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_f

    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryType:I

    if-ne v2, v5, :cond_45

    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_45

    :cond_f
    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has died too much, not retrying."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    if-eqz v2, :cond_43

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;

    invoke-direct {v3, v5, v0, v1, p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;-><init>(BJLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_43
    const/4 v2, 0x1

    return v2

    :cond_45
    const/4 v2, 0x0

    return v2
.end method

.method private doRetry()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_44

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_44

    if-nez v0, :cond_f

    monitor-exit v1

    return-void

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempting to reconnect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z
    :try_end_37
    .catchall {:try_start_f .. :try_end_37} :catchall_44

    move-result v0

    if-eqz v0, :cond_3c

    monitor-exit v1

    return-void

    :cond_3c
    :try_start_3c
    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->connect()V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_44

    monitor-exit v1

    return-void

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private matches(Landroid/content/ComponentName;I)Z
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    if-ne v1, p2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private queueRetryLocked()V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xfa00

    cmp-long v2, v2, v4

    if-lez v2, :cond_16

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    :cond_16
    iput-wide v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mLastRetryTimeMs:J

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e80

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mNextRetryDurationMs:J

    iget v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryCount:I

    return-void
.end method

.method private startRetriesLocked()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->checkAndDeliverServiceDiedCbLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    if-eqz v0, :cond_f

    return-void

    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->queueRetryLocked()V

    return-void
.end method

.method private stopRetriesLocked()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetrying:Z

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_utils_ManagedApplicationService-mthref-0()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->doRetry()V

    return-void
.end method

.method public connect()V
    .registers 10

    iget-object v4, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_97

    if-eqz v3, :cond_9

    monitor-exit v4

    return-void

    :cond_9
    :try_start_9
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    if-eqz v3, :cond_20

    const-string/jumbo v3, "android.intent.extra.client_label"

    iget v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mClientLabel:I

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_20
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    if-eqz v3, :cond_39

    const-string/jumbo v3, "android.intent.extra.client_intent"

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mSettingsAction:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_39
    new-instance v3, Lcom/android/server/utils/ManagedApplicationService$1;

    invoke-direct {v3, p0}, Lcom/android/server/utils/ManagedApplicationService$1;-><init>(Lcom/android/server/utils/ManagedApplicationService;)V

    iput-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    const v1, 0x4000001

    iget-boolean v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mIsImportant:Z
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_97

    if-eqz v3, :cond_4a

    const v1, 0x4000041

    :cond_4a
    :try_start_4a
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v5, v1, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_77

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to bind service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V
    :try_end_77
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_77} :catch_79
    .catchall {:try_start_4a .. :try_end_77} :catchall_97

    :cond_77
    :goto_77
    monitor-exit v4

    return-void

    :catch_79
    move-exception v0

    :try_start_7a
    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to bind service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/server/utils/ManagedApplicationService;->startRetriesLocked()V
    :try_end_96
    .catchall {:try_start_7a .. :try_end_96} :catchall_97

    goto :goto_77

    :catchall_97
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public disconnect()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_18

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disconnectIfNotMatching(Landroid/content/ComponentName;I)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/ManagedApplicationService;->matches(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/utils/ManagedApplicationService;->disconnect()V

    const/4 v0, 0x1

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    iget v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mUserId:I

    return v0
.end method

.method synthetic lambda$-com_android_server_utils_ManagedApplicationService_17383(J)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/utils/ManagedApplicationService;->mEventCb:Lcom/android/server/utils/ManagedApplicationService$EventCallback;

    new-instance v1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    const/4 v3, 0x4

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;-><init>(JLandroid/content/ComponentName;I)V

    invoke-interface {v0, v1}, Lcom/android/server/utils/ManagedApplicationService$EventCallback;->onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V

    return-void
.end method

.method public sendEvent(Lcom/android/server/utils/ManagedApplicationService$PendingEvent;)V
    .registers 6

    iget-object v3, p0, Lcom/android/server/utils/ManagedApplicationService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v1, p0, Lcom/android/server/utils/ManagedApplicationService;->mBoundInterface:Landroid/os/IInterface;

    if-nez v1, :cond_9

    iput-object p1, p0, Lcom/android/server/utils/ManagedApplicationService;->mPendingEvent:Lcom/android/server/utils/ManagedApplicationService$PendingEvent;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    :cond_9
    monitor-exit v3

    if-eqz v1, :cond_f

    :try_start_c
    invoke-interface {p1, v1}, Lcom/android/server/utils/ManagedApplicationService$PendingEvent;->runEvent(Landroid/os/IInterface;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_f} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_13

    :cond_f
    :goto_f
    return-void

    :catchall_10
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_13
    move-exception v0

    iget-object v2, p0, Lcom/android/server/utils/ManagedApplicationService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Received exception from user service: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
