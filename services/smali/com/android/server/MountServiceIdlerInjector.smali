.class Lcom/android/server/MountServiceIdlerInjector;
.super Ljava/lang/Object;
.source "MountServiceIdlerInjector.java"


# static fields
.field private static final FINISH_INTERVAL_TIME:J = 0x6ddd00L

.field private static final MINIMUM_BATTERY_LEVEL:I = 0xa

.field private static final MINIMUM_INTERVAL_TIME:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "MountServiceIdlerInjector"

.field private static sNextTrimDuration:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canExecuteAsyncDiscard(Landroid/content/Context;)Z
    .registers 6

    const-string/jumbo v4, "batterymanager"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_23

    const/16 v4, 0xa

    if-lt v0, v4, :cond_23

    const/4 v4, 0x1

    return v4

    :cond_23
    const/4 v4, 0x0

    return v4
.end method

.method public static halveNextTrimDuration()V
    .registers 3

    sget-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    const/4 v2, 0x1

    shr-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    return-void
.end method

.method public static internalScheduleIdlePass(Landroid/content/Context;ILandroid/content/ComponentName;)V
    .registers 11

    const-wide/32 v6, 0x1b7740

    const-string/jumbo v2, "MountServiceIdlerInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sNextTrimDuration :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "jobscheduler"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    sget-wide v2, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_30

    sput-wide v6, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    :cond_30
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, p1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-wide v2, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method

.method public static resetNextTrimDuration()V
    .registers 2

    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/android/server/MountServiceIdlerInjector;->sNextTrimDuration:J

    return-void
.end method
