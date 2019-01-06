.class final synthetic Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->lambda$-com_android_server_wm_MiuiGesturePointerEventListener_8104(J)V

    return-void
.end method

.method private final synthetic $m$1(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->lambda$-com_android_server_wm_WindowAnimator_4016(J)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;->$id:B

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .registers 4

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;->$m$0(J)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/-$Lambda$X5AOLnbQFFWqQhT6P8dMWFD87R4;->$m$1(J)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
