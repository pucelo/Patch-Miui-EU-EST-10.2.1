.class final synthetic Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(D)D
    .registers 6

    iget-object v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$-android_graphics_ColorSpace$Rgb_106776(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(D)D
    .registers 6

    iget-object v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$-android_graphics_ColorSpace$Rgb_106922(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$2(D)D
    .registers 6

    iget-object v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$-android_graphics_ColorSpace$Rgb_107152(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$3(D)D
    .registers 6

    iget-object v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-static {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->lambda$-android_graphics_ColorSpace$Rgb_107295(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$4(D)D
    .registers 6

    iget-object v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->-android_graphics_ColorSpace$Rgb-mthref-0(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->$id:B

    iput-object p2, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 6

    iget-byte v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->$id:B

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->$m$0(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->$m$1(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_15
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->$m$2(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1a
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->$m$3(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_1f
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;->$m$4(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method
