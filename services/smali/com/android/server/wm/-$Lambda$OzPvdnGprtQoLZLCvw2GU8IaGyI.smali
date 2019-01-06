.class final synthetic Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/DisplayContent$Screenshoter;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

.field public static final synthetic $INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;
    .registers 9

    invoke-static/range {p1 .. p7}, Lcom/android/server/wm/DisplayContent;->-com_android_server_wm_DisplayContent-mthref-0(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;
    .registers 9

    invoke-static/range {p1 .. p7}, Lcom/android/server/wm/DisplayContent;->-com_android_server_wm_DisplayContent-mthref-1(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$INST$0:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    new-instance v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;-><init>(B)V

    sput-object v0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$INST$1:Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$id:B

    return-void
.end method


# virtual methods
.method public final screenshot(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;
    .registers 9

    iget-byte v0, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$m$0(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-direct/range {p0 .. p7}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI;->$m$1(Landroid/graphics/Rect;IIIIZI)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
