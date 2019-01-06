.class public Landroid/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "ConnectivityManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityManagerCompat$OnStartTetheringCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZLandroid/net/ConnectivityManagerCompat$OnStartTetheringCallback;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    return-void
.end method

.method public static startTethering(Landroid/net/wifi/WifiManager;)V
    .locals 0

    return-void
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method

.method public static stopTethering(Landroid/net/wifi/WifiManager;)V
    .locals 0

    return-void
.end method
