.class public Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyServiceSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MiuiNetworkPolicySupport"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mUidObserver:Landroid/app/IUidObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport$1;-><init>(Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;)V

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mUidObserver:Landroid/app/IUidObserver;

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method public enablePowerSave(Z)V
    .registers 2

    invoke-static {p1}, Landroid/net/wifi/MiuiWifiManager;->enablePowerSave(Z)V

    return-void
.end method

.method public registerUidObserver()V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/net/MiuiNetworkPolicyServiceSupport;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public updateIface(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method
