.class public Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ControlCallback;
.super Ljava/lang/Object;
.source "OffloadHardwareInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNatTimeoutUpdate(ILjava/lang/String;ILjava/lang/String;I)V
    .registers 6

    return-void
.end method

.method public onStarted()V
    .registers 1

    return-void
.end method

.method public onStoppedError()V
    .registers 1

    return-void
.end method

.method public onStoppedLimitReached()V
    .registers 1

    return-void
.end method

.method public onStoppedUnsupported()V
    .registers 1

    return-void
.end method

.method public onSupportAvailable()V
    .registers 1

    return-void
.end method
