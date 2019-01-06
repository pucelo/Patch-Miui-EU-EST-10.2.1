.class Lcom/android/server/wm/TalkbackWatermark;
.super Ljava/lang/Object;
.source "TalkbackWatermark.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "TalkbackWatermark"


# instance fields
.field private final mDetDp:F

.field private final mDetPx:I

.field private final mDisplay:Landroid/view/Display;

.field private mDrawNeeded:Z

.field private mHasDrawn:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mPaddingDp:F

.field private final mPaddingPx:I

.field private final mString1:Ljava/lang/String;

.field private final mString2:Ljava/lang/String;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTextSizeDp:F

.field private final mTextSizePx:I

.field private final mTitleSizeDp:F

.field private final mTitleSizePx:F

.field private final mXProportion:F

.field private final mYProportionTop:F


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/util/DisplayMetrics;Landroid/content/Context;)V
    .registers 14

    const v5, 0x41a2f5c3    # 20.37f

    const/high16 v4, 0x41a00000    # 20.0f

    const v3, 0x4145c28f    # 12.36f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x41cb999a    # 25.45f

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mTitleSizeDp:F

    iput v4, p0, Lcom/android/server/wm/TalkbackWatermark;->mTextSizeDp:F

    iput v5, p0, Lcom/android/server/wm/TalkbackWatermark;->mDetDp:F

    iput v3, p0, Lcom/android/server/wm/TalkbackWatermark;->mPaddingDp:F

    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mYProportionTop:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mXProportion:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    iput v2, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    iput v2, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    iput-boolean v2, p0, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    iput-boolean v2, p0, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mString1:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mString2:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mDisplay:Landroid/view/Display;

    iget v1, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float v7, v1, v2

    mul-float v1, v4, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mTextSizePx:I

    mul-float v1, v5, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mDetPx:I

    mul-float v1, v3, v7

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mPaddingPx:I

    const v1, 0x41cb999a    # 25.45f

    mul-float/2addr v1, v7

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mTitleSizePx:F

    const/4 v8, 0x0

    :try_start_71
    new-instance v0, Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    const-string/jumbo v2, "TalkbackWatermarkSurface"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_82
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_71 .. :try_end_82} :catch_a1

    :try_start_82
    iget-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    const v1, 0xf4240

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    iget-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_9e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_82 .. :try_end_9e} :catch_be

    :goto_9e
    iput-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void

    :catch_a1
    move-exception v9

    move-object v0, v8

    :goto_a3
    const-string/jumbo v1, "TalkbackWatermark"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createrSurface e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :catch_be
    move-exception v9

    goto :goto_a3
.end method

.method private drawIfNeeded()V
    .registers 20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    if-eqz v2, :cond_d6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    new-instance v11, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v11, v2, v4, v12, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v9, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v11}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_1d} :catch_d7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_16 .. :try_end_1d} :catch_da

    move-result-object v9

    :goto_1e
    if-eqz v9, :cond_26

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    if-eq v2, v12, :cond_2e

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v9}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :cond_2e
    invoke-virtual {v9}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-ne v2, v10, :cond_26

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v9, v4, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    const/16 v15, 0x3c

    int-to-float v2, v12

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v17, v0

    int-to-float v2, v10

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    add-int/lit8 v18, v2, 0x3c

    new-instance v16, Landroid/graphics/Paint;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mTitleSizePx:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const v2, -0x4c4c4d

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mString1:Ljava/lang/String;

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mTextSizePx:I

    int-to-float v2, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v3, Landroid/text/TextPaint;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    new-instance v1, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mString2:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/TalkbackWatermark;->mPaddingPx:I

    sub-int/2addr v4, v5

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/TalkbackWatermark;->mDetPx:I

    add-int v4, v4, v18

    int-to-float v4, v4

    invoke-virtual {v9, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v9}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v9}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    :cond_d6
    return-void

    :catch_d7
    move-exception v14

    goto/16 :goto_1e

    :catch_da
    move-exception v13

    goto/16 :goto_1e
.end method


# virtual methods
.method positionSurface(II)V
    .registers 4

    iget v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    if-eq v0, p2, :cond_14

    :cond_8
    iput p1, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDW:I

    iput p2, p0, Lcom/android/server/wm/TalkbackWatermark;->mLastDH:I

    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mDrawNeeded:Z

    :cond_14
    return-void
.end method

.method setVisibility(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TalkbackWatermark;->setVisibility(ZZ)V

    return-void
.end method

.method setVisibility(ZZ)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    invoke-direct {p0}, Lcom/android/server/wm/TalkbackWatermark;->drawIfNeeded()V

    iget-boolean v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    if-eqz p2, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    iget-object v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    iput-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurfaceControl:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/TalkbackWatermark;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TalkbackWatermark;->mHasDrawn:Z

    goto :goto_f
.end method
