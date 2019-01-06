.class public Lcom/android/server/am/MiuiUsageStats;
.super Ljava/lang/Object;
.source "MiuiUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiUsageStats$1;,
        Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;
    }
.end annotation


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "charging"

.field public static final ACTION_FG_APP:Ljava/lang/String; = "fg_app"

.field public static final ACTION_LOCK_SCREEN:Ljava/lang/String; = "lock_screen"

.field private static final BATTERY_PLUGGED_AC:Ljava/lang/String; = "AC"

.field private static final BATTERY_PLUGGED_USB:Ljava/lang/String; = "USB"

.field private static final BATTERY_PLUGGED_WIRELESS:Ljava/lang/String; = "WIRELESS"

.field private static final DAY_TO_MILL:J = 0x5265c00L

.field private static final FILE_LIMIT_NUM:I = 0x4

.field private static final FILE_PREFIX:Ljava/lang/String; = "miuiusage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x36ee80

.field private static final SAVE_PATH:Ljava/lang/String; = "/data/system/usagestats"

.field private static final TAG:Ljava/lang/String; = "MiuiUsageStats"

.field private static final mFileLock:Ljava/lang/Object;

.field private static mFormat:Ljava/text/SimpleDateFormat;

.field private static mHistory:Ljava/io/File;

.field private static mLastPlugType:Ljava/lang/String;

.field private static mLastWriteDay:Ljava/lang/String;

.field private static final mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private static mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mUsageStatsMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mWriteThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->writeStatsToFile()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mFileLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lcom/android/server/am/MiuiUsageStats$1;

    const-string/jumbo v1, "miui-usage"

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiUsageStats$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mWriteThread:Ljava/lang/Thread;

    sget-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/usagestats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miuiusage-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->deleteOldFiles()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllStatsToUsageMapLocked()V
    .registers 6

    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    if-eqz v3, :cond_3d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_35

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_35
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    sget-object v4, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_43
    return-void
.end method

.method private static addStatsToUsageMapLocked(Ljava/lang/String;)V
    .registers 5

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    if-eqz v1, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static deleteOldFile()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x14997000

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/usagestats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "miuiusage-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_31
    return-void
.end method

.method private static deleteOldFiles()V
    .registers 8

    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->getRecentFileNames()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/system/usagestats"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_40

    const/4 v5, 0x0

    array-length v6, v2

    :goto_14
    if-ge v5, v6, :cond_40

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    :cond_22
    :goto_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_25
    const-string/jumbo v7, "miuiusage-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_22

    :cond_40
    return-void
.end method

.method private static getFormatDate(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, p0, p1}, Ljava/sql/Date;-><init>(J)V

    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getRecentFileNames()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x4

    if-gt v0, v2, :cond_31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miuiusage-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_31
    return-object v1
.end method

