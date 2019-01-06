.class Landroid/net/lowpan/LowpanScanner$2;
.super Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startEnergyScan()V
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

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$2_8042(Landroid/net/lowpan/LowpanScanner$Callback;II)V
    .registers 4

    if-eqz p0, :cond_10

    new-instance v0, Landroid/net/lowpan/LowpanEnergyScanResult;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanEnergyScanResult;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanEnergyScanResult;->setChannel(I)V

    invoke-virtual {v0, p2}, Landroid/net/lowpan/LowpanEnergyScanResult;->setMaxRssi(I)V

    invoke-virtual {p0, v0}, Landroid/net/lowpan/LowpanScanner$Callback;->onEnergyScanResult(Landroid/net/lowpan/LowpanEnergyScanResult;)V

    :cond_10
    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner$2_9089(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .registers 1

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method


# virtual methods
.method public onEnergyScanFinished()V
    .registers 5

    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v1

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v2, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Landroid/net/lowpan/-$Lambda$QeWpJp8A7h1GVWRfnDNEd25gCZ8;-><init>(BLjava/lang/Object;)V

    if-eqz v1, :cond_1b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void

    :cond_1b
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1a
.end method

.method public onEnergyScanResult(II)V
    .registers 7

    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v0

    iget-object v3, p0, Landroid/net/lowpan/LowpanScanner$2;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v3}, Landroid/net/lowpan/LowpanScanner;->-get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v1

    if-nez v0, :cond_f

    return-void

    :cond_f
    new-instance v2, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;

    invoke-direct {v2, p1, p2, v0}, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII$1;-><init>(IILjava/lang/Object;)V

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void

    :cond_1a
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_19
.end method
