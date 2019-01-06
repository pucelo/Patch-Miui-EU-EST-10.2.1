.class public Lcom/miui/server/enterprise/RestrictionManagerServiceProxy;
.super Ljava/lang/Object;
.source "RestrictionManagerServiceProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setScreenCaptureDisabled(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;IZ)V
    .registers 4

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setScreenCaptureDisabled(IZ)V

    return-void
.end method

.method static setWifiApEnabled(Landroid/content/Context;Z)V
    .registers 4

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method
