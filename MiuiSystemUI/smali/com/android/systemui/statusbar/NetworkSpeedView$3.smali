.class Lcom/android/systemui/statusbar/NetworkSpeedView$3;
.super Landroid/os/Handler;
.source "NetworkSpeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NetworkSpeedView;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    if-eqz v2, :cond_2

    :goto_2
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap3(Lcom/android/systemui/statusbar/NetworkSpeedView;I)V

    if-eqz v2, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NetworkSpeedView$3;->this$0:Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-get0(Lcom/android/systemui/statusbar/NetworkSpeedView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/NetworkSpeedView;->-wrap2(Lcom/android/systemui/statusbar/NetworkSpeedView;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x8

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x30d40
        :pswitch_0
    .end packed-switch
.end method
