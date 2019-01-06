.class final synthetic Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

.field public static final synthetic $INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

.field public static final synthetic $INST$2:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

.field public static final synthetic $INST$3:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->lambda$-com_android_server_wm_DisplayContent$NonAppWindowContainers_159563(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_93462(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_119440(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_44671(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$0:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$2:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$INST$3:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$id:B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$id:B

    packed-switch v0, :pswitch_data_20

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$1;->$m$3(Ljava/lang/Object;)Z

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
