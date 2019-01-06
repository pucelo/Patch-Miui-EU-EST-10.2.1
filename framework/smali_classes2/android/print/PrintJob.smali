.class public final Landroid/print/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method constructor <init>(Landroid/print/PrintJobInfo;Landroid/print/PrintManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    iput-object p2, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    return-void
.end method

.method private isInImmutableState()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_d

    const/4 v2, 0x7

    if-ne v0, v2, :cond_e

    :cond_d
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public cancel()V
    .registers 4

    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1a

    :cond_e
    :goto_e
    iget-object v1, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->cancelPrintJob(Landroid/print/PrintJobId;)V

    :cond_19
    return-void

    :cond_1a
    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    goto :goto_e
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Landroid/print/PrintJob;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/print/PrintJob;

    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, v0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getId()Landroid/print/PrintJobId;
    .registers 2

    iget-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Landroid/print/PrintJobInfo;
    .registers 4

    invoke-direct {p0}, Landroid/print/PrintJob;->isInImmutableState()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v1

    :cond_9
    iget-object v1, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v2, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    iput-object v0, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    :cond_19
    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    move-result v1

    return v1
.end method

.method public isBlocked()Z
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isCancelled()Z
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isCompleted()Z
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isFailed()Z
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isQueued()Z
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isStarted()Z
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public restart()V
    .registers 3

    invoke-virtual {p0}, Landroid/print/PrintJob;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/print/PrintJob;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->restartPrintJob(Landroid/print/PrintJobId;)V

    :cond_11
    return-void
.end method
