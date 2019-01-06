.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemClock"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native currentThreadTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native currentThreadTimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native currentTimeMicro()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native elapsedRealtime()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native elapsedRealtimeNanos()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static setCurrentTimeMillis(J)Z
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v3

    if-nez v3, :cond_f

    return v6

    :cond_f
    :try_start_f
    invoke-interface {v3, p0, p1}, Landroid/app/IAlarmManager;->setTime(J)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_1f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_12} :catch_14

    move-result v4

    return v4

    :catch_14
    move-exception v2

    const-string/jumbo v4, "SystemClock"

    const-string/jumbo v5, "Unable to set RTC"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return v6

    :catch_1f
    move-exception v1

    const-string/jumbo v4, "SystemClock"

    const-string/jumbo v5, "Unable to set RTC"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public static sleep(J)V
    .registers 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v0, p0

    const/4 v3, 0x0

    :cond_6
    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_21

    :goto_9
    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_6

    if-eqz v3, :cond_20

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_20
    return-void

    :catch_21
    move-exception v2

    const/4 v3, 0x1

    goto :goto_9
.end method

.method public static native uptimeMillis()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method
