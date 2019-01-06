.class final synthetic Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_100896(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_101075(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$-com_android_server_wm_RootWindowContainer_19047(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_197928(ILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$id:B

    iput p2, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->-$f0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$tS7nL17Ous75692M4rHLEZu640I;->$m$3(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method
