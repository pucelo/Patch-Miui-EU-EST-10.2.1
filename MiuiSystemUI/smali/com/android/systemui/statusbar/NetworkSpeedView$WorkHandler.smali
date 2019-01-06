.class final Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;
.super Landroid/os/Handler;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap6(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap6(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap4(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$WorkHandler;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap5(Lcom/android/systemui/statusbar/NetworkSpeedView;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
