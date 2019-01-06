.class public Landroid/graphics/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/NinePatch$InsetStruct;
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field public mNativeChunk:J

.field private mPaint:Landroid/graphics/Paint;

.field private mSrcName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/NinePatch;->validateNinePatchChunk([B)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/NinePatch;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    iget-object v0, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_18

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    :cond_18
    iget-wide v0, p1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    return-void
.end method

.method public static native isNinePatchChunk([B)Z
.end method

.method private static native nativeFinalize(J)V
.end method

.method private static native nativeGetTransparentRegion(Landroid/graphics/Bitmap;JLandroid/graphics/Rect;)J
.end method

.method private static native validateNinePatchChunk([B)J
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 4

    invoke-virtual {p1, p0, p2, p3}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v2, 0x0

    :try_start_2
    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    invoke-static {v0, v1}, Landroid/graphics/NinePatch;->nativeFinalize(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/NinePatch;->mNativeChunk:J
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_15

    :cond_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_15
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDensity()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, v0, Landroid/graphics/Bitmap;->mDensity:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/NinePatch;->mSrcName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getTransparentRegion(Landroid/graphics/Rect;)Landroid/graphics/Region;
    .registers 8

    iget-object v2, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    iget-wide v4, p0, Landroid/graphics/NinePatch;->mNativeChunk:J

    invoke-static {v2, v4, v5, p1}, Landroid/graphics/NinePatch;->nativeGetTransparentRegion(Landroid/graphics/Bitmap;JLandroid/graphics/Rect;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    :goto_13
    return-object v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public getWidth()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public final hasAlpha()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/NinePatch;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    return v0
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .registers 2

    iput-object p1, p0, Landroid/graphics/NinePatch;->mPaint:Landroid/graphics/Paint;

    return-void
.end method
