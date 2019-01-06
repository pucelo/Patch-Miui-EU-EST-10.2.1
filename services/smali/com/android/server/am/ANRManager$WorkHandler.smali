.class Lcom/android/server/am/ANRManager$WorkHandler;
.super Landroid/os/Handler;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WorkHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onServiceTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_5

    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastQueue;

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onBroadcastTimeoutHalf(Lcom/android/server/am/BroadcastQueue;)V

    goto :goto_5

    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onProviderTimeoutHalf(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_5

    :pswitch_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/server/am/ANRManager;->onInputTimeoutHalf(I)V

    goto :goto_5

    :pswitch_data_24
    .packed-switch 0x3f3
        :pswitch_6
        :pswitch_e
        :pswitch_16
        :pswitch_1e
    .end packed-switch
.end method
