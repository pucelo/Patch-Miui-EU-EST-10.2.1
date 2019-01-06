.class final Lmiui/view/RingerModeLayout$H;
.super Landroid/os/Handler;
.source "RingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_EXPAND_CONTENT:I = 0x2

.field private static final UPDATE_TIME:I = 0x1


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method public constructor <init>(Lmiui/view/RingerModeLayout;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get10(Lmiui/view/RingerModeLayout;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    :goto_e
    return-void

    :pswitch_f
    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-wrap4(Lmiui/view/RingerModeLayout;)V

    goto :goto_e

    :pswitch_15
    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-wrap3(Lmiui/view/RingerModeLayout;)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get12(Lmiui/view/RingerModeLayout;)Lmiui/widget/SlidingButton;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-wrap0(Lmiui/view/RingerModeLayout;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lmiui/view/RingerModeLayout$H;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/VolumeDialog;->recheckAll()V

    goto :goto_e

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method
