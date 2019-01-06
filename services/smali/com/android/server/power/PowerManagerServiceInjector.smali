.class public Lcom/android/server/power/PowerManagerServiceInjector;
.super Ljava/lang/Object;
.source "PowerManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerServiceInjector$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PowerManagerServiceInjector"

.field private static sHandler:Landroid/os/Handler;

.field private static sLock:Ljava/lang/Object;

.field private static sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private static sPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private static sUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

.field private static sUidStateHelper:Lcom/android/server/UidStateHelper;

.field private static sWakeLocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy;
    .registers 1

    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object p0
.end method

.method static synthetic -set1(Lcom/android/server/UidStateHelper;)Lcom/android/server/UidStateHelper;
    .registers 1

    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/power/PowerManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateChangeCallback:Lcom/android/internal/app/IUidStateChangeCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPartialWakeLockHoldByUid(I)I
    .registers 9

    const/4 v2, 0x0

    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_4
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v4, :cond_1e

    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v5, p0, :cond_a

    :cond_1e
    if-eqz v4, :cond_27

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-ne v5, p0, :cond_a

    :cond_27
    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_36

    const v7, 0xffff

    and-int v3, v5, v7

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_34
    monitor-exit v6

    return v2

    :catchall_36
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private static getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I
    .registers 6

    const/4 v4, 0x0

    new-array v2, v4, [I

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v3, :cond_f

    const/4 v3, 0x1

    new-array v2, v3, [I

    iget v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    aput v3, v2, v4

    :cond_e
    return-object v2

    :cond_f
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3}, Landroid/os/WorkSource;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v0, :cond_e

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public static getScreenWakeLockHoldByUid(I)I
    .registers 9

    const/4 v2, 0x0

    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_4
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget-object v4, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    if-nez v4, :cond_1e

    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v5, p0, :cond_a

    :cond_1e
    if-eqz v4, :cond_27

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/WorkSource;->get(I)I

    move-result v5

    if-ne v5, p0, :cond_a

    :cond_27
    iget v5, v0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_37

    const v7, 0xffff

    and-int v3, v5, v7

    sparse-switch v3, :sswitch_data_3a

    goto :goto_a

    :sswitch_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_35
    monitor-exit v6

    return v2

    :catchall_37
    move-exception v5

    monitor-exit v6

    throw v5

    :sswitch_data_3a
    .sparse-switch
        0x6 -> :sswitch_32
        0xa -> :sswitch_32
        0x1a -> :sswitch_32
    .end sparse-switch
.end method

.method public static init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/PowerManagerService;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    sput-object p0, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    sput-object p1, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    sput-object p2, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/power/PowerManagerServiceInjector;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/power/PowerManagerServiceInjector$2;

    invoke-direct {v1}, Lcom/android/server/power/PowerManagerServiceInjector$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static isBackgroundScreenWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_7
    if-ge v3, v4, :cond_1a

    aget v1, v2, v3

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    if-eqz v5, :cond_17

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sUidStateHelper:Lcom/android/server/UidStateHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/android/server/UidStateHelper;->isUidForeground(IZ)Z

    move-result v5

    or-int/2addr v0, v5

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1a
    xor-int/lit8 v3, v0, 0x1

    return v3
.end method

.method public static isShutdownOrRebootPermitted(Landroid/content/Context;ZZLjava/lang/String;Z)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_5

    return v4

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_c

    return v4

    :cond_c
    if-eqz p1, :cond_26

    const-string/jumbo v2, "com.xiaomi.system.devicelock.locked"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_25

    new-instance v2, Lcom/android/server/power/PowerManagerServiceInjector$3;

    invoke-direct {v2, p0}, Lcom/android/server/power/PowerManagerServiceInjector$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_25
    return v3

    :cond_26
    return v4
.end method

.method static isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_7
    if-ge v3, v4, :cond_3f

    aget v1, v2, v3

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-eqz v5, :cond_40

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->isWakelockDisabledByPolicy(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_40

    const/4 v0, 0x1

    const-string/jumbo v3, "PowerManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wakeLock:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] is disabled by policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return v0

    :cond_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method public static recordShutDownTime()V
    .registers 12

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-instance v3, Ljava/io/File;

    const-string/jumbo v9, "/cache/recovery/last_utime"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1c

    const-string/jumbo v9, "PowerManagerServiceInjector"

    const-string/jumbo v10, "last_utime doesn\'t exist"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    :try_start_1c
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_43

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v9, v6, v10

    if-gtz v9, :cond_50

    const-string/jumbo v9, "PowerManagerServiceInjector"

    const-string/jumbo v10, "last_utime has invalid content"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_43
    const-string/jumbo v9, "PowerManagerServiceInjector"

    const-string/jumbo v10, "last_utime is blank"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    return-void

    :cond_50
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v9, "/cache/recovery/last_shutdowntime"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v9

    if-nez v9, :cond_96

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string/jumbo v9, "PowerManagerServiceInjector"

    const-string/jumbo v10, "set last_shutdowntime readable failed"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_8a} :catch_8b

    return-void

    :catch_8b
    move-exception v1

    const-string/jumbo v9, "PowerManagerServiceInjector"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    return-void
.end method

.method static restoreScreenWakeLockDisabledState(I)V
    .registers 11

    const/4 v6, 0x0

    sget-object v7, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v7

    const/4 v0, 0x0

    :try_start_5
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v8, 0xffff

    and-int/2addr v5, v8

    sparse-switch v5, :sswitch_data_76

    goto :goto_b

    :sswitch_21
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v2

    array-length v8, v2

    move v5, v6

    :goto_27
    if-ge v5, v8, :cond_b

    aget v1, v2, v5

    if-ne v1, p0, :cond_65

    iget-boolean v9, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v9, :cond_65

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v5

    or-int/2addr v0, v5

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    const-string/jumbo v5, "PowerManagerServiceInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screen wakeLock:["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] enabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5 .. :try_end_61} :catchall_62

    goto :goto_b

    :catchall_62
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_65
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_68
    if-eqz v0, :cond_74

    :try_start_6a
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_62

    :cond_74
    monitor-exit v7

    return-void

    :sswitch_data_76
    .sparse-switch
        0x6 -> :sswitch_21
        0xa -> :sswitch_21
        0x1a -> :sswitch_21
    .end sparse-switch
