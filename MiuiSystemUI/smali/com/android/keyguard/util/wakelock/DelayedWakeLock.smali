.class public Lcom/android/keyguard/util/wakelock/DelayedWakeLock;
.super Ljava/lang/Object;
.source "DelayedWakeLock.java"

# interfaces
.implements Lcom/android/keyguard/util/wakelock/WakeLock;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mInner:Lcom/android/keyguard/util/wakelock/WakeLock;

.field private final mRelease:Ljava/lang/Runnable;


# direct methods
.method static synthetic -com_android_keyguard_util_wakelock_DelayedWakeLock-mthref-0(Lcom/android/keyguard/util/wakelock/WakeLock;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/keyguard/util/wakelock/WakeLock;->release()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/keyguard/util/wakelock/WakeLock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/keyguard/util/wakelock/WakeLock;

    iget-object v0, p0, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/keyguard/util/wakelock/WakeLock;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/keyguard/util/wakelock/-$Lambda$zY6HOMmyXmdEeiNPngiXqE_O2t4;

    invoke-direct {v1, v0}, Lcom/android/keyguard/util/wakelock/-$Lambda$zY6HOMmyXmdEeiNPngiXqE_O2t4;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->mRelease:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->mInner:Lcom/android/keyguard/util/wakelock/WakeLock;

    invoke-interface {v0}, Lcom/android/keyguard/util/wakelock/WakeLock;->acquire()V

    return-void
.end method

.method public release()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/util/wakelock/DelayedWakeLock;->mRelease:Ljava/lang/Runnable;

    const-wide/16 v2, 0x8c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/keyguard/util/wakelock/WakeLock;->wrapImpl(Lcom/android/keyguard/util/wakelock/WakeLock;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
