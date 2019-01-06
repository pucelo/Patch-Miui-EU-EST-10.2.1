.class public Lcom/android/server/am/JobServiceContextInjectorCompat;
.super Ljava/lang/Object;
.source "JobServiceContextInjectorCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelJob(II)V
    .registers 4

    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    if-eqz v0, :cond_d

    invoke-interface {v0, p0, p1}, Lcom/android/server/job/JobSchedulerInternal;->cancelJob(II)V

    :cond_d
    return-void
.end method
