.class public final Landroid/printservice/PrintJob;
.super Ljava/lang/Object;
.source "PrintJob.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintJob"


# instance fields
.field private mCachedInfo:Landroid/print/PrintJobInfo;

.field private final mContext:Landroid/content/Context;

.field private final mDocument:Landroid/printservice/PrintDocument;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    iput-object p3, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    new-instance v0, Landroid/printservice/PrintDocument;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {p2}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    move-result-object v2

    invoke-direct {v0, v1, p3, v2}, Landroid/printservice/PrintDocument;-><init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V

    iput-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    return-void
.end method

.method private isInImmutableState()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

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
    const/4 v2, 0x6

    if-eq v0, v2, :cond_d

    const/4 v1, 0x0

    goto :goto_d
.end method

.method private setState(ILjava/lang/String;)Z
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/printservice/IPrintServiceClient;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1, p1}, Landroid/print/PrintJobInfo;->setState(I)V

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1, p2}, Landroid/print/PrintJobInfo;->setStatus(Ljava/lang/CharSequence;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_18} :catch_1a

    const/4 v1, 0x1

    return v1

    :catch_1a
    move-exception v0

    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting the state of job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3b
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public block(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x4

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_11

    if-ne v1, v3, :cond_16

    :cond_11
    invoke-direct {p0, v3, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v2

    return v2

    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method public cancel()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public complete()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
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
    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v3

    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/printservice/PrintJob;

    iget-object v1, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    iget-object v2, v0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public fail(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedIntOption(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Landroid/printservice/PrintDocument;
    .registers 2

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-object v0, p0, Landroid/printservice/PrintJob;->mDocument:Landroid/printservice/PrintDocument;

    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .registers 2

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Landroid/print/PrintJobInfo;
    .registers 6

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v2

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    iget-object v2, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfo(Landroid/print/PrintJobId;)Landroid/print/PrintJobInfo;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_18} :catch_20

    move-result-object v0

    :goto_19
    if-eqz v0, :cond_1d

    iput-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    :cond_1d
    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    return-object v2

    :catch_20
    move-exception v1

    const-string/jumbo v2, "PrintJob"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t get info for job: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/print/PrintJobInfo;->hasAdvancedOption(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobId;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBlocked()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isCancelled()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isCompleted()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isFailed()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isQueued()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isStarted()Z
    .registers 3

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setProgress(F)V
    .registers 6

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    :try_start_3
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting progress for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setStatus(I)V
    .registers 6

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    :try_start_3
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Landroid/printservice/IPrintServiceClient;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting status for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .registers 6

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    :try_start_3
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting status for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public setTag(Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-direct {p0}, Landroid/printservice/PrintJob;->isInImmutableState()Z

    move-result v1

    if-eqz v1, :cond_b

    return v4

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/printservice/PrintJob;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v2, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v2}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/printservice/IPrintServiceClient;->setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18

    move-result v1

    return v1

    :catch_18
    move-exception v0

    const-string/jumbo v1, "PrintJob"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error setting tag for job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/printservice/PrintJob;->mCachedInfo:Landroid/print/PrintJobInfo;

    invoke-virtual {v3}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public start()Z
    .registers 4

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    invoke-virtual {p0}, Landroid/printservice/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    :cond_11
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/printservice/PrintJob;->setState(ILjava/lang/String;)Z

    move-result v1

    return v1

    :cond_18
    const/4 v1, 0x0

    return v1
.end method
