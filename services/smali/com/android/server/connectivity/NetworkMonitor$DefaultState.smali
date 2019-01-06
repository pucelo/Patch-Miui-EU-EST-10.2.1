.class Lcom/android/server/connectivity/NetworkMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$DefaultState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_e4

    return v4

    :sswitch_9
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap3(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v4

    :sswitch_1a
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-wrap3(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get3(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get9(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->-set2(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    :cond_3c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkMonitor;->quit()V

    return v4

    :sswitch_42
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Forcing reevaluation for UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v4

    :sswitch_70
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CaptivePortal App responded with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->-set5(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_fa

    :goto_95
    return v4

    :pswitch_96
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82008

    invoke-virtual {v0, v1, v5, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    goto :goto_95

    :pswitch_9f
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get16(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_95

    :pswitch_b0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set0(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->-set6(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->-get2(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->-get10(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    const v3, 0x82002

    invoke-virtual {v1, v3, v4, v2, v6}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->-set4(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->-get6(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_95

    nop

    :sswitch_data_e4
    .sparse-switch
        0x82001 -> :sswitch_9
        0x82007 -> :sswitch_1a
        0x82008 -> :sswitch_42
        0x82009 -> :sswitch_70
        0x8200c -> :sswitch_42
    .end sparse-switch

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_96
        :pswitch_b0
        :pswitch_9f
    .end packed-switch
.end method
