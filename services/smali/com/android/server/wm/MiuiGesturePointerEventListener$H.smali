.class Lcom/android/server/wm/MiuiGesturePointerEventListener$H;
.super Landroid/os/Handler;
.source "MiuiGesturePointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGesturePointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MiuiGesturePointerEventListener;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_6c

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap10(Lcom/android/server/wm/MiuiGesturePointerEventListener;)V

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap2(Lcom/android/server/wm/MiuiGesturePointerEventListener;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get0(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v3}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get7(Lcom/android/server/wm/MiuiGesturePointerEventListener;)I

    move-result v3

    add-int/lit16 v3, v3, -0xa0

    if-ge v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap0(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-wrap1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get5(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v0, :cond_6

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2, v4}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-set0(Lcom/android/server/wm/MiuiGesturePointerEventListener;Z)Z

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v3, v3, Lcom/android/server/wm/MiuiGesturePointerEventListener;->mHomeAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/MiuiGestureController;->setLaunchRecentsBehind(Lcom/android/server/wm/AppWindowToken;Z)V

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiGestureController;->notifySkipAppTransition()V

    iget-object v2, p0, Lcom/android/server/wm/MiuiGesturePointerEventListener$H;->this$0:Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-static {v2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->-get1(Lcom/android/server/wm/MiuiGesturePointerEventListener;)Lcom/android/server/wm/MiuiGestureController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiGestureController;->notifyGestureStartRecents()V

    goto :goto_6

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
