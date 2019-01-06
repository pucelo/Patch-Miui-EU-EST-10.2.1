.class public Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalOnlyHotspotObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;)V
    .registers 2

    return-void
.end method

.method public onStarted(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    return-void
.end method

.method public onStopped()V
    .registers 1

    return-void
.end method
