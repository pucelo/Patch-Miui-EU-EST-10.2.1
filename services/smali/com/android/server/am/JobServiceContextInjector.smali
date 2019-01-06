.class public Lcom/android/server/am/JobServiceContextInjector;
.super Ljava/lang/Object;
.source "JobServiceContextInjector.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "JobServiceContext"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindService(Lcom/android/server/job/JobServiceContext;Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 12

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;II)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v0

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    :cond_24
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v6

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_5e

    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v0

    invoke-static {v0, v6}, Lcom/android/server/am/JobServiceContextInjectorCompat;->cancelJob(II)V

    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MIUILOG- Reject Start Job, cancelJob uid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " jobId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    const/4 v0, 0x0

    return v0
.end method
