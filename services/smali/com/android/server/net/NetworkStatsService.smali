.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$1;,
        Lcom/android/server/net/NetworkStatsService$2;,
        Lcom/android/server/net/NetworkStatsService$3;,
        Lcom/android/server/net/NetworkStatsService$4;,
        Lcom/android/server/net/NetworkStatsService$5;,
        Lcom/android/server/net/NetworkStatsService$6;,
        Lcom/android/server/net/NetworkStatsService$7;,
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$HandlerCallback;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field static final LOGV:Z = false

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_REGISTER_GLOBAL_ALERT:I = 0x3

.field private static final MSG_UPDATE_IFACES:I = 0x2

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field public static final VT_INTERFACE:Ljava/lang/String; = "vt_data0"


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mGlobalAlertBytes:J

.field private final mGlobalAlertBytesObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mStatsHandler:Landroid/os/Handler;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

.field private final mSystemDir:Ljava/io/File;

.field private mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private final mTime:Landroid/util/TrustedTime;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mStatsLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/net/NetworkStatsService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/net/NetworkStatsService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/net/NetworkStatsService;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .registers 10

    invoke-direct/range {p0 .. p8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/net/NetworkStatsService;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/net/NetworkStatsService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/net/NetworkStatsService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Landroid/util/TrustedTime;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V
    .registers 16

    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x200000

    iput-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    new-instance v1, Lcom/android/server/net/NetworkStatsService$1;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytesObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v1, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    const-string/jumbo v1, "missing Context"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "missing INetworkManagementService"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/INetworkManagementService;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const-string/jumbo v1, "missing AlarmManager"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v1, "missing TrustedTime"

    invoke-static {p5, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/TrustedTime;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    const-string/jumbo v1, "missing NetworkStatsSettings"

    invoke-static {p7, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    const-string/jumbo v1, "missing TelephonyManager"

    invoke-static {p6, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    const-string/jumbo v1, "missing WakeLock"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v1, "missing NetworkStatsObservers"

    invoke-static {p8, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsObservers;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    const-string/jumbo v1, "missing systemDir"

    invoke-static {p9, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v1, "missing baseDir"

    invoke-static {p10, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "netstats_global_alert_bytes"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytesObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private assertBandwidthControlEnabled()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method private bootstrapStatsLocked()V
    .registers 8

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v4}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_e
    :try_start_e
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_11} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_17

    :goto_11
    return-void

    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_e

    :catch_17
    move-exception v2

    goto :goto_11

    :catch_19
    move-exception v3

    const-string/jumbo v4, "NetworkStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "problem reading network stats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .registers 13

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/DropBoxManager;

    new-instance v0, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v1, Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v5, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v3, v8

    move-object v4, p1

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v0
.end method

.method private checkAccessLevel(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsAccess;->checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;
    .registers 20

    const-string/jumbo v2, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    const-string/jumbo v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PowerManager;

    const-string/jumbo v2, "NetworkStats"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    new-instance v1, Lcom/android/server/net/NetworkStatsService;

    invoke-static/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    new-instance v8, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    new-instance v9, Lcom/android/server/net/NetworkStatsObservers;

    invoke-direct {v9}, Lcom/android/server/net/NetworkStatsObservers;-><init>()V

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v10

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultBaseDir()Ljava/io/File;

    move-result-object v11

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Landroid/util/TrustedTime;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V

    new-instance v14, Landroid/os/HandlerThread;

    const-string/jumbo v2, "NetworkStats"

    invoke-direct {v14, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/android/server/net/NetworkStatsService$HandlerCallback;

    invoke-direct {v12, v1}, Lcom/android/server/net/NetworkStatsService$HandlerCallback;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    invoke-virtual {v14}, Landroid/os/HandlerThread;->start()V

    new-instance v13, Landroid/os/Handler;

    invoke-virtual {v14}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v13, v2, v12}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-virtual {v1, v13, v12}, Lcom/android/server/net/NetworkStatsService;->setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    new-instance v16, Landroid/os/HandlerThread;

    const-string/jumbo v2, "StatsObserver"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->start()V

    new-instance v15, Landroid/os/Handler;

    invoke-virtual/range {v16 .. v16}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method private static dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v4, 0x10e00000001L

    invoke-virtual {p0, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkIdentitySet;

    const-wide v4, 0x11100000002L

    invoke-virtual {v1, p0, v4, v5}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2d
    return-void
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;)V
    .registers 6

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x21100000001L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x21100000002L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x11100000003L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x11100000004L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x11100000005L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x11100000006L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap",
            "<TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    if-nez v0, :cond_10

    new-instance v0, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method

.method private static getDefaultBaseDir()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "NetworkStats"

    const-string/jumbo v2, "problem reading network stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getNetworkStatsUidDetail()Landroid/net/NetworkStats;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;

    move-result-object v2

    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v6}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    :cond_23
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v2, v4}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    return-object v2
.end method

.method private getNetworkStatsXt()Landroid/net/NetworkStats;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v2, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    :cond_1b
    return-object v2
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 21

    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkStatsService;->resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v3

    iget-object v14, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v12, p4

    move/from16 v13, p5

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_21

    move-result-object v0

    monitor-exit v14

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v14

    throw v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .registers 40

    const/4 v5, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v28

    new-instance v29, Landroid/net/NetworkStats;

    sub-long v4, p5, p3

    const/4 v2, 0x1

    move-object/from16 v0, v29

    invoke-direct {v0, v4, v5, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v11, Landroid/net/NetworkStats$Entry;

    sget-object v12, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v26, v0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-direct/range {v11 .. v27}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIJJJJJ)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    return-object v29
.end method

.method private isBandwidthControlEnabled()Z
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_4
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_e
    .catchall {:try_start_4 .. :try_end_9} :catchall_14

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catch_e
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_14
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .registers 6

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_18
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_xt.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2b
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats_uid.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_48} :catch_54
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_48} :catch_49

    :cond_48
    :goto_48
    return-void

    :catch_49
    move-exception v1

    const-string/jumbo v3, "NetworkStats"

    const-string/jumbo v4, "problem during legacy upgrade"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48

    :catch_54
    move-exception v0

    const-string/jumbo v3, "NetworkStats"

    const-string/jumbo v4, "problem during legacy upgrade"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_48
.end method

.method private openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_12

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x3

    :try_start_c
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_18

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_12
    new-instance v2, Lcom/android/server/net/NetworkStatsService$8;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/net/NetworkStatsService$8;-><init>(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;I)V

    return-object v2

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private performPoll(I)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->getCacheAge()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getTimeCacheMaxAge()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->forceRefresh()Z

    :cond_15
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2e

    :try_start_1d
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_27

    :try_start_20
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_2e

    monitor-exit v1

    return-void

    :catchall_27
    move-exception v0

    :try_start_28
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private performPollLocked(I)V
    .registers 15

    iget-boolean v10, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v10, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_62

    const/4 v5, 0x1

    :goto_e
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_64

    const/4 v6, 0x1

    :goto_13
    and-int/lit16 v10, p1, 0x100

    if-eqz v10, :cond_66

    const/4 v4, 0x1

    :goto_18
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v10}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v10

    if-eqz v10, :cond_68

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v10}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_26
    :try_start_26
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_29
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_29} :catch_6f
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_6d

    if-eqz v4, :cond_7a

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    :cond_3f
    :goto_3f
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v10}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    :cond_4a
    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v12, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v10, v7, v11, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void

    :cond_62
    const/4 v5, 0x0

    goto :goto_e

    :cond_64
    const/4 v6, 0x0

    goto :goto_13

    :cond_66
    const/4 v4, 0x0

    goto :goto_18

    :cond_68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_26

    :catch_6d
    move-exception v2

    return-void

    :catch_6f
    move-exception v3

    const-string/jumbo v10, "NetworkStats"

    const-string/jumbo v11, "problem reading network stats"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_7a
    if-eqz v5, :cond_86

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    :cond_86
    if-eqz v6, :cond_3f

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    goto :goto_3f
.end method

