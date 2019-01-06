.class public Lcom/android/server/camera/CameraStatsJobService;
.super Landroid/app/job/JobService;
.source "CameraStatsJobService.java"


# static fields
.field private static final CAMERA_REPORTING_JOB_ID:I = 0xca3e7a

.field private static final TAG:Ljava/lang/String; = "CameraStatsJobService"

.field private static sCameraStatsJobServiceName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/camera/CameraStatsJobService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static schedule(Landroid/content/Context;)V
    .registers 7

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-nez v0, :cond_15

    const-string/jumbo v1, "CameraStatsJobService"

    const-string/jumbo v2, "Can\'t collect camera usage stats - no Job Scheduler"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget-object v2, Lcom/android/server/camera/CameraStatsJobService;->sCameraStatsJobServiceName:Landroid/content/ComponentName;

    const v3, 0xca3e7a

    invoke-direct {v1, v3, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    const/4 v3, 0x0

    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/camera/CameraServiceProxy;

    if-nez v0, :cond_15

    const-string/jumbo v1, "CameraStatsJobService"

    const-string/jumbo v2, "Can\'t collect camera usage stats - no camera service proxy found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_15
    invoke-virtual {v0}, Lcom/android/server/camera/CameraServiceProxy;->dumpUsageEvents()V

    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
