.class public Landroid/graphics/drawable/RippleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RippleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleDrawable$RippleState;
    }
.end annotation


# static fields
.field private static final MASK_CONTENT:I = 0x1

.field private static final MASK_EXPLICIT:I = 0x2

.field private static final MASK_NONE:I = 0x0

.field private static final MASK_UNKNOWN:I = -0x1

.field private static final MAX_RIPPLES:I = 0xa

.field public static final RADIUS_AUTO:I = -0x1


# instance fields
.field private mBackground:Landroid/graphics/drawable/RippleBackground;

.field private mBackgroundActive:Z

.field private mDensity:I

.field private final mDirtyBounds:Landroid/graphics/Rect;

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

.field private mExitingRipplesCount:I

.field private mForceSoftware:Z

.field private mHasPending:Z

.field private mHasValidMask:Z

.field private final mHotspotBounds:Landroid/graphics/Rect;

.field private mMask:Landroid/graphics/drawable/Drawable;

.field private mMaskBuffer:Landroid/graphics/Bitmap;

.field private mMaskCanvas:Landroid/graphics/Canvas;

.field private mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mMaskMatrix:Landroid/graphics/Matrix;

.field private mMaskShader:Landroid/graphics/BitmapShader;

.field private mOverrideBounds:Z

.field private mPendingX:F

.field private mPendingY:F

.field private mRipple:Landroid/graphics/drawable/RippleForeground;

.field private mRippleActive:Z

.field private mRipplePaint:Landroid/graphics/Paint;

