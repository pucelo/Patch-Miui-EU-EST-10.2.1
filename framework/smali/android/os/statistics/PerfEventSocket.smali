.class public Landroid/os/statistics/PerfEventSocket;
.super Ljava/lang/Object;
.source "PerfEventSocket.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native receivePerfEvent(ILandroid/os/Parcel;I)I
.end method

.method public static native sendPerfEvent(ILandroid/os/Parcel;I)I
.end method
