.class public Lcom/android/keyguard/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/android/keyguard/doze/DozeMachine$Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/doze/DozeService$1;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mAcquire:Z

.field private mDozeMachine:Lcom/android/keyguard/doze/DozeMachine;

.field private mDreamStart:Z

.field private mHander:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/doze/DozeService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/doze/DozeService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/doze/DozeService;->mAcquire:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/doze/DozeService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/doze/DozeService;->start()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "DozeService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/doze/DozeService;->mDreamStart:Z

    new-instance v0, Lcom/android/keyguard/doze/DozeService$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/doze/DozeService$1;-><init>(Lcom/android/keyguard/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mRunnable:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/android/keyguard/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/doze/DozeService;->setDebug(Z)V

    return-void
.end method

.method private start()V
    .locals 4

    invoke-super {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeService;->mAcquire:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mHander:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/doze/DozeService$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/doze/DozeService$2;-><init>(Lcom/android/keyguard/doze/DozeService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mDozeMachine:Lcom/android/keyguard/doze/DozeMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mDozeMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    invoke-virtual {p0, v7}, Lcom/android/keyguard/doze/DozeService;->setWindowless(Z)V

    invoke-static {p0}, Lcom/android/keyguard/doze/DozeFactory;->getHost(Lcom/android/keyguard/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->finish()V

    return-void

    :cond_0
    sget-boolean v4, Lcom/android/systemui/Constants;->SUPPORT_AOD:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/keyguard/MiuiKeyguardUtils;->AOD_MODE:Ljava/lang/String;

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isInvertColorsEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->getKeyguardNotificationStatus(Landroid/content/ContentResolver;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->finish()V

    return-void

    :cond_4
    new-instance v3, Lcom/android/keyguard/doze/DozeFactory;

    invoke-direct {v3}, Lcom/android/keyguard/doze/DozeFactory;-><init>()V

    invoke-virtual {v3, p0}, Lcom/android/keyguard/doze/DozeFactory;->assembleMachine(Lcom/android/keyguard/doze/DozeService;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/doze/DozeService;->mDozeMachine:Lcom/android/keyguard/doze/DozeMachine;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/doze/DozeService;->mHander:Landroid/os/Handler;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/keyguard/doze/DozeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/keyguard/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/keyguard/doze/DozeService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v4, "DozeService"

    invoke-virtual {v3, v7, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public onDreamingStarted()V
    .locals 2

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/doze/DozeService;->mDreamStart:Z

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mDozeMachine:Lcom/android/keyguard/doze/DozeMachine;

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->INITIALIZED:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    invoke-virtual {p0}, Lcom/android/keyguard/doze/DozeService;->startDozing()V

    return-void
.end method

.method public onDreamingStopped()V
    .locals 2

    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/doze/DozeService;->mDreamStart:Z

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mDozeMachine:Lcom/android/keyguard/doze/DozeMachine;

    sget-object v1, Lcom/android/keyguard/doze/DozeMachine$State;->FINISH:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    return-void
.end method

.method public requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mDozeMachine:Lcom/android/keyguard/doze/DozeMachine;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/doze/DozeMachine;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeService;->mDreamStart:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenBrightness(I)V

    :cond_0
    return-void
.end method

.method public startDozing()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/doze/DozeService;->mAcquire:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/doze/DozeService;->mAcquire:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeService;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/doze/DozeService;->mHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/doze/DozeService;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
