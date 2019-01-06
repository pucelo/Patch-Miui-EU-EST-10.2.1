.class Lcom/android/keyguard/fod/MiuiGxzwManager$2;
.super Landroid/os/Handler;
.source "MiuiGxzwManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_1

    :goto_1
    invoke-static {v4, v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v4, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    iget-object v4, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v4}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap4(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    goto :goto_0

    :pswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get3(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap0(Lcom/android/keyguard/fod/MiuiGxzwManager;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap1(Lcom/android/keyguard/fod/MiuiGxzwManager;)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-wrap3(Lcom/android/keyguard/fod/MiuiGxzwManager;Z)V

    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwManager$2;->this$0:Lcom/android/keyguard/fod/MiuiGxzwManager;

    invoke-static {v2}, Lcom/android/keyguard/fod/MiuiGxzwManager;->-get1(Lcom/android/keyguard/fod/MiuiGxzwManager;)Lcom/android/keyguard/fod/MiuiGxzwIconView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/keyguard/fod/MiuiGxzwIconView;->setEnrolling(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
