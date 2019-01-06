.class public Lcom/android/server/am/BroadcastQueueInjector;
.super Ljava/lang/Object;
.source "BroadcastQueueInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;,
        Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;,
        Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;
    }
.end annotation


# static fields
.field private static final ABNORMAL_BROADCAST_RATE:F = 0.6f

.field private static final ACTION_C2DM:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final ACTIVE_ORDERED_BROADCAST_LIMIT:I

.field private static BR_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = true

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.PACKAGE_NAME"

.field public static final FLAG_IMMUTABLE:I = 0x4000000

.field private static final IS_STABLE_VERSION:Z

.field private static final MAX_QUANTITY:I = 0x1e

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field static final TAG:Ljava/lang/String; = "BroadcastQueueInjector"

.field private static volatile mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

.field private static mBroadcastMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;",
            ">;"
        }
    .end annotation
.end field

.field private static mDispatchThreshold:J

.field private static mFinishDeno:I

.field private static mIndex:I

.field private static final mObject:Ljava/lang/Object;

.field private static sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sActivityRequestId:I

.field private static sSystemAppSkipAction:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSystemBootCompleted:Z

.field private static sSystemSkipAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -wrap0()Z
    .registers 1

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueInjector;->forceStopAbnormalApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/BroadcastQueueInjector;->processAbnormalBroadcast(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    sput v4, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->mObject:Ljava/lang/Object;

    const-string/jumbo v0, "persist.broadcast.time"

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/BroadcastQueueInjector;->mDispatchThreshold:J

    const-string/jumbo v0, "persist.broadcast.count"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->mFinishDeno:I

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->IS_STABLE_VERSION:Z

    const-string/jumbo v0, "persist.activebr.limit"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemAppSkipAction:Landroid/util/ArrayMap;

    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_PRE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkAbnormalBroadcastInQueueLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
    .registers 8

    iget-object v1, p1, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    if-eqz v1, :cond_1a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    sget-object v4, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sget v5, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    if-ge v4, v5, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    sget-object v4, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sget v4, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    mul-int/lit8 v4, v4, 0x3

    if-ge v0, v4, :cond_40

    invoke-static {v1}, Lcom/android/server/am/BroadcastQueueInjector;->getAbnormalBroadcastByRateIfExists(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    move-result-object v3

    :goto_2f
    if-eqz v3, :cond_45

    invoke-static {v3, p0}, Lcom/android/server/am/BroadcastQueueInjector;->getPackageLabelLocked(Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/am/BroadcastQueue;->mHandler:Lcom/android/server/am/BroadcastQueue$BroadcastHandler;

    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$2;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/android/server/am/BroadcastQueueInjector$2;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/am/BroadcastQueue$BroadcastHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :goto_3f
    return-void

    :cond_40
    invoke-static {v1}, Lcom/android/server/am/BroadcastQueueInjector;->getAbnormalBroadcastByCountIfExisted(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    move-result-object v3

    goto :goto_2f

    :cond_45
    sget-object v4, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_3f
.end method

.method static checkApplicationAutoStart(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;)Z
    .registers 18

    invoke-static {p1, p0}, Lcom/android/server/am/BroadcastQueueInjector;->checkAbnormalBroadcastInQueueLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    return v1

    :cond_b
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_22

    const-string/jumbo v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    return v1

    :cond_22
    const/4 v12, 0x0

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_85

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :goto_3b
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lmiui/security/WakePathChecker;->checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z

    move-result v1

    if-eqz v1, :cond_153

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_87

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v11

    :goto_62
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_83

    if-eqz v11, :cond_89

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    const-string/jumbo v1, "com.xiaomi.mipush.MESSAGE_ARRIVED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_89

    :cond_83
    const/4 v1, 0x1

    return v1

    :cond_85
    const/4 v4, 0x0

    goto :goto_3b

    :cond_87
    const/4 v11, 0x1

    goto :goto_62

    :cond_89
    const/4 v8, 0x0

    if-eqz v11, :cond_b0

    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sSystemSkipAction:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    const/4 v1, 0x1

    return v1

    :cond_96
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sSystemAppSkipAction:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    if-eqz v13, :cond_b0

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const/4 v1, 0x1

    return v1

    :cond_b0
    if-eqz v11, :cond_bf

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bf

    const/4 v8, 0x1

    const-string/jumbo v12, " system app CONNECTIVITY_CHANGE"

    :cond_bf
    if-nez v8, :cond_de

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2, v3}, Landroid/miui/AppOpsUtils;->getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_db

    const/4 v1, 0x1

    return v1

    :cond_db
    const-string/jumbo v12, " auto start"

    :cond_de
    :goto_de
    const-string/jumbo v1, "BroadcastQueueInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to launch app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": process is not permitted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/am/BroadcastQueue;->logBroadcastReceiverDiscardLocked(Lcom/android/server/am/BroadcastRecord;)V

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    invoke-virtual {p0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    const/4 v1, 0x0

    move-object/from16 v0, p2

    iput v1, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    const/4 v1, 0x0

    return v1

    :cond_153
    const-string/jumbo v12, " weak path"

    goto :goto_de
.end method

.method static checkReceiverAppDealBroadcast(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 9

    const/4 v3, 0x1

    if-eqz p4, :cond_6

    invoke-static {p1, p0}, Lcom/android/server/am/BroadcastQueueInjector;->checkAbnormalBroadcastInQueueLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V

    :cond_6
    if-eqz p3, :cond_a

    if-nez p2, :cond_b

    :cond_a
    return v3

    :cond_b
    iget-object v0, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    iget v0, p3, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    const-string/jumbo v0, "BroadcastQueueInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Skipping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v0, :cond_4a

    if-eqz p4, :cond_4d

    :cond_4a
    invoke-virtual {p0, p3}, Lcom/android/server/am/BroadcastQueue;->skipCurrentReceiverLocked(Lcom/android/server/am/ProcessRecord;)V

    :cond_4d
    const/4 v0, 0x0

    return v0

    :cond_4f
    return v3
.end method

.method public static checkTime(JLjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    const-string/jumbo v2, "BroadcastQueueInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Slow operation: processNextBroadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method private static forceStopAbnormalApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v0, "BroadcastQueueInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "force-stop abnormal app:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    const-string/jumbo v2, "abnormal ordered broadcast"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_3c

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private static getAbnormalBroadcastByCountIfExisted(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)",
            "Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_48

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    const-string/jumbo v9, "android"

    iget-object v12, v6, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    new-instance v1, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    invoke-direct {v1, v6}, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_3a

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_48
    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v5, :cond_52

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_52

    :cond_7b
    if-eqz v8, :cond_89

    iget-object v9, v8, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_89

    sget v9, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    if-ge v5, v9, :cond_b0

    :cond_89
    const-string/jumbo v9, "BroadcastQueueInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "the max number of same broadcasts in queue is not large enough:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " with count:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_b0
    const-string/jumbo v9, "BroadcastQueueInjector"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "found abnormal broadcast in list by max count:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cost:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method private static getAbnormalBroadcastByRateIfExists(Ljava/util/List;)Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)",
            "Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5a

    if-nez v0, :cond_20

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v0, 0x1

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v5, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v5, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    iget v8, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastRecord;

    iget v5, v5, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v8, v5, :cond_57

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    :cond_5a
    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    const-string/jumbo v8, "android"

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7b

    int-to-float v5, v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr v8, v9

    cmpg-float v5, v5, v8

    if-gez v5, :cond_a1

    :cond_7b
    const-string/jumbo v5, "BroadcastQueueInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "abnormal broadcast not found with first loop count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " with caller:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_a1
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a6
    :goto_a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v8, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    invoke-static {v5, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a6

    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    :cond_d1
    int-to-float v5, v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    int-to-float v8, v8

    const v9, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v9

    cmpg-float v5, v5, v8

    if-gez v5, :cond_fa

    const-string/jumbo v5, "BroadcastQueueInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "abnormal broadcast not found with count:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_fa
    const-string/jumbo v5, "BroadcastQueueInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "found abnormal broadcast in list by rate:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " cost:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;

    invoke-direct {v5, v4}, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;-><init>(Lcom/android/server/am/BroadcastRecord;)V

    return-object v5
.end method

.method static getBRReportHandler()Landroid/os/Handler;
    .registers 4

    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    if-nez v1, :cond_22

    sget-object v2, Lcom/android/server/am/BroadcastQueueInjector;->mObject:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    if-nez v1, :cond_21

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "brreport-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    :cond_21
    monitor-exit v2

    :cond_22
    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->mBRHandler:Lcom/android/server/am/BroadcastQueueInjector$BRReportHandler;

    return-object v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getNextRequestIdLocked()I
    .registers 2

    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_a

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    :cond_a
    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    sget v0, Lcom/android/server/am/BroadcastQueueInjector;->sActivityRequestId:I

    return v0
.end method

.method private static getPackageLabelLocked(Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Lcom/android/server/am/ActivityManagerService;)Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->userId:I

    invoke-static {v3, v4, p1}, Lcom/android/server/am/BroadcastQueueInjector;->getProcessRecordLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_26

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_26
    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;->callerPackage:Ljava/lang/String;

    :cond_2a
    return-object v1
.end method

.method private static getProcessRecordLocked(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessRecord;
    .registers 7

    const/4 v3, 0x0

    iget-object v2, p2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_9
    if-ltz v1, :cond_27

    iget-object v2, p2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v2, p1, :cond_24

    return-object v0

    :cond_24
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_27
    return-object v3
.end method

.method static isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z
    .registers 12

    const/4 v6, 0x0

    const/16 v3, 0x10

    if-eq p4, v3, :cond_6

    return v6

    :cond_6
    iget-object v1, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    return v6

    :cond_16
    :try_start_16
    const-string/jumbo v3, "miui.intent.SERVICE_NUMBER"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v4, 0x2722

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5b

    const-string/jumbo v3, "BroadcastQueueInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MIUILOG- Sms Filter packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4f} :catch_51

    const/4 v3, 0x1

    return v3

    :catch_51
    move-exception v0

    const-string/jumbo v3, "BroadcastQueueInjector"

    const-string/jumbo v4, "isSKipNotifySms"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5b
    return v6
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Landroid/content/pm/ResolveInfo;I)Z
    .registers 6

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkip(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)Z
    .registers 6

    iget-object v0, p2, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget v0, v0, Lcom/android/server/am/ReceiverList;->uid:I

    iget-object v1, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, p3}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static isSkipForUser(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ResolveInfo;Z)Z
    .registers 4

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerServiceCompat;->isUserRunning(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 p2, 0x1

    :cond_11
    return p2
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    if-nez v0, :cond_14

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    :cond_14
    sget-boolean v0, Lcom/android/server/am/BroadcastQueueInjector;->sSystemBootCompleted:Z

    return v0
.end method

.method public static noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;)I
    .registers 31

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v22

    const/4 v6, 0x4

    move/from16 v0, v22

    if-eq v0, v6, :cond_14

    return v22

    :cond_14
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    const/16 v6, 0x3e7

    move/from16 v0, v24

    if-ne v0, v6, :cond_1f

    return v22

    :cond_1f
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/am/BroadcastQueueInjector;->isSKipNotifySms(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastRecord;ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_30

    return v22

    :cond_30
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/4 v7, 0x1

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v6, v0, v1, v2, v7}, Lcom/android/server/AppOpsService;->setMode(IILjava/lang/String;I)V

    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v6, "com.miui.intent.action.REQUEST_PERMISSIONS"

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.lbe.security.miui"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v6, 0x18800000

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.PACKAGE_NAME"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.UID"

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "op"

    move-object/from16 v0, v20

    move/from16 v1, p0

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-boolean v6, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v6, :cond_ed

    move-object/from16 v0, p5

    iget-object v8, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p5

    iget v9, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    if-nez v8, :cond_8a

    if-nez v9, :cond_8d

    const-string/jumbo v8, "root"

    :cond_8a
    :goto_8a
    if-nez v8, :cond_9d

    return v22

    :cond_8d
    const/16 v6, 0x7d0

    if-ne v9, v6, :cond_95

    const-string/jumbo v8, "com.android.shell"

    goto :goto_8a

    :cond_95
    const/16 v6, 0x3e8

    if-ne v9, v6, :cond_8a

    const-string/jumbo v8, "android"

    goto :goto_8a

    :cond_9d
    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->getNextRequestIdLocked()I

    move-result v13

    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p5

    iget-object v6, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p5

    iget v10, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    const/4 v6, 0x1

    new-array v14, v6, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v21, v14, v6

    const/4 v6, 0x1

    new-array v15, v6, [Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v15, v7

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v16, 0x4c000000    # 3.3554432E7f

    const/16 v17, 0x0

    move-object/from16 v6, p4

    invoke-virtual/range {v6 .. v17}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v23

    const-string/jumbo v6, "android.intent.extra.INTENT"

    new-instance v7, Landroid/content/IntentSender;

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_ed
    const-string/jumbo v6, "BroadcastQueueInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MIUILOG - Launching Request permission [Broadcast] uid : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "  pkg : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " op : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x36

    move/from16 v0, p0

    if-ne v0, v6, :cond_142

    const/16 v6, 0x5dc

    :goto_12b
    int-to-long v0, v6

    move-wide/from16 v18, v0

    new-instance v6, Lcom/android/server/am/BroadcastQueueInjector$1;

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/am/BroadcastQueueInjector$1;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Intent;I)V

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x1

    return v6

    :cond_142
    const/16 v6, 0xa

    goto :goto_12b
.end method

.method static onBroadcastFinished(Landroid/content/Intent;Ljava/lang/String;IJJJJI)V
    .registers 33

    sget-boolean v14, Lcom/android/server/am/BroadcastQueueInjector;->IS_STABLE_VERSION:Z

    if-eqz v14, :cond_5

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "null"

    :cond_e
    if-nez p1, :cond_13

    const-string/jumbo p1, "android"

    :cond_13
    move/from16 v10, p2

    const-string/jumbo v11, ""

    move-object/from16 v9, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v14, p5, p3

    sget-wide v16, Lcom/android/server/am/BroadcastQueueInjector;->mDispatchThreshold:J

    cmp-long v14, v14, v16

    if-gez v14, :cond_3c

    sub-long v14, p7, p5

    move/from16 v0, p11

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v16, v16, p9

    sget v18, Lcom/android/server/am/BroadcastQueueInjector;->mFinishDeno:I

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    cmp-long v14, v14, v16

    if-ltz v14, :cond_93

    :cond_3c
    const/4 v8, 0x1

    :goto_3d
    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-ltz v14, :cond_47

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/16 v15, 0x1e

    if-le v14, v15, :cond_95

    :cond_47
    const/4 v14, 0x0

    :goto_48
    sput v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    new-instance v5, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;

    move-object/from16 v0, p1

    invoke-direct {v5, v3, v0}, Lcom/android/server/am/BroadcastQueueInjector$BroadcastMap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    if-eqz v14, :cond_98

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/16 v15, 0x1e

    if-gt v14, v15, :cond_98

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-virtual {v2}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addCount()V

    sub-long v14, p7, p3

    invoke-virtual {v2, v14, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->addTotalTime(J)V

    if-eqz v8, :cond_92

    invoke-virtual {v2, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    move/from16 v0, p11

    invoke-virtual {v2, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    :cond_92
    :goto_92
    return-void

    :cond_93
    const/4 v8, 0x0

    goto :goto_3d

    :cond_95
    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    goto :goto_48

    :cond_98
    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    const/16 v15, 0x1e

    if-lt v14, v15, :cond_c8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v14, 0x1

    iput v14, v7, Landroid/os/Message;->what:I

    new-instance v15, Landroid/content/pm/ParceledListSlice;

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-direct {v15, v14}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v15, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/am/BroadcastQueueInjector;->getBRReportHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    const/4 v14, 0x0

    sput v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    :cond_c8
    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->mBroadcastMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/android/server/am/BroadcastQueueInjector;->mIndex:I

    new-instance v4, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v4}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    const/16 v14, 0x40

    invoke-virtual {v4, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    if-eqz v8, :cond_f6

    invoke-virtual {v4, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setReason(Ljava/lang/String;)V

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    move-wide/from16 v0, p7

    invoke-virtual {v4, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setNumReceivers(I)V

    :cond_f6
    invoke-virtual {v4, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCallerPackage(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setCount(I)V

    sub-long v14, p7, p3

    invoke-virtual {v4, v14, v15}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTotalTime(J)V

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    sget-object v14, Lcom/android/server/am/BroadcastQueueInjector;->BR_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_92
.end method

.method private static processAbnormalBroadcast(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x0

    sget v1, Lcom/android/server/am/BroadcastQueueInjector;->ACTIVE_ORDERED_BROADCAST_LIMIT:I

    mul-int/lit8 v1, v1, 0x3

    if-ge p3, v1, :cond_1d

    const-string/jumbo v1, "BroadcastQueueInjector"

    const-string/jumbo v2, "abnormal ordered broadcast, showWarningDialog"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/MiuiWarnings;->getInstance()Lcom/android/server/am/MiuiWarnings;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/BroadcastQueueInjector$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/BroadcastQueueInjector$3;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V

    invoke-virtual {v1, p2, v2}, Lcom/android/server/am/MiuiWarnings;->showWarningDialog(Ljava/lang/String;Lcom/android/server/am/MiuiWarnings$WarningCallback;)Z

    move-result v0

    :cond_1d
    if-nez v0, :cond_28

    invoke-static {p0, p1}, Lcom/android/server/am/BroadcastQueueInjector;->forceStopAbnormalApp(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueueInjector$AbnormalBroadcastRecord;)V

    sget-object v1, Lcom/android/server/am/BroadcastQueueInjector;->sAbnormalBroadcastWarning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_28
    return-void
.end method
