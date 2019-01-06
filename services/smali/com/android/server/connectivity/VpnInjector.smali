.class public Lcom/android/server/connectivity/VpnInjector;
.super Ljava/lang/Object;
.source "VpnInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSpecialUser(Landroid/content/Context;II)Z
    .registers 5

    const/4 v0, 0x0

    if-ltz p1, :cond_5

    if-gez p2, :cond_6

    :cond_5
    return v0

    :cond_6
    if-nez p1, :cond_d

    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method