.end method

.method public static setUidPartialWakeLockDisabledState(ILjava/lang/String;Z)V
    .registers 12

    if-nez p1, :cond_24

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_24

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "can not disable all wakelock for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_24
    sget-object v6, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_27
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ca

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/PowerManagerService$WakeLock;

    const/4 v0, 0x0

    iget v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v7, 0xffff

    and-int/2addr v5, v7

    packed-switch v5, :pswitch_data_cc

    :cond_43
    :goto_43
    if-eqz v0, :cond_2d

    iget-boolean v5, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v5, :cond_9f

    const-string/jumbo v5, "PowerManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set partial wakelock disabled:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_73
    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_7d
    .catchall {:try_start_27 .. :try_end_7d} :catchall_7e

    goto :goto_2d

    :catchall_7e
    move-exception v5

    monitor-exit v6

    throw v5

    :pswitch_81
    :try_start_81
    invoke-static {v3}, Lcom/android/server/power/PowerManagerServiceInjector;->getRealOwners(Lcom/android/server/power/PowerManagerService$WakeLock;)[I

    move-result-object v2

    const/4 v5, 0x0

    array-length v7, v2

    :goto_87
    if-ge v5, v7, :cond_43

    aget v1, v2, v5

    if-ne v1, p0, :cond_9c

    if-eqz p1, :cond_97

    iget-object v8, v3, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c

    :cond_97
    invoke-static {v3, p2}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v0

    goto :goto_43

    :cond_9c
    add-int/lit8 v5, v5, 0x1

    goto :goto_87

    :cond_9f
    const-string/jumbo v5, "PowerManagerServiceInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set partial wakelock enabled:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V
    :try_end_c9
    .catchall {:try_start_81 .. :try_end_c9} :catchall_7e

    goto :goto_73

    :cond_ca
    monitor-exit v6

    return-void

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_81
    .end packed-switch
.end method

.method private static setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v1, p1, :cond_8

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    :cond_8
    return v0
.end method

.method public static updateAllPartialWakeLockDisableState()V
    .registers 7

    sget-object v5, Lcom/android/server/power/PowerManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_4
    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v6, 0xffff

    and-int/2addr v4, v6

    packed-switch v4, :pswitch_data_3c

    goto :goto_a

    :pswitch_20
    invoke-static {v2}, Lcom/android/server/power/PowerManagerServiceInjector;->isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v4

    or-int/2addr v0, v4

    goto :goto_a

    :cond_2a
    if-eqz v0, :cond_36

    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    sget-object v4, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v4}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit v5

    return-void

    :catchall_38
    move-exception v4

    monitor-exit v5

    throw v4

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method

.method static updateAllScreenWakeLockDisabledStateLocked()V
    .registers 6

    const/4 v0, 0x0

    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sWakeLocks:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService$WakeLock;

    iget v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v4, 0xffff

    and-int/2addr v3, v4

    sparse-switch v3, :sswitch_data_52

    goto :goto_7

    :sswitch_1d
    iget v3, v1, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_7

    const-string/jumbo v3, "PowerManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screen wakeLock:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService$WakeLock;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] not by window manager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_49
    if-eqz v0, :cond_50

    sget-object v3, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    :cond_50
    return-void

    nop

    :sswitch_data_52
    .sparse-switch
        0x6 -> :sswitch_1d
        0xa -> :sswitch_1d
        0x1a -> :sswitch_1d
    .end sparse-switch
.end method

.method static updateWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    .registers 6

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v3, 0xffff

    and-int/2addr v2, v3

    packed-switch v2, :pswitch_data_2e

    :cond_a
    :goto_a
    if-eqz p1, :cond_1c

    if-eqz v0, :cond_1c

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_1c
    return-void

    :pswitch_1d
    invoke-static {p0}, Lcom/android/server/power/PowerManagerServiceInjector;->isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/power/PowerManagerServiceInjector;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v2, Lcom/android/server/power/PowerManagerServiceInjector;->sPowerManagerService:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDirtyLocked()V

    goto :goto_a

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1d
    .end packed-switch
.end method
