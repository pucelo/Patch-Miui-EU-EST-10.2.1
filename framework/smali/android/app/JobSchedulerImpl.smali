.class public Landroid/app/JobSchedulerImpl;
.super Landroid/app/job/JobScheduler;
.source "JobSchedulerImpl.java"


# instance fields
.field mBinder:Landroid/app/job/IJobScheduler;


# direct methods
.method constructor <init>(Landroid/app/job/IJobScheduler;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/job/JobScheduler;-><init>()V

    iput-object p1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    return-void
.end method


# virtual methods
.method public cancel(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1, p1}, Landroid/app/job/IJobScheduler;->cancel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public cancelAll()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1}, Landroid/app/job/IJobScheduler;->cancelAll()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1, p1, p2}, Landroid/app/job/IJobScheduler;->enqueue(Landroid/app/job/JobInfo;Landroid/app/job/JobWorkItem;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getAllPendingJobs()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1}, Landroid/app/job/IJobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getPendingJob(I)Landroid/app/job/JobInfo;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1, p1}, Landroid/app/job/IJobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public schedule(Landroid/app/job/JobInfo;)I
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1, p1}, Landroid/app/job/IJobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/app/JobSchedulerImpl;->mBinder:Landroid/app/job/IJobScheduler;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/job/IJobScheduler;->scheduleAsPackage(Landroid/app/job/JobInfo;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method
