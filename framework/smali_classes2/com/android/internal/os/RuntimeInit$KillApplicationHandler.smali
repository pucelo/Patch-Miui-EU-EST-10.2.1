.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 9

    const/16 v5, 0xa

    :try_start_2
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get1()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_3f
    .catchall {:try_start_2 .. :try_end_5} :catchall_5b

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    return-void

    :cond_13
    const/4 v2, 0x1

    :try_start_14
    invoke-static {v2}, Lcom/android/internal/os/RuntimeInit;->-set0(Z)Z

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->stopProfiling()V

    :cond_24
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-get0()Landroid/os/IBinder;

    move-result-object v3

    new-instance v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v4, p2}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_34} :catch_3f
    .catchall {:try_start_14 .. :try_end_34} :catchall_5b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    :try_start_40
    instance-of v2, v0, Landroid/os/DeadObjectException;
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_5b

    if-eqz v2, :cond_4f

    :goto_44
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_3e

    :cond_4f
    :try_start_4f
    const-string/jumbo v2, "AndroidRuntime"

    const-string/jumbo v3, "Error reporting crash"

    invoke-static {v2, v3, v0}, Lcom/android/internal/os/RuntimeInit;->-wrap0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_58} :catch_59
    .catchall {:try_start_4f .. :try_end_58} :catchall_5b

    goto :goto_44

    :catch_59
    move-exception v1

    goto :goto_44

    :catchall_5b
    move-exception v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    throw v2
.end method
