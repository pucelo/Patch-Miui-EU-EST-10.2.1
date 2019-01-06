.class final synthetic Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManagerPolicy;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_121122(Landroid/view/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/MiuiGesturePointerEventListener;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/MiuiGesturePointerEventListener;->lambda$-com_android_server_wm_MiuiGesturePointerEventListener_40690(Ljava/util/function/Consumer;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$-com_android_server_wm_RootWindowContainer_21710(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->$id:B

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->$id:B

    packed-switch v0, :pswitch_data_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$CZX5GF99beBCM3g54wTSODIo0l4;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method
