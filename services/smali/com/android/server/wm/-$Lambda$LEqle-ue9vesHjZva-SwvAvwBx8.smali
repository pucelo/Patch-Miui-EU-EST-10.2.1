.class final synthetic Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    check-cast p1, Lcom/android/server/wm/WindowToken;

    check-cast p2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->lambda$-com_android_server_wm_DisplayContent$NonAppWindowContainers_159124(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowToken;

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowToken;->lambda$-com_android_server_wm_WindowToken_3278(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;->$id:B

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/-$Lambda$LEqle-ue9vesHjZva-SwvAvwBx8;->$m$1(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