.method private performSampleLocked()V
    .registers 33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_d1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v26

    :goto_12
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v30

    move-object/from16 v0, v28

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v28

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v28

    iget-wide v8, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, v31

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, v31

    iget-wide v12, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, v31

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, v31

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v30

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v0

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    return-void

    :cond_d1
    const-wide/16 v26, -0x1

    goto/16 :goto_12
.end method

.method private recordSnapshotLocked(J)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail()Landroid/net/NetworkStats;

    move-result-object v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsXt()Landroid/net/NetworkStats;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v7, 0x0

    move-object/from16 v5, v17

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getAllVpnInfo()[Lcom/android/internal/net/VpnInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v5, v10

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v5, v10

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    new-instance v11, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-direct {v11, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    new-instance v12, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-direct {v12, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object/from16 v9, v17

    move-object v13, v7

    move-wide/from16 v14, p1

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/net/NetworkStatsObservers;->updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V

    return-void
.end method

.method private registerGlobalAlert()V
    .registers 7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v2, v4, v5}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_7} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_24

    :goto_7
    return-void

    :catch_8
    move-exception v1

    const-string/jumbo v2, "NetworkStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem registering for global alert: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_24
    move-exception v0

    goto :goto_7
.end method

.method private registerPollAlarmLocked()V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_c
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .registers 5

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    const/4 v1, 0x0

    array-length v2, p1

    :goto_10
    if-ge v1, v2, :cond_1a

    aget v0, p1, v1

    invoke-static {v0}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1a
    return-void
.end method

.method private removeUserLocked(I)V
    .registers 9

    const/4 v5, 0x0

    new-array v4, v5, [I

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v6, 0x400200

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    goto :goto_14

    :cond_2b
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method private resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;
    .registers 18

    const/4 v7, 0x0

    const/4 v2, 0x0

    and-int/lit8 v10, p2, 0x2

    if-eqz v10, :cond_ad

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_ad

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v10}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getAugmentEnabled()Z

    move-result v10

    if-eqz v10, :cond_ad

    const-string/jumbo v10, "NetworkStats"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Resolving plan for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_35
    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionManager;

    iget-object v10, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v11

    array-length v12, v11

    move v10, v7

    :goto_4f
    if-ge v10, v12, :cond_90

    aget v5, v11, v10

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/NetworkTemplate;->matchesSubscriberId(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8c

    const-string/jumbo v7, "NetworkStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Found active matching subId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getSubscriptionPlans(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8c

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/telephony/SubscriptionPlan;

    move-object v2, v0
    :try_end_8c
    .catchall {:try_start_35 .. :try_end_8c} :catchall_ae

    :cond_8c
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto :goto_4f

    :cond_90
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v7, "NetworkStats"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Resolved to plan "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    return-object v2

    :catchall_ae
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private shutdownLocked()V
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v2}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v0

    :goto_32
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iput-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    return-void

    :cond_54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_32
.end method

.method private updateIfaces()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    :try_start_8
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_12

    :try_start_b
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_19

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    :try_start_13
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateIfacesLocked()V
    .registers 24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v3, :cond_7

    return-void

    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_107

    move-result-object v9

    if-eqz v9, :cond_109

    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    :goto_23
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v21, v3

    :goto_42
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_112

    aget-object v19, v20, v21

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_10c

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-static {v3, v0}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;)Landroid/net/NetworkIdentity;

    move-result-object v12

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v3, v10}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v3, v10}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_d3

    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_d3

    new-instance v2, Landroid/net/NetworkIdentity;

    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getType()I

    move-result v3

    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v4

    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v7

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-string/jumbo v4, "vt_data0"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const-string/jumbo v4, "vt_data0"

    invoke-static {v3, v4}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    :cond_d3
    if-eqz v13, :cond_d8

    invoke-virtual {v14, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_d8
    move-object/from16 v0, v19

    iget-object v3, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_e4
    :goto_e4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/LinkProperties;

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_e4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v3, v15}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_e4

    invoke-virtual {v14, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e4

    :catch_107
    move-exception v11

    return-void

    :cond_109
    const/4 v3, 0x0

    goto/16 :goto_23

    :cond_10c
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    goto/16 :goto_42

    :cond_112
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-void
.end method

.method private updatePersistThresholdsLocked()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    return-void
.end method


# virtual methods
.method public advisePersistThreshold(J)V
    .registers 12

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->hasCache()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTime:Landroid/util/TrustedTime;

    invoke-interface {v0}, Landroid/util/TrustedTime;->currentTimeMillis()J

    move-result-wide v6

    :goto_29
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_53

    if-nez v0, :cond_37

    monitor-exit v1

    return-void

    :cond_32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_29

    :cond_37
    :try_start_37
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V
    :try_end_4e
    .catchall {:try_start_37 .. :try_end_4e} :catchall_53

    monitor-exit v1

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void

    :catchall_53
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3

    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mConnManager:Landroid/net/IConnectivityManager;

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NetworkStats"

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    const-wide/32 v12, 0x5265c00

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move-object/from16 v0, p3

    array-length v3, v0

    :goto_1c
    if-ge v2, v3, :cond_3d

    aget-object v8, p3, v2

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string/jumbo v20, "--duration="

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3a

    const/16 v20, 0xb

    :try_start_30
    move/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_39} :catch_213

    move-result-wide v12

    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_3d
    const-string/jumbo v2, "--poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ad

    const-string/jumbo v2, "poll"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    :goto_4d
    const-string/jumbo v2, "--checkin"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    const-string/jumbo v2, "--full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string/jumbo v2, "full"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    :goto_64
    const-string/jumbo v2, "--uid"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b2

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    :goto_74
    const-string/jumbo v2, "--tag"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    const-string/jumbo v2, "detail"

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v16

    :goto_84
    new-instance v19, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    :try_start_97
    move-object/from16 v0, p3

    array-length v2, v0

    if-lez v2, :cond_b8

    const-string/jumbo v2, "--proto"

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkStatsService;->dumpProtoLocked(Ljava/io/FileDescriptor;)V
    :try_end_ab
    .catchall {:try_start_97 .. :try_end_ab} :catchall_210

    monitor-exit v20

    return-void

    :cond_ad
    const/16 v18, 0x1

    goto :goto_4d

    :cond_b0
    const/4 v11, 0x1

    goto :goto_64

    :cond_b2
    const/16 v17, 0x1

    goto :goto_74

    :cond_b5
    const/16 v16, 0x1

    goto :goto_84

    :cond_b8
    if-eqz v18, :cond_cb

    const/16 v2, 0x103

    :try_start_bc
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    const-string/jumbo v2, "Forced poll"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_bc .. :try_end_c9} :catchall_210

    monitor-exit v20

    return-void

    :cond_cb
    if-eqz v10, :cond_130

    :try_start_cd
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v12

    const-string/jumbo v2, "v1,"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    div-long v2, v4, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v2, 0x2c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    const-wide/16 v2, 0x3e8

    div-long v2, v6, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v2, "xt"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    if-eqz v17, :cond_11b

    const-string/jumbo v2, "uid"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    :cond_11b
    if-eqz v16, :cond_12e

    const-string/jumbo v2, "tag"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V
    :try_end_12e
    .catchall {:try_start_cd .. :try_end_12e} :catchall_210

    :cond_12e
    monitor-exit v20

    return-void

    :cond_130
    :try_start_130
    const-string/jumbo v2, "Active interfaces:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v14, 0x0

    :goto_13c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v14, v2, :cond_16c

    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_13c

    :cond_16c
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v2, "Active UID interfaces:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v14, 0x0

    :goto_17b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v14, v2, :cond_1ab

    const-string/jumbo v2, "iface"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "ident"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_17b

    :cond_1ab
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v2, "Dev stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    const-string/jumbo v2, "Xt stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    if-eqz v17, :cond_1f5

    const-string/jumbo v2, "UID stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_1f5
    if-eqz v16, :cond_20e

    const-string/jumbo v2, "UID tag stats:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_20e
    .catchall {:try_start_130 .. :try_end_20e} :catchall_210

    :cond_20e
    monitor-exit v20

    return-void

    :catchall_210
    move-exception v2

    monitor-exit v20

    throw v2

    :catch_213
    move-exception v15

    goto/16 :goto_3a
