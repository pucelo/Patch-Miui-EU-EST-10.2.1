.class final Landroid/os/StrictMode$9;
.super Ljava/lang/Thread;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Landroid/os/StrictMode$ViolationInfo;

.field final synthetic val$violationMaskSubset:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 4

    iput p2, p0, Landroid/os/StrictMode$9;->val$violationMaskSubset:I

    iput-object p3, p0, Landroid/os/StrictMode$9;->val$info:Landroid/os/StrictMode$ViolationInfo;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/16 v3, 0xa

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_3d

    const-string/jumbo v3, "StrictMode"

    const-string/jumbo v4, "No activity manager; failed to Dropbox violation."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_49

    :cond_14
    :goto_14
    invoke-static {}, Landroid/os/StrictMode;->-get3()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    invoke-static {}, Landroid/os/StrictMode;->-get1()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string/jumbo v3, "StrictMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dropbox complete; in-flight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void

    :cond_3d
    :try_start_3d
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v3

    iget v4, p0, Landroid/os/StrictMode$9;->val$violationMaskSubset:I

    iget-object v5, p0, Landroid/os/StrictMode$9;->val$info:Landroid/os/StrictMode$ViolationInfo;

    invoke-interface {v0, v3, v4, v5}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_48} :catch_49

    goto :goto_14

    :catch_49
    move-exception v1

    instance-of v3, v1, Landroid/os/DeadObjectException;

    if-nez v3, :cond_14

    const-string/jumbo v3, "StrictMode"

    const-string/jumbo v4, "RemoteException handling StrictMode violation"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method
