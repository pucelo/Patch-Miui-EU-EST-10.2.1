.class final Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;
.super Landroid/os/Handler;
.source "MiuiGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MiuiGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "GestureThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MiuiGestureController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MiuiGestureController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->-get4(Lcom/android/server/wm/MiuiGestureController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/MiuiGestureController$GestureThreadHandler;->this$0:Lcom/android/server/wm/MiuiGestureController;

    invoke-static {v0}, Lcom/android/server/wm/MiuiGestureController;->-get2(Lcom/android/server/wm/MiuiGestureController;)Lcom/android/server/wm/MiuiGesturePointerEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->clearThumbnail()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    monitor-exit v1

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    nop

    :pswitch_data_1c
    .packed-switch 0x65
        :pswitch_6
    .end packed-switch
.end method
