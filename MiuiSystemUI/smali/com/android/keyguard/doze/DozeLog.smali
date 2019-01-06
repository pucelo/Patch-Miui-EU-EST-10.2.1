.class public Lcom/android/keyguard/doze/DozeLog;
.super Ljava/lang/Object;
.source "DozeLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/doze/DozeLog$SummaryStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final SIZE:I

.field private static sCount:I

.field private static sEmergencyCallStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

.field private static sMessages:[Ljava/lang/String;

.field private static sNotificationPulseStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNearVibrationStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

.field private static sPickupPulseNotNearVibrationStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

.field private static sPosition:I

.field private static sProxStats:[[Lcom/android/keyguard/doze/DozeLog$SummaryStats;

.field private static sRegisterKeyguardCallback:Z

.field private static sScreenOnNotPulsingStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

.field private static sScreenOnPulsingStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

.field private static sSince:J

.field private static sTimes:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "DozeLog"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/doze/DozeLog;->DEBUG:Z

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/keyguard/doze/DozeLog;->SIZE:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/doze/DozeLog;->FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/doze/DozeLog;->sRegisterKeyguardCallback:Z

    return-void

    :cond_0
    const/16 v0, 0x32

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x6

    const-class v2, Lcom/android/keyguard/doze/DozeLog;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/keyguard/doze/DozeLog;->sMessages:[Ljava/lang/String;

    if-nez v1, :cond_1

    sget v1, Lcom/android/keyguard/doze/DozeLog;->SIZE:I

    new-array v1, v1, [J

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sTimes:[J

    sget v1, Lcom/android/keyguard/doze/DozeLog;->SIZE:I

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sMessages:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/android/keyguard/doze/DozeLog;->sSince:J

    new-instance v1, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sPickupPulseNearVibrationStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    new-instance v1, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sPickupPulseNotNearVibrationStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    new-instance v1, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sNotificationPulseStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    new-instance v1, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sScreenOnPulsingStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    new-instance v1, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sScreenOnNotPulsingStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    new-instance v1, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sEmergencyCallStats:Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const-class v1, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v3, 0x6

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    sput-object v1, Lcom/android/keyguard/doze/DozeLog;->sProxStats:[[Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    sget-object v1, Lcom/android/keyguard/doze/DozeLog;->sProxStats:[[Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    new-instance v3, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    sget-object v1, Lcom/android/keyguard/doze/DozeLog;->sProxStats:[[Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    aget-object v1, v1, v0

    new-instance v3, Lcom/android/keyguard/doze/DozeLog$SummaryStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/keyguard/doze/DozeLog$SummaryStats;-><init>(Lcom/android/keyguard/doze/DozeLog$SummaryStats;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "init"

    invoke-static {v1}, Lcom/android/keyguard/doze/DozeLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 6

    const-class v1, Lcom/android/keyguard/doze/DozeLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/keyguard/doze/DozeLog;->sMessages:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/keyguard/doze/DozeLog;->sTimes:[J

    sget v2, Lcom/android/keyguard/doze/DozeLog;->sPosition:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    aput-wide v4, v0, v2

    sget-object v0, Lcom/android/keyguard/doze/DozeLog;->sMessages:[Ljava/lang/String;

    sget v2, Lcom/android/keyguard/doze/DozeLog;->sPosition:I

    aput-object p0, v0, v2

    sget v0, Lcom/android/keyguard/doze/DozeLog;->sPosition:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/keyguard/doze/DozeLog;->SIZE:I

    rem-int/2addr v0, v2

    sput v0, Lcom/android/keyguard/doze/DozeLog;->sPosition:I

    sget v0, Lcom/android/keyguard/doze/DozeLog;->sCount:I

    add-int/lit8 v0, v0, 0x1

    sget v2, Lcom/android/keyguard/doze/DozeLog;->SIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/android/keyguard/doze/DozeLog;->sCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    sget-boolean v0, Lcom/android/keyguard/doze/DozeLog;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DozeLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static traceMissedTick(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "missedTick by="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static tracePulseDropped(Landroid/content/Context;ZLcom/android/keyguard/doze/DozeMachine$State;Z)V
    .locals 2

    invoke-static {p0}, Lcom/android/keyguard/doze/DozeLog;->init(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pulseDropped pulsePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " blocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static traceState(Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/doze/DozeLog;->log(Ljava/lang/String;)V

    return-void
.end method
