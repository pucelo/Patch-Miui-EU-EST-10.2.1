.class public Lcom/android/keyguard/charge/ChargeHelper;
.super Ljava/lang/Object;
.source "ChargeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/charge/ChargeHelper$1;,
        Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/keyguard/charge/ChargeHelper;


# instance fields
.field private final mExtremePowerReceiver:Landroid/content/BroadcastReceiver;

.field private mExtremePowerSaveModeChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsExtremePowerSaveMode:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/ChargeHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/ChargeHelper;->mExtremePowerSaveModeChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/charge/ChargeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/ChargeHelper;->mIsExtremePowerSaveMode:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/charge/ChargeHelper;->sInstance:Lcom/android/keyguard/charge/ChargeHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/charge/ChargeHelper;->mExtremePowerSaveModeChangeCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/keyguard/charge/ChargeHelper$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/ChargeHelper$1;-><init>(Lcom/android/keyguard/charge/ChargeHelper;)V

    iput-object v2, p0, Lcom/android/keyguard/charge/ChargeHelper;->mExtremePowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "EXTREME_POWER_MODE_ENABLE"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/charge/ChargeHelper;->mIsExtremePowerSaveMode:Z

    iget-object v1, p0, Lcom/android/keyguard/charge/ChargeHelper;->mExtremePowerReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "miui.intent.action.EXTREME_POWER_SAVE_MODE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/charge/ChargeHelper;
    .locals 2

    sget-object v0, Lcom/android/keyguard/charge/ChargeHelper;->sInstance:Lcom/android/keyguard/charge/ChargeHelper;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/keyguard/charge/ChargeHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/keyguard/charge/ChargeHelper;->sInstance:Lcom/android/keyguard/charge/ChargeHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/charge/ChargeHelper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/ChargeHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/charge/ChargeHelper;->sInstance:Lcom/android/keyguard/charge/ChargeHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/keyguard/charge/ChargeHelper;->sInstance:Lcom/android/keyguard/charge/ChargeHelper;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isExtremePowerModeEnabled(Landroid/content/Context;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/ChargeHelper;->mIsExtremePowerSaveMode:Z

    return v0
.end method

.method public registerWallpaperChangeCallback(Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/ChargeHelper;->mExtremePowerSaveModeChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/ChargeHelper;->mExtremePowerSaveModeChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;->onModeChange()V

    :cond_0
    return-void
.end method
