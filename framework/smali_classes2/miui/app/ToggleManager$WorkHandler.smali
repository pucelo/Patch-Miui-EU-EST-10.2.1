.class final Lmiui/app/ToggleManager$WorkHandler;
.super Landroid/os/Handler;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# static fields
.field private static final MSG_APPLY_BRIGHTNESS:I = 0x3

.field private static final MSG_TOGGLE_BLUETOOTH:I = 0x2

.field private static final MSG_TOGGLE_SYNC:I = 0x5

.field private static final MSG_TOGGLE_WIFI:I = 0x1

.field private static final MSG_UPDATE_DATA:I = 0x6

.field private static final MSG_UPDATE_SYNC:I = 0x4


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method public constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_58

    :goto_a
    return-void

    :pswitch_b
    invoke-static {}, Lmiui/app/ToggleManager;->-get11()Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_17

    :goto_13
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_a

    :cond_17
    move v1, v2

    goto :goto_13

    :pswitch_19
    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_23

    :goto_1f
    invoke-static {v3, v1}, Lmiui/app/ToggleManager;->-wrap4(Lmiui/app/ToggleManager;Z)V

    goto :goto_a

    :cond_23
    move v1, v2

    goto :goto_1f

    :pswitch_25
    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v1, :cond_31

    :goto_2d
    invoke-static {v3, v4, v1}, Lmiui/app/ToggleManager;->-wrap1(Lmiui/app/ToggleManager;IZ)V

    goto :goto_a

    :cond_31
    move v1, v2

    goto :goto_2d

    :pswitch_33
    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v3}, Lmiui/app/ToggleManager;->-wrap0(Lmiui/app/ToggleManager;)Z

    move-result v0

    iget-object v3, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v3}, Lmiui/app/ToggleManager;->-get3(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v0, :cond_4a

    :goto_41
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_4a
    move v1, v2

    goto :goto_41

    :pswitch_4c
    iget-object v1, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap5(Lmiui/app/ToggleManager;)V

    goto :goto_a

    :pswitch_52
    iget-object v1, p0, Lmiui/app/ToggleManager$WorkHandler;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-wrap10(Lmiui/app/ToggleManager;)V

    goto :goto_a

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_b
        :pswitch_19
        :pswitch_25
        :pswitch_33
        :pswitch_4c
        :pswitch_52
    .end packed-switch
.end method
