.class final Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static synthetic -wrap0(Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removePendingMessages()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private processMessage(Landroid/os/Message;)V
    .locals 4
    .annotation build Landroid/support/annotation/GuardedBy;
        value = "mLock"
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get4(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap2(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap3(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap1(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_0

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->resume()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0, v2}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mScanner:Lcom/android/settingslib/wifi/WifiTracker$Scanner;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->pause()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private removePendingMessages()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->processMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
