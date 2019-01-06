.class public interface abstract Lcom/android/server/job/JobSchedulerInternal;
.super Ljava/lang/Object;
.source "JobSchedulerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
    }
.end annotation


# virtual methods
.method public abstract addBackingUpUid(I)V
.end method

.method public abstract cancelJob(II)V
.end method

.method public abstract clearAllBackingUpUids()V
.end method

.method public abstract getPersistStats()Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
.end method

.method public abstract getSystemScheduledPendingJobs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeBackingUpUid(I)V
.end method
