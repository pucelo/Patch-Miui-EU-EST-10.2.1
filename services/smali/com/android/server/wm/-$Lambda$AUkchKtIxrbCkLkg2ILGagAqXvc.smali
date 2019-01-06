.class final synthetic Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f2:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManagerPolicy;

    iget-boolean v1, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f0:Z

    iget-boolean v2, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f1:Z

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_114690(Landroid/view/WindowManagerPolicy;ZZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .registers 5

    iget-boolean v1, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f0:Z

    iget-boolean v2, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f1:Z

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f2:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v1, v2, v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_297927(ZZLjava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(BZZLjava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->$id:B

    iput-boolean p2, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f0:Z

    iput-boolean p3, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f1:Z

    iput-object p4, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->$id:B

    packed-switch v0, :pswitch_data_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_f
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$AUkchKtIxrbCkLkg2ILGagAqXvc;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
