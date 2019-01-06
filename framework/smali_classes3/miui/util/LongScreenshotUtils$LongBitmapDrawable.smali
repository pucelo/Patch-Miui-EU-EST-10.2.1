.class public Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LongScreenshotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/LongScreenshotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongBitmapDrawable"
.end annotation


# static fields
.field static final MAX_PART_HEIGHT:I = 0x400


# instance fields
.field private mBitmaps:[Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 12

    const/4 v8, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-array v8, v8, [Landroid/graphics/Bitmap;

    iput-object v8, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez p1, :cond_13

    return-void

    :cond_13
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    new-instance v5, Landroid/graphics/Paint;

    const/4 v8, 0x4

    invoke-direct {v5, v8}, Landroid/graphics/Paint;-><init>(I)V

    :goto_26
    if-lez v6, :cond_4c

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v3, v8, v6

    const/16 v8, 0x400

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v7, v2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    neg-int v9, v3

    int-to-float v9, v9

    invoke-virtual {v0, p1, v8, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr v6, v2

    goto :goto_26

    :cond_4c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/graphics/Bitmap;

    iput-object v8, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 13

    const/4 v10, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-array v6, v10, [Landroid/graphics/Bitmap;

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_16
    invoke-static {p1, v6}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_56

    move-result-object v1

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v7

    const/16 v8, 0x400

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {v4, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v5

    :cond_31
    :goto_31
    if-lez v5, :cond_5b

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v10, v6}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    if-gez v5, :cond_31

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v5

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_31

    :catch_56
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :cond_5b
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/graphics/Bitmap;

    iput-object v6, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>([Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-eqz v7, :cond_13

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_13
    const/4 v8, 0x0

    :goto_14
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-ge v8, v0, :cond_41

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v6, v0, v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_36
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBitmaps()[Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-nez v2, :cond_b

    :cond_a
    return v3

    :cond_b
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return v1
.end method

.method public getIntrinsicWidth()I
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-nez v0, :cond_b

    :cond_a
    return v1

    :cond_b
    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/util/LongScreenshotUtils$LongBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
