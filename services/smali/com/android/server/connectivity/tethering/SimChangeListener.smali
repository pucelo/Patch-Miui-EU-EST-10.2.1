.class public Lcom/android/server/connectivity/tethering/SimChangeListener;
.super Ljava/lang/Object;
.source "SimChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTarget:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/connectivity/tethering/SimChangeListener;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/connectivity/tethering/SimChangeListener;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/tethering/SimChangeListener;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/SimChangeListener;->isSimCardLoaded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/connectivity/tethering/SimChangeListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/SimChangeListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mTarget:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mCallback:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private isSimCardLoaded(Ljava/lang/String;)Z
    .registers 3

    const-string/jumbo v0, "LOADED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public generationNumber()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public startListening()V
    .registers 6

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance v1, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/SimChangeListener$SimChangeBroadcastReceiver;-><init>(Lcom/android/server/connectivity/tethering/SimChangeListener;I)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mTarget:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public stopListening()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/SimChangeListener;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method
