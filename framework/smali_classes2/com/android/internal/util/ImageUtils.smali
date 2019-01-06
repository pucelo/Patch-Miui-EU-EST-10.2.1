.class public Lcom/android/internal/util/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# static fields
.field private static final ALPHA_TOLERANCE:I = 0x32

.field private static final COMPACT_BITMAP_SIZE:I = 0x40

.field private static final TOLERANCE:I = 0x14


# instance fields
.field private mTempBuffer:[I

.field private mTempCompactBitmap:Landroid/graphics/Bitmap;

.field private mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

.field private mTempCompactBitmapPaint:Landroid/graphics/Paint;

.field private final mTempMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-nez p0, :cond_5

    return-object v8

    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gt v2, p1, :cond_1c

    if-gt v1, p2, :cond_1c

    instance-of v7, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_1c

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    return-object v7

    :cond_1c
    if-lez v1, :cond_20

    if-gtz v2, :cond_21

    :cond_20
    return-object v8

    :cond_21
    int-to-float v7, p1

    int-to-float v8, v2

    div-float/2addr v7, v8

    int-to-float v8, p2

    int-to-float v9, v1

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v7, v2

    mul-float/2addr v7, v3

    float-to-int v6, v7

    int-to-float v7, v1

    mul-float/2addr v7, v3

    float-to-int v5, v7

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v10, v10, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v4
.end method

.method private ensureBufferSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    array-length v0, v0

    if-ge v0, p1, :cond_d

    :cond_9
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    :cond_d
    return-void
.end method

.method public static isGrayscale(I)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x14

    shr-int/lit8 v6, p0, 0x18

    and-int/lit16 v0, v6, 0xff

    const/16 v6, 0x32

    if-ge v0, v6, :cond_d

    return v4

    :cond_d
    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v3, v6, 0xff

    shr-int/lit8 v6, p0, 0x8

    and-int/lit16 v2, v6, 0xff

    and-int/lit16 v1, p0, 0xff

    sub-int v6, v3, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v7, :cond_32

    sub-int v6, v3, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v7, :cond_32

    sub-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v7, :cond_30

    :goto_2f
    return v4

    :cond_30
    move v4, v5

    goto :goto_2f

    :cond_32
    move v4, v5

    goto :goto_2f
.end method


# virtual methods
.method public isGrayscale(Landroid/graphics/Bitmap;)Z
    .registers 13

    const/high16 v6, 0x42800000    # 64.0f

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v7, v1, :cond_13

    if-le v3, v1, :cond_5a

    :cond_13
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_34

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_34
    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    int-to-float v1, v3

    div-float v1, v6, v1

    int-to-float v4, v7

    div-float v4, v6, v4

    invoke-virtual {v0, v1, v4, v5, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/internal/util/ImageUtils;->mTempCompactBitmap:Landroid/graphics/Bitmap;

    const/16 v7, 0x40

    const/16 v3, 0x40

    :cond_5a
    mul-int v9, v7, v3

    invoke-direct {p0, v9}, Lcom/android/internal/util/ImageUtils;->ensureBufferSize(I)V

    iget-object v1, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v8, 0x0

    :goto_69
    if-ge v8, v9, :cond_79

    iget-object v0, p0, Lcom/android/internal/util/ImageUtils;->mTempBuffer:[I

    aget v0, v0, v8

    invoke-static {v0}, Lcom/android/internal/util/ImageUtils;->isGrayscale(I)Z

    move-result v0

    if-nez v0, :cond_76

    return v2

    :cond_76
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    :cond_79
    return v10
.end method
