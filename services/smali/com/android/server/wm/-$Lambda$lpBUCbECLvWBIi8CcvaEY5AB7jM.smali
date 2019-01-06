.class final synthetic Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_28654(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_115256(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WallpaperController;->lambda$-com_android_server_wm_WallpaperController_22830(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->$id:B

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->$id:B

    packed-switch v0, :pswitch_data_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$lpBUCbECLvWBIi8CcvaEY5AB7jM;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
    .end packed-switch
.end method
