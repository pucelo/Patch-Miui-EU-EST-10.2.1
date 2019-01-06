.class Lmiui/app/ToggleManager$1;
.super Landroid/os/Handler;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    :goto_9
    return-void

    :pswitch_a
    iget-object v0, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-wrap21(Lmiui/app/ToggleManager;)V

    goto :goto_9

    :pswitch_10
    iget-object v1, p0, Lmiui/app/ToggleManager$1;->this$0:Lmiui/app/ToggleManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1a

    :goto_16
    invoke-static {v1, v0}, Lmiui/app/ToggleManager;->-wrap19(Lmiui/app/ToggleManager;Z)V

    goto :goto_9

    :cond_1a
    const/4 v0, 0x0

    goto :goto_16

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method
