.class public interface abstract Lcom/android/keyguard/util/wakelock/WakeLock;
.super Ljava/lang/Object;
.source "WakeLock.java"


# direct methods
.method public static createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/keyguard/util/wakelock/WakeLock;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/keyguard/util/wakelock/WakeLock;->createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;)Lcom/android/keyguard/util/wakelock/WakeLock;

    move-result-object v0

    return-object v0
.end method

.method public static createPartialInner(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$-com_android_keyguard_util_wakelock_WakeLock_1461(Lcom/android/keyguard/util/wakelock/WakeLock;Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lcom/android/keyguard/util/wakelock/WakeLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Lcom/android/keyguard/util/wakelock/WakeLock;->release()V

    throw v0
.end method

.method public static wrap(Landroid/os/PowerManager$WakeLock;)Lcom/android/keyguard/util/wakelock/WakeLock;
    .locals 1

    new-instance v0, Lcom/android/keyguard/util/wakelock/WakeLock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/wakelock/WakeLock$1;-><init>(Landroid/os/PowerManager$WakeLock;)V

    return-object v0
.end method

.method public static wrapImpl(Lcom/android/keyguard/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    invoke-interface {p0}, Lcom/android/keyguard/util/wakelock/WakeLock;->acquire()V

    new-instance v0, Lcom/android/keyguard/util/wakelock/-$Lambda$xPexRUol9u0oI1Mnnp_6jmGhXQs;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/util/wakelock/-$Lambda$xPexRUol9u0oI1Mnnp_6jmGhXQs;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract acquire()V
.end method

.method public abstract release()V
.end method

.method public abstract wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
.end method