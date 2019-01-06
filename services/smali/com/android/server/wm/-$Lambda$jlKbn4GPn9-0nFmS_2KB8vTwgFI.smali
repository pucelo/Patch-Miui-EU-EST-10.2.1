.class final synthetic Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/IAppTransitionAnimationSpecsFuture;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->lambda$-com_android_server_wm_AppTransition_91354(Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManagerPolicy$ScreenOffListener;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->lambda$-com_android_server_wm_TaskSnapshotController_13527(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_138790(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IAssistScreenshotReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_172543(Lcom/android/internal/app/IAssistScreenshotReceiver;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$id:B

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$id:B

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$0()V

    return-void

    :pswitch_f
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$1()V

    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$2()V

    return-void

    :pswitch_17
    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$jlKbn4GPn9-0nFmS_2KB8vTwgFI;->$m$3()V

    return-void

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
