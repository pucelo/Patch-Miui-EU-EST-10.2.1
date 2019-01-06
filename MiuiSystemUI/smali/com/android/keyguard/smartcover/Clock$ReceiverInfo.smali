.class Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/smartcover/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiverInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$1;,
        Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$2;
    }
.end annotation


# instance fields
.field private final mAttachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/smartcover/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$1;-><init>(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo$2;-><init>(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)V

    iput-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Lcom/android/keyguard/smartcover/Clock;)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/smartcover/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->register(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    return-void
.end method

.method register(Landroid/content/Context;)V
    .locals 6

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public removeView(Lcom/android/keyguard/smartcover/Clock;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/keyguard/smartcover/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->unregister(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method unregister(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateAll()V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/smartcover/Clock$ReceiverInfo;->mAttachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/smartcover/Clock;

    invoke-virtual {v2}, Lcom/android/keyguard/smartcover/Clock;->updateClock()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
