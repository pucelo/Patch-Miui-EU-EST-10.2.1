.class Landroid/net/lowpan/LowpanScanner$1;
.super Landroid/net/lowpan/ILowpanNetScanCallback$Stub;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startNetScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanScanner;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanScanner;)V
    .registers 2

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$1_5692(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanScanner$Callback;->onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$1_6441(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .registers 1

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method


# virtual methods
.method public onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .registers 7

    iget-object v4, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    move-result-object v1

    monitor-exit v4

    if-nez v0, :cond_16

    return-void

    :catchall_13
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_16
    new-instance v2, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v0, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_23

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_22
    return-void

    :cond_23
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_22
.end method

.method public onNetScanFinished()V
    .registers 6

    iget-object v4, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_13

    move-result-object v1

    monitor-exit v4

    if-nez v0, :cond_16

    return-void

    :catchall_13
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_16
    new-instance v2, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;-><init>(BLjava/lang/Object;)V

    if-eqz v1, :cond_22

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_21
    return-void

    :cond_22
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_21
.end method
