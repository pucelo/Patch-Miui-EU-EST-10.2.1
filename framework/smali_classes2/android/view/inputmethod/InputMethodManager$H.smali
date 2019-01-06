.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_22a

    :pswitch_7
    return-void

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/os/SomeArgs;

    :try_start_e
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/io/FileDescriptor;

    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/PrintWriter;

    iget-object v4, v8, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v5, v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_21} :catch_30

    :goto_21
    iget-object v3, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v3

    :try_start_24
    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_4d

    monitor-exit v3

    invoke-virtual {v8}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catch_30
    move-exception v10

    iget-object v1, v8, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_21

    :catchall_4d
    move-exception v1

    monitor-exit v3

    throw v1

    :pswitch_50
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/internal/view/InputBindResult;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_5d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v1, :cond_6f

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v1, v4, :cond_b1

    :cond_6f
    const-string/jumbo v1, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Ignoring onBind: cur seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v5, v5, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", given seq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v1, :cond_af

    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v1, v4, :cond_af

    iget-object v1, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V
    :try_end_af
    .catchall {:try_start_5d .. :try_end_af} :catchall_e8

    :cond_af
    monitor-exit v3

    return-void

    :cond_b1
    :try_start_b1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->-set1(Landroid/view/inputmethod/InputMethodManager;I)I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v13, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v4, v13, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v4, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_da
    .catchall {:try_start_b1 .. :try_end_da} :catchall_e8

    monitor-exit v3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    return-void

    :catchall_e8
    move-exception v1

    monitor-exit v3

    throw v1

    :pswitch_eb
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_fa
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, v1, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I
    :try_end_100
    .catchall {:try_start_fa .. :try_end_100} :catchall_13c

    if-eq v1, v14, :cond_104

    monitor-exit v3

    return-void

    :cond_104
    :try_start_104
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_126

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_126

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    :cond_126
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v15, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z
    :try_end_12c
    .catchall {:try_start_104 .. :try_end_12c} :catchall_13c

    monitor-exit v3

    if-eqz v15, :cond_13b

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    :cond_13b
    return-void

    :catchall_13c
    move-exception v1

    monitor-exit v3

    throw v1

    :pswitch_13f
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1a8

    const/4 v7, 0x1

    :goto_146
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1aa

    const/4 v11, 0x1

    :goto_14d
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_156
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v7, v1, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-nez v7, :cond_174

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z
    :try_end_16b
    .catchall {:try_start_156 .. :try_end_16b} :catchall_1af

    :try_start_16b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_174
    .catch Landroid/os/RemoteException; {:try_start_16b .. :try_end_174} :catch_226
    .catchall {:try_start_16b .. :try_end_174} :catchall_1af

    :cond_174
    :goto_174
    :try_start_174
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1a6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1a6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v3, v3, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-static {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->-wrap0(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v1

    if-eqz v1, :cond_1a6

    if-eqz v7, :cond_1ac

    const/4 v2, 0x7

    :goto_19b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z
    :try_end_1a6
    .catchall {:try_start_174 .. :try_end_1a6} :catchall_1af

    :cond_1a6
    monitor-exit v16

    return-void

    :cond_1a8
    const/4 v7, 0x0

    goto :goto_146

    :cond_1aa
    const/4 v11, 0x0

    goto :goto_14d

    :cond_1ac
    const/16 v2, 0x8

    goto :goto_19b

    :catchall_1af
    move-exception v1

    monitor-exit v16

    throw v1

    :pswitch_1b2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void

    :pswitch_1c0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_1ce
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_1dc
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_1e3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->-set0(Landroid/view/inputmethod/InputMethodManager;I)I
    :try_end_1ee
    .catchall {:try_start_1e3 .. :try_end_1ee} :catchall_1f0

    monitor-exit v3

    return-void

    :catchall_1f0
    move-exception v1

    monitor-exit v3

    throw v1

    :pswitch_1f3
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_221

    const/4 v11, 0x1

    :goto_1fa
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_202
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v11, v1, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v1, :cond_21a

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_219
    .catchall {:try_start_202 .. :try_end_219} :catchall_223

    move-result-object v12

    :cond_21a
    monitor-exit v3

    if-eqz v12, :cond_220

    invoke-interface {v12, v11}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    :cond_220
    return-void

    :cond_221
    const/4 v11, 0x0

    goto :goto_1fa

    :catchall_223
    move-exception v1

    monitor-exit v3

    throw v1

    :catch_226
    move-exception v9

    goto/16 :goto_174

    nop

    :pswitch_data_22a
    .packed-switch 0x1
        :pswitch_8
        :pswitch_50
        :pswitch_eb
        :pswitch_13f
        :pswitch_1b2
        :pswitch_1c0
        :pswitch_1ce
        :pswitch_7
        :pswitch_1dc
        :pswitch_1f3
    .end packed-switch
.end method