.field private mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v1, v1, v1}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 16

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, v2, v2, v2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    invoke-direct {p0, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    if-nez p1, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "RippleDrawable requires a non-null color"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    if-eqz p2, :cond_20

    move-object v0, p0

    move-object v1, p2

    move v4, v3

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_20
    if-eqz p3, :cond_2f

    const v7, 0x102002e

    move-object v4, p0

    move-object v5, p3

    move-object v6, v2

    move v8, v3

    move v9, v3

    move v10, v3

    move v11, v3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/drawable/RippleDrawable;->addLayer(Landroid/graphics/drawable/Drawable;[IIIIII)Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    :cond_2f
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    iput v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mNumChildren:I

    if-lez v0, :cond_43

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->ensurePadding()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->refreshPadding()V

    :cond_43
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;Landroid/graphics/drawable/RippleDrawable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/graphics/drawable/RippleDrawable$RippleState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private cancelExitingRipples()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_11

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_11
    if-eqz v2, :cond_16

    invoke-static {v2, v4, v0, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_16
    iput v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method private clearHotspots()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iput-boolean v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    :cond_1c
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    return-void
.end method

.method private drawBackgroundAndRipples(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-nez v1, :cond_1b

    if-gtz v5, :cond_1b

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->updateMaskShaderIfNeeded()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    if-eqz v14, :cond_5e

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v15, v3, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    sub-float/2addr v15, v12

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, v13

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/Matrix;->setTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v15}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_5e
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v14, v14, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getState()[I

    move-result-object v15

    const/high16 v16, -0x1000000

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    shl-int/lit8 v7, v14, 0x18

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/RippleDrawable;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v14, :cond_bc

    const/high16 v14, -0x1000000

    or-int v6, v4, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v14, v6}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    invoke-virtual {v10, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_9c
    if-eqz v2, :cond_a9

    invoke-virtual {v2}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_a9

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v10}, Landroid/graphics/drawable/RippleBackground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_a9
    if-lez v5, :cond_ce

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    const/4 v9, 0x0

    :goto_b0
    if-ge v9, v5, :cond_ce

    aget-object v14, v11, v9

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v10}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_b0

    :cond_bc
    const v14, 0xffffff

    and-int/2addr v14, v4

    or-int v8, v14, v7

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_9c

    :cond_ce
    if-eqz v1, :cond_d5

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v10}, Landroid/graphics/drawable/RippleForeground;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    :cond_d5
    neg-float v14, v12

    neg-float v15, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v4, 0x102002e

    if-eq v3, v4, :cond_1b

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    return-void
.end method

.method private drawMask(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getMaskType()I
    .registers 7

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-nez v3, :cond_19

    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    if-gtz v3, :cond_19

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->isVisible()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_19

    :cond_18
    return v4

    :cond_19
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_28

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    if-ne v3, v4, :cond_26

    return v5

    :cond_26
    const/4 v3, 0x2

    return v3

    :cond_28
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_42

    aget-object v3, v0, v2

    iget-object v3, v3, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    if-eq v3, v4, :cond_3f

    const/4 v3, 0x1

    return v3

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_42
    return v5
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_18

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_18
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private isBounded()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getNumberOfLayers()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method private onHotspotBoundsChanged()V
    .registers 5

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v3, :cond_18

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleForeground;->onHotspotBoundsChanged()V

    :cond_18
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v3, :cond_21

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v3}, Landroid/graphics/drawable/RippleBackground;->onHotspotBoundsChanged()V

    :cond_21
    return-void
.end method

.method private pruneRipples()V
    .registers 7

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/4 v1, 0x0

    move v3, v2

    :goto_7
    if-ge v1, v0, :cond_1b

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/RippleForeground;->hasFinishedExit()Z

    move-result v5

    if-nez v5, :cond_27

    add-int/lit8 v2, v3, 0x1

    aget-object v5, v4, v1

    aput-object v5, v4, v3

    :goto_17
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_7

    :cond_1b
    move v1, v3

    :goto_1c
    if-ge v1, v0, :cond_24

    const/4 v5, 0x0

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_24
    iput v3, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    return-void

    :cond_27
    move v2, v3

    goto :goto_17
.end method

.method private setBackgroundActive(ZZ)V
    .registers 4

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz p1, :cond_c

    invoke-direct {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundExit()V

    goto :goto_b
.end method

.method private setRippleActive(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz p1, :cond_c

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleExit()V

    goto :goto_b
.end method

.method private tryBackgroundEnter(Z)V
    .registers 6

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v1, :cond_13

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v0

    new-instance v1, Landroid/graphics/drawable/RippleBackground;

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    iget-boolean v3, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/graphics/drawable/RippleBackground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;ZZ)V

    iput-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    :cond_13
    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v2, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/RippleBackground;->setup(FI)V

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleBackground;->enter(Z)V

    return-void
.end method

.method private tryBackgroundExit()V
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->exit()V

    :cond_9
    return-void
.end method

.method private tryRippleEnter()V
    .registers 9

    const/4 v7, 0x0

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_26

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    if-eqz v0, :cond_38

    iput-boolean v7, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    iget v3, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iget v4, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    :goto_16
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v5

    new-instance v0, Landroid/graphics/drawable/RippleForeground;

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    iget-boolean v6, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/graphics/drawable/RippleForeground;-><init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;FFZZ)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    :cond_26
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v1, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleDrawable;->mDensity:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleForeground;->setup(FI)V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/RippleForeground;->enter(Z)V

    return-void

    :cond_38
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    goto :goto_16
.end method

.method private tryRippleExit()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    if-nez v0, :cond_f

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/RippleForeground;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->exit()V

    iput-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    :cond_22
    return-void
.end method

.method private updateLocalState()V
    .registers 2

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateMaskShaderIfNeeded()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    if-eqz v4, :cond_8

    return-void

    :cond_8
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->getMaskType()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_10

    return-void

    :cond_10
    iput-boolean v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v2, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_32

    :cond_1e
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2d

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :cond_2d
    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iput-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void

    :cond_32
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_42

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-eq v4, v5, :cond_a6

    :cond_42
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_4b

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4b
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/BitmapShader;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskShader:Landroid/graphics/BitmapShader;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    :goto_71
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    if-nez v4, :cond_b8

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    :goto_7c
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v4, :cond_89

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_89
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v3

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x2

    if-ne v2, v4, :cond_be

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->drawMask(Landroid/graphics/Canvas;)V

    :cond_9e
    :goto_9e
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    int-to-float v5, v1

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_a6
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-ne v4, v5, :cond_42

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_71

    :cond_b8
    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    goto :goto_7c

    :cond_be
    if-ne v2, v9, :cond_9e

    iget-object v4, p0, Landroid/graphics/drawable/RippleDrawable;->mMaskCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    goto :goto_9e
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, v1, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_1c
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v3, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget-object v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    aget v0, v0, v1

    if-nez v0, :cond_33

    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": <ripple> requires a valid color attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-nez v2, :cond_8

    return-void

    :cond_8
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    if-eqz v3, :cond_1d

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mTouchThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_14
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_1a} :catch_35
    .catchall {:try_start_14 .. :try_end_1a} :catchall_3d

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1d
    :goto_1d
    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_31

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_31

    iget-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    :cond_31
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void

    :catch_35
    move-exception v1

    :try_start_36
    invoke-static {v1}, Landroid/graphics/drawable/RippleDrawable;->rethrowAsRuntimeException(Ljava/lang/Exception;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1d

    :catchall_3d
    move-exception v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable$RippleState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->canApplyTheme()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method bridge synthetic createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;

    move-result-object v0

    return-object v0
.end method

.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/RippleDrawable$RippleState;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/RippleDrawable$RippleState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/RippleDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->pruneRipples()V

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->save(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawContent(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->drawBackgroundAndRipples(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    return-object v0
.end method

.method public getDirtyBounds()Landroid/graphics/Rect;
    .registers 11

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v9

    if-nez v9, :cond_4d

    iget-object v6, p0, Landroid/graphics/drawable/RippleDrawable;->mDrawingBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/graphics/drawable/RippleDrawable;->mDirtyBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    float-to-int v3, v9

    iget-object v9, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v9

    float-to-int v4, v9

    iget-object v8, p0, Landroid/graphics/drawable/RippleDrawable;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipples:[Landroid/graphics/drawable/RippleForeground;

    iget v0, p0, Landroid/graphics/drawable/RippleDrawable;->mExitingRipplesCount:I

    const/4 v7, 0x0

    :goto_25
    if-ge v7, v0, :cond_35

    aget-object v9, v1, v7

    invoke-virtual {v9, v8}, Landroid/graphics/drawable/RippleForeground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    :cond_35
    iget-object v2, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v2, :cond_42

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/RippleBackground;->getBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_42
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->getDirtyBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    return-object v5

    :cond_4d
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    return-object v9
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 8

    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v0, v3, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_23

    aget-object v4, v1, v2

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-eq v4, v5, :cond_20

    aget-object v4, v1, v2

    iget-object v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    return-void

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_23
    return-void
.end method

.method public getRadius()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v0, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lcom/android/internal/R$styleable;->RippleDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RippleDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->setPaddingMode(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/LayerDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->updateLocalState()V

    return-void
.end method

.method public invalidateSelf()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method invalidateSelf(Z)V
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_8
    return-void
.end method

.method public isProjected()Z
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->isBounded()Z

    move-result v3

    if-eqz v3, :cond_8

    return v4

    :cond_8
    iget-object v3, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iget v2, v3, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_32

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_32

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_31
    return v4

    :cond_32
    const/4 v3, 0x1

    return v3
.end method

.method public isStateful()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->jumpToCurrentState()V

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->end()V

    :cond_c
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->end()V

    :cond_15
    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->cancelExitingRipples()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    const v0, 0x102002e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleBackground;->onBoundsChange()V

    :cond_18
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleForeground;->onBoundsChange()V

    :cond_21
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onStateChange([I)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->onStateChange([I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v9, p1

    move v6, v7

    :goto_c
    if-ge v6, v9, :cond_2e

    aget v5, p1, v6

    const v10, 0x101009e

    if-ne v5, v10, :cond_19

    const/4 v1, 0x1

    :cond_16
    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_19
    const v10, 0x101009c

    if-ne v5, v10, :cond_20

    const/4 v2, 0x1

    goto :goto_16

    :cond_20
    const v10, 0x10100a7

    if-ne v5, v10, :cond_27

    const/4 v4, 0x1

    goto :goto_16

    :cond_27
    const v10, 0x1010367

    if-ne v5, v10, :cond_16

    const/4 v3, 0x1

    goto :goto_16

    :cond_2e
    if-eqz v1, :cond_40

    move v6, v4

    :goto_31
    invoke-direct {p0, v6}, Landroid/graphics/drawable/RippleDrawable;->setRippleActive(Z)V

    if-nez v3, :cond_42

    if-nez v2, :cond_42

    if-eqz v1, :cond_44

    :goto_3a
    if-nez v2, :cond_46

    :goto_3c
    invoke-direct {p0, v4, v3}, Landroid/graphics/drawable/RippleDrawable;->setBackgroundActive(ZZ)V

    return v0

    :cond_40
    move v6, v7

    goto :goto_31

    :cond_42
    move v4, v8

    goto :goto_3a

    :cond_44
    move v4, v7

    goto :goto_3a

    :cond_46
    move v3, v8

    goto :goto_3c
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput-object p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method public setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x102002e

    if-ne p1, v0, :cond_10

    iput-object p2, p0, Landroid/graphics/drawable/RippleDrawable;->mMask:Landroid/graphics/drawable/Drawable;

    iput-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mHasValidMask:Z

    :cond_10
    const/4 v0, 0x1

    return v0

    :cond_12
    return v1
.end method

.method public setForceSoftware(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleDrawable;->mForceSoftware:Z

    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mBackground:Landroid/graphics/drawable/RippleBackground;

    if-nez v0, :cond_f

    :cond_8
    iput p1, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingX:F

    iput p2, p0, Landroid/graphics/drawable/RippleDrawable;->mPendingY:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHasPending:Z

    :cond_f
    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mRipple:Landroid/graphics/drawable/RippleForeground;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/RippleForeground;->move(FF)V

    :cond_18
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleDrawable;->mOverrideBounds:Z

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->onHotspotBoundsChanged()V

    return-void
.end method

.method public setPaddingMode(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    return-void
.end method

.method public setRadius(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/RippleDrawable;->mState:Landroid/graphics/drawable/RippleDrawable$RippleState;

    iput p1, v0, Landroid/graphics/drawable/RippleDrawable$RippleState;->mMaxRadius:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setVisible(ZZ)Z

    move-result v0

    if-nez p1, :cond_a

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->clearHotspots()V

    :cond_9
    :goto_9
    return v0

    :cond_a
    if-eqz v0, :cond_9

    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mRippleActive:Z

    if-eqz v1, :cond_13

    invoke-direct {p0}, Landroid/graphics/drawable/RippleDrawable;->tryRippleEnter()V

    :cond_13
    iget-boolean v1, p0, Landroid/graphics/drawable/RippleDrawable;->mBackgroundActive:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/graphics/drawable/RippleDrawable;->tryBackgroundEnter(Z)V

    :cond_1b
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleDrawable;->jumpToCurrentState()V

    goto :goto_9
.end method