.end method

.method public forceUpdate()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x3

    :try_start_13
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forceUpdateIfaces()V
    .registers 6

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_12
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updateIfaces()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v6, p1, :cond_11

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.ACCESS_NETWORK_STATE"

    const-string/jumbo v8, "NetworkStats"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_18
    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v6, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I)Landroid/net/NetworkStats;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_49

    move-result-object v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v3, v6}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    new-instance v0, Landroid/net/NetworkStats;

    invoke-virtual {v3}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v8

    invoke-direct {v0, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_35
    invoke-virtual {v3}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v2, v6, :cond_4e

    invoke-virtual {v3, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :catchall_49
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    :cond_4e
    return-object v0
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 16

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string/jumbo v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/4 v3, 0x2

    const/4 v8, 0x3

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .registers 23

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move/from16 v0, p1

    if-eq v2, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.UPDATE_DEVICE_STATS"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-gez p3, :cond_20

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count can only be incremented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    if-nez p2, :cond_2b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count must have specific tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move/from16 v5, p1

    invoke-virtual/range {v3 .. v17}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    :try_end_74
    .catchall {:try_start_32 .. :try_end_74} :catchall_76

    monitor-exit v18

    return-void

    :catchall_76
    move-exception v2

    monitor-exit v18

    throw v2
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;
    .registers 15

    const-string/jumbo v0, "calling package is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "DataUsageRequest is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    const-string/jumbo v1, "NetworkTemplate is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "messenger is null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "binder is null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_2c
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsObservers;->register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_4a

    move-result-object v6

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v6

    :catchall_4a
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setUidForeground(IZ)V
    .registers 8

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.CONNECTIVITY_INTERNAL"

    const-string/jumbo v4, "NetworkStats"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz p2, :cond_24

    const/4 v1, 0x1

    :goto_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_22

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {p1, v1}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_26

    :cond_22
    monitor-exit v3

    return-void

    :cond_24
    const/4 v1, 0x0

    goto :goto_11

    :catchall_26
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public systemReady()V
    .registers 12

    const/4 v0, 0x1

    const/4 v4, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    const-string/jumbo v0, "NetworkStats"

    const-string/jumbo v1, "bandwidth controls disabled, unable to track stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_17
    const-string/jumbo v0, "dev"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-string/jumbo v0, "xt"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-string/jumbo v0, "uid"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-string/jumbo v0, "uid_tag"

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {p0, v0, v2, v5}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V
    :try_end_68
    .catchall {:try_start_17 .. :try_end_68} :catchall_cf

    monitor-exit v1

    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v9, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v2, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.UID_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v10, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_c1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c8} :catch_d2

    :goto_c8
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void

    :catchall_cf
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_d2
    move-exception v6

    goto :goto_c8
.end method

.method public unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .registers 6

    const-string/jumbo v1, "DataUsageRequest is null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_e
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method
