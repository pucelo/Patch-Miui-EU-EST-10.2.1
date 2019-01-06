.class Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/MiuiNetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 13

    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_182

    :goto_b
    return v4

    :pswitch_c
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-static {v5, v6, v7}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/MiuiNetworkPolicyManagerService;II)V

    goto :goto_b

    :pswitch_16
    iget-object v5, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap12(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    goto :goto_b

    :pswitch_1e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v5, :cond_5b

    const/4 v0, 0x1

    :goto_29
    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7f

    if-eqz v0, :cond_5d

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5d

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x61a8

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4, v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    :cond_5a
    :goto_5a
    return v5

    :cond_5b
    const/4 v0, 0x0

    goto :goto_29

    :cond_5d
    if-nez v0, :cond_5a

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5a

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    goto :goto_5a

    :cond_7f
    const-string/jumbo v4, "ps"

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5a

    if-eqz v0, :cond_b3

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get14(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_b3

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v10, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x1388

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5a

    :cond_b3
    if-nez v0, :cond_5a

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get14(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-nez v4, :cond_5a

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4, v3, v0}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap15(Lcom/android/server/net/MiuiNetworkPolicyManagerService;IZ)V

    goto :goto_5a

    :pswitch_cc
    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-ne v8, v5, :cond_d5

    move v4, v5

    :cond_d5
    invoke-static {v6, v7, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap15(Lcom/android/server/net/MiuiNetworkPolicyManagerService;IZ)V

    return v5

    :pswitch_d9
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-set5(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)I

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap3(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v2

    const-string/jumbo v4, "MiuiNetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "networkPriorityMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mNetworkPriorityMode ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mWifiConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v7}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get18(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-eqz v4, :cond_137

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)I

    move-result v4

    if-eq v2, v4, :cond_137

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4, v2}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/MiuiNetworkPolicyManagerService;I)V

    :cond_137
    return v5

    :pswitch_138
    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v6

    if-eqz v6, :cond_150

    iget-object v6, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v6, v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_150
    return v5

    :pswitch_151
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get4(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Z

    move-result v4

    if-nez v4, :cond_169

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4, v5}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/MiuiNetworkPolicyManagerService;Z)V

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x61a8

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_169
    return v5

    :pswitch_16a
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-get2(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    const/4 v8, 0x6

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return v5

    :pswitch_17c
    iget-object v4, p0, Lcom/android/server/net/MiuiNetworkPolicyManagerService$2;->this$0:Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {v4}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;->-wrap14(Lcom/android/server/net/MiuiNetworkPolicyManagerService;)V

    return v5

    :pswitch_data_182
    .packed-switch 0x1
        :pswitch_c
        :pswitch_16
        :pswitch_1e
        :pswitch_138
        :pswitch_151
        :pswitch_16a
        :pswitch_d9
        :pswitch_cc
        :pswitch_17c
    .end packed-switch
.end method
