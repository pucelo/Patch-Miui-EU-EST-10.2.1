.class final synthetic Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/DoubleUnaryOperator;


# static fields
.field public static final synthetic $INST$0:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

.field public static final synthetic $INST$1:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(D)D
    .registers 6

    invoke-static {p1, p2}, Landroid/graphics/ColorSpace;->lambda$-android_graphics_ColorSpace_64008(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private final synthetic $m$1(D)D
    .registers 6

    invoke-static {p1, p2}, Landroid/graphics/ColorSpace;->lambda$-android_graphics_ColorSpace_64099(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;-><init>(B)V

    sput-object v0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$INST$0:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    new-instance v0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;-><init>(B)V

    sput-object v0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$INST$1:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$id:B

    return-void
.end method


# virtual methods
.method public final applyAsDouble(D)D
    .registers 6

    iget-byte v0, p0, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$m$0(D)D

    move-result-wide v0

    return-wide v0

    :pswitch_10
    invoke-direct {p0, p1, p2}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$m$1(D)D

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
