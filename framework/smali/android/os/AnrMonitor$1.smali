.class final Landroid/os/AnrMonitor$1;
.super Ljava/lang/Object;
.source "AnrMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportHangException()V

    invoke-static {}, Landroid/os/AnrMonitor;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Landroid/os/AnrMonitor;->-get0()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