.method public static startUsageStats(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v2

    if-nez p1, :cond_7

    monitor-exit v2

    return-void

    :cond_7
    :try_start_7
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    new-instance v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    invoke-direct {v0}, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;-><init>()V

    iput-object p0, v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->action:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->startTime:J

    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v2

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static startWriteThreadIfNeed(Z)V
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    if-eqz p0, :cond_d

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_9
    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->addAllStatsToUsageMapLocked()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_29

    monitor-exit v2

    :cond_d
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1e

    if-eqz p0, :cond_28

    :cond_1e
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mWriteThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->run()V

    :cond_28
    return-void

    :catchall_29
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static stopUsageStats(Ljava/lang/String;)V
    .registers 3

    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v1

    if-nez p0, :cond_7

    monitor-exit v1

    return-void

    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/android/server/am/MiuiUsageStats;->addStatsToUsageMapLocked(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiUsageStats;->startWriteThreadIfNeed(Z)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateChargingStats(Landroid/os/BatteryProperties;)V
    .registers 3

    iget-boolean v1, p0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    if-eqz v1, :cond_16

    const-string/jumbo v0, "AC"

    :goto_7
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    if-eq v1, v0, :cond_15

    if-eqz v0, :cond_28

    const-string/jumbo v1, "charging"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiUsageStats;->startUsageStats(Ljava/lang/String;Ljava/lang/String;)V

    :goto_13
    sput-object v0, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    :cond_15
    return-void

    :cond_16
    iget-boolean v1, p0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    if-eqz v1, :cond_1e

    const-string/jumbo v0, "USB"

    goto :goto_7

    :cond_1e
    iget-boolean v1, p0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    if-eqz v1, :cond_26

    const-string/jumbo v0, "WIRELESS"

    goto :goto_7

    :cond_26
    const/4 v0, 0x0

    goto :goto_7

    :cond_28
    sget-object v1, Lcom/android/server/am/MiuiUsageStats;->mLastPlugType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/MiuiUsageStats;->stopUsageStats(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static writeFile(Ljava/io/File;)V
    .registers 23

    const/4 v14, 0x0

    :try_start_1
    new-instance v15, Ljava/io/FileWriter;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_14f
    .catchall {:try_start_1 .. :try_end_c} :catchall_14c

    :try_start_c
    new-instance v13, Landroid/util/ArrayMap;

    sget-object v16, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    sget-object v17, Lcom/android/server/am/MiuiUsageStats;->mStats:Landroid/util/ArrayMap;

    monitor-enter v17
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_68
    .catchall {:try_start_c .. :try_end_18} :catchall_76

    :try_start_18
    sget-object v16, Lcom/android/server/am/MiuiUsageStats;->mUsageStatsMap:Landroid/util/ArrayMap;

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->clear()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_73

    :try_start_1d
    monitor-exit v17

    sget-object v17, Lcom/android/server/am/MiuiUsageStats;->mFileLock:Ljava/lang/Object;

    monitor-enter v17
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_21} :catch_68
    .catchall {:try_start_1d .. :try_end_21} :catchall_76

    :try_start_21
    invoke-virtual {v13}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_132

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_7e

    const-string/jumbo v16, "MiuiUsageStats"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "writeFile "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " is empty!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_21 .. :try_end_64} :catchall_65

    goto :goto_29

    :catchall_65
    move-exception v16

    :try_start_66
    monitor-exit v17

    throw v16
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_68} :catch_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_76

    :catch_68
    move-exception v4

    move-object v14, v15

    :goto_6a
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_14c

    if-eqz v14, :cond_72

    :try_start_6f
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_140

    :cond_72
    :goto_72
    return-void

    :catchall_73
    move-exception v16

    :try_start_74
    monitor-exit v17

    throw v16
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_76} :catch_68
    .catchall {:try_start_74 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v16

    move-object v14, v15

    :goto_78
    if-eqz v14, :cond_7d

    :try_start_7a
    invoke-virtual {v14}, Ljava/io/FileWriter;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_146

    :cond_7d
    :goto_7d
    throw v16

    :cond_7e
    :try_start_7e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v7, 0x0

    :goto_83
    if-ge v7, v12, :cond_12d

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "action="

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v5, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " name="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " startTime="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v5, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->startTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, " endTime="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v5, Lcom/android/server/am/MiuiUsageStats$UsageStatsItem;->endTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/16 v16, 0xa

    invoke-virtual/range {v15 .. v16}, Ljava/io/FileWriter;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_83

    :cond_12d
    invoke-virtual {v13, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_130
    .catchall {:try_start_7e .. :try_end_130} :catchall_65

    goto/16 :goto_29

    :cond_132
    :try_start_132
    monitor-exit v17
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_133} :catch_68
    .catchall {:try_start_132 .. :try_end_133} :catchall_76

    if-eqz v15, :cond_138

    :try_start_135
    invoke-virtual {v15}, Ljava/io/FileWriter;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_13b

    :cond_138
    :goto_138
    move-object v14, v15

    goto/16 :goto_72

    :catch_13b
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_138

    :catch_140
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_72

    :catch_146
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7d

    :catchall_14c
    move-exception v16

    goto/16 :goto_78

    :catch_14f
    move-exception v4

    goto/16 :goto_6a
.end method

.method private static writeStatsToFile()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/am/MiuiUsageStats;->getFormatDate(J)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mLastWriteDay:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_33

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/system/usagestats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "miuiusage-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    invoke-static {}, Lcom/android/server/am/MiuiUsageStats;->deleteOldFile()V

    :cond_33
    sget-object v2, Lcom/android/server/am/MiuiUsageStats;->mHistory:Ljava/io/File;

    invoke-static {v2}, Lcom/android/server/am/MiuiUsageStats;->writeFile(Ljava/io/File;)V

    return-void
.end method
