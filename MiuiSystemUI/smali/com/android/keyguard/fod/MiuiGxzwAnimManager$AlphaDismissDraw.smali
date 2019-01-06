.class Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimManager.java"

# interfaces
.implements Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fod/MiuiGxzwAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphaDismissDraw"
.end annotation


# instance fields
.field private count:I

.field private interpolator:Landroid/view/animation/Interpolator;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->interpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->count:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;-><init>()V

    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->count:I

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->interpolator:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->count:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    cmpl-float v1, v0, v4

    if-lez v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    sub-float v0, v4, v0

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwAnimManager$AlphaDismissDraw;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-void
.end method
