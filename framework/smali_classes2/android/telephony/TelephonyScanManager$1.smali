.class Landroid/telephony/TelephonyScanManager$1;
.super Landroid/os/Handler;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    const-string/jumbo v7, "message cannot be null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v7}, Landroid/telephony/TelephonyScanManager;->-get0(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v8

    monitor-enter v8

    :try_start_d
    iget-object v7, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v7}, Landroid/telephony/TelephonyScanManager;->-get0(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v7

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_3a

    monitor-exit v8

    if-nez v5, :cond_3d

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to find NetworkScanInfo with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_3a
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_3d
    invoke-static {v5}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-get0(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v1

    if-nez v1, :cond_5f

    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to find NetworkScanCallback with id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5f
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_de

    const-string/jumbo v7, "TelephonyScanManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unhandled message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_84
    return-void

    :pswitch_85
    :try_start_85
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v7, "scanResult"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    array-length v7, v6

    new-array v2, v7, [Landroid/telephony/CellInfo;

    const/4 v4, 0x0

    :goto_94
    array-length v7, v6

    if-ge v4, v7, :cond_a0

    aget-object v7, v6, v4

    check-cast v7, Landroid/telephony/CellInfo;

    aput-object v7, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_94

    :cond_a0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a7} :catch_a8

    goto :goto_84

    :catch_a8
    move-exception v3

    const-string/jumbo v7, "TelephonyScanManager"

    const-string/jumbo v8, "Exception in networkscan callback onResults"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :pswitch_b3
    :try_start_b3
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v7}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_b8} :catch_b9

    goto :goto_84

    :catch_b9
    move-exception v3

    const-string/jumbo v7, "TelephonyScanManager"

    const-string/jumbo v8, "Exception in networkscan callback onError"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :pswitch_c4
    :try_start_c4
    invoke-virtual {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    iget-object v7, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v7}, Landroid/telephony/TelephonyScanManager;->-get0(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->remove(I)V
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d2} :catch_d3

    goto :goto_84

    :catch_d3
    move-exception v3

    const-string/jumbo v7, "TelephonyScanManager"

    const-string/jumbo v8, "Exception in networkscan callback onComplete"

    invoke-static {v7, v8, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_84

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_85
        :pswitch_b3
        :pswitch_c4
    .end packed-switch
.end method
