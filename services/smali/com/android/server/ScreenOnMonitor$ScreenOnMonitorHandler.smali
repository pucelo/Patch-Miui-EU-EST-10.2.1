.class Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;
.super Landroid/os/Handler;
.source "ScreenOnMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ScreenOnMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScreenOnMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ScreenOnMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/ScreenOnMonitor;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    invoke-static {v1, v0}, Lcom/android/server/ScreenOnMonitor;->-wrap3(Lcom/android/server/ScreenOnMonitor;Lcom/android/internal/os/SomeArgs;)V

    goto :goto_5

    :pswitch_10
    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/ScreenOnMonitor;->-wrap4(Lcom/android/server/ScreenOnMonitor;Z)V

    goto :goto_5

    :pswitch_1e
    iget-object v1, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/android/server/ScreenOnMonitor;->-wrap0(Lcom/android/server/ScreenOnMonitor;IJ)V

    goto :goto_5

    :pswitch_2e
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    invoke-static {v0}, Lcom/android/server/ScreenOnMonitor;->-wrap2(Lcom/android/server/ScreenOnMonitor;)V

    goto :goto_5

    :pswitch_34
    iget-object v0, p0, Lcom/android/server/ScreenOnMonitor$ScreenOnMonitorHandler;->this$0:Lcom/android/server/ScreenOnMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ScreenOnMonitor;->-wrap1(Lcom/android/server/ScreenOnMonitor;Z)V

    goto :goto_5

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1e
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method
