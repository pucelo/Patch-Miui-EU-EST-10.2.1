.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v5, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_b8

    :pswitch_6
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap0(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_28

    return-void

    :pswitch_11
    return-void

    :pswitch_12
    const-string/jumbo v3, "WifiScanner"

    const-string/jumbo v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    invoke-static {v3, v5}, Landroid/net/wifi/WifiScanner;->-set0(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    return-void

    :cond_28
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_c2

    :pswitch_2d
    return-void

    :pswitch_2e
    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-interface {v0}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    :goto_33
    return-void

    :pswitch_34
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$OperationResult;

    check-cast v0, Landroid/net/wifi/WifiScanner$ActionListener;

    iget v3, v2, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v4, v2, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_33

    :pswitch_49
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void

    :pswitch_57
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_61
    check-cast v0, Landroid/net/wifi/WifiScanner$ScanListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$ScanListener;->onPeriodChanged(I)V

    return-void

    :pswitch_69
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onFound([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_77
    check-cast v0, Landroid/net/wifi/WifiScanner$BssidListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$BssidListener;->onLost([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_85
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onChanging([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_93
    check-cast v0, Landroid/net/wifi/WifiScanner$WifiChangeListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$WifiChangeListener;->onQuiescence([Landroid/net/wifi/ScanResult;)V

    return-void

    :pswitch_a1
    iget-object v3, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiScanner;->-wrap1(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_33

    :pswitch_a9
    check-cast v0, Landroid/net/wifi/WifiScanner$PnoScanListener;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v3}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void

    nop

    :pswitch_data_b8
    .packed-switch 0x11002
        :pswitch_11
        :pswitch_6
        :pswitch_12
    .end packed-switch

    :pswitch_data_c2
    .packed-switch 0x27005
        :pswitch_49
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_69
        :pswitch_77
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_85
        :pswitch_93
        :pswitch_2e
        :pswitch_34
        :pswitch_61
        :pswitch_57
        :pswitch_2d
        :pswitch_2d
        :pswitch_a1
        :pswitch_2d
        :pswitch_2d
        :pswitch_a9
    .end packed-switch
.end method
