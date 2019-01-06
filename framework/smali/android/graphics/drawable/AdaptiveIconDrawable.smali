.class public Landroid/graphics/drawable/AdaptiveIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AdaptiveIconDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;,
        Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    }
.end annotation


# static fields
.field private static final BACKGROUND_ID:I = 0x0

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field private static final EXTRA_INSET_PERCENTAGE:F = 0.25f

.field private static final FOREGROUND_ID:I = 0x1

.field public static final MASK_SIZE:F = 100.0f

.field private static final SAFEZONE_SCALE:F = 0.9166667f

.field private static sMask:Landroid/graphics/Path;


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mChildRequestedInvalidation:Z

.field private mHotspotBounds:Landroid/graphics/Rect;

.field mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

.field private mLayersBitmap:Landroid/graphics/Bitmap;

.field private mLayersShader:Landroid/graphics/Shader;

.field private final mMask:Landroid/graphics/Path;

.field private mMaskBitmap:Landroid/graphics/Bitmap;

.field private final mMaskMatrix:Landroid/graphics/Matrix;

.field private mMutated:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mSuspendChildInvalidation:Z

.field private final mTmpOutRect:Landroid/graphics/Rect;

.field private final mTransparentRegion:Landroid/graphics/Region;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V
    .registers 6

    const v2, 0x104014a

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    if-nez v0, :cond_2d

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    :cond_2d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_11

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    :cond_11
    if-eqz p2, :cond_1b

    invoke-direct {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    :cond_1b
    return-void
.end method

.method private addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aput-object p2, v0, p1

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->invalidateCache()V

    return-void
.end method

.method private createChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;
    .registers 6

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v1, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    iput-object p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    return-object v0
.end method

.method public static getExtraInsetFraction()F
    .registers 1

    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method public static getExtraInsetPercentage()F
    .registers 1

    const/high16 v0, 0x3e800000    # 0.25f

    return v0
.end method

.method private getMaxIntrinsicHeight()I
    .registers 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1c

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v3, v4, v2

    iget-object v4, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_12

    :cond_f
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_12
    iget-object v4, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-le v0, v1, :cond_f

    move v1, v0

    goto :goto_f

    :cond_1c
    return v1
.end method

.method private getMaxIntrinsicWidth()I
    .registers 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x2

    if-ge v0, v4, :cond_1c

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v4, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v1, v4, v0

    iget-object v4, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_12

    :cond_f
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_12
    iget-object v4, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v2, v3, :cond_f

    move v3, v2

    goto :goto_f

    :cond_1c
    return v3
.end method

.method private inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x2

    iget-object v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    const/4 v1, 0x0

    :cond_a
    :goto_a
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9f

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-ge v2, v3, :cond_1a

    const/4 v8, 0x3

    if-eq v7, v8, :cond_9f

    :cond_1a
    if-ne v7, v10, :cond_a

    if-gt v2, v3, :cond_a

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "background"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    const/4 v1, 0x0

    :goto_2c
    new-instance v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    iget v8, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mDensity:I

    invoke-direct {v4, v8}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;-><init>(I)V

    sget-object v8, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-static {p1, p4, p3, v8}, Landroid/graphics/drawable/AdaptiveIconDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v8, :cond_9a

    iget-object v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v8, :cond_9a

    :cond_47
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_47

    if-eq v7, v10, :cond_80

    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": <foreground> or <background> tag requires a \'drawable\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "attribute or child tag defining a drawable"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_75
    const-string/jumbo v8, "foreground"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v1, 0x1

    goto :goto_2c

    :cond_80
    iget-object v8, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v8, v8, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    invoke-static {p1, p2, p3, v8, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v8, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v9, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v9

    or-int/2addr v8, v9

    iput v8, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_9a
    invoke-direct {p0, v1, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->addLayer(ILandroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;)V

    goto/16 :goto_a

    :cond_9f
    return-void
.end method

.method private resumeChildInvalidation()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    :cond_c
    return-void
.end method

.method private suspendChildInvalidation()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    return-void
.end method

.method private updateLayerBounds(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->suspendChildInvalidation()V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBoundsInternal(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    return-void

    :catchall_14
    move-exception v0

    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->resumeChildInvalidation()V

    throw v0
.end method

.method private updateLayerBoundsInternal(Landroid/graphics/Rect;)V
    .registers 16

    const v13, 0x3faaaaab

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v0, v9, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x2

    :goto_11
    const/4 v9, 0x2

    if-ge v4, v9, :cond_42

    iget-object v9, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v9, v9, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v8, v9, v4

    if-nez v8, :cond_1f

    :cond_1c
    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1f
    iget-object v3, v8, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v13

    float-to-int v6, v9

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v13

    float-to-int v5, v9

    iget-object v7, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTmpOutRect:Landroid/graphics/Rect;

    sub-int v9, v0, v6

    sub-int v10, v1, v5

    add-int v11, v0, v6

    add-int v12, v1, v5

    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_1c

    :cond_42
    return-void
.end method

.method private updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v2

    iput-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    iget v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_24
    iput-object v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    iget-object v3, p1, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_36
    return-void
.end method

.method private updateMaskBoundsInternal(Landroid/graphics/Rect;)V
    .registers 7

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eq v0, v1, :cond_83

    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    :cond_4d
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawable;->sMask:Landroid/graphics/Path;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iput-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    return-void

    :cond_83
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_4d

    goto :goto_2d
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 11

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v6, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    if-nez v6, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    iget-object v1, v6, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v4, 0x0

    :goto_17
    const/4 v7, 0x2

    if-ge v4, v7, :cond_4a

    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    iget-object v7, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    if-eqz v7, :cond_31

    iget-object v7, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mThemeAttrs:[I

    sget-object v8, Lcom/android/internal/R$styleable;->AdaptiveIconDrawableLayer:[I

    invoke-virtual {p1, v7, v8}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerFromTypedArray(Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_31
    iget-object v2, v5, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_47

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v7, v6, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildrenChangingConfigurations:I

    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_4a
    return-void
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public clearMutated()V
    .registers 5

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x2

    if-ge v2, v3, :cond_17

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_17
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    return-void
.end method

.method createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {v0, p1, p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/graphics/drawable/AdaptiveIconDrawable;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    if-nez v3, :cond_4a

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v2, 0x0

    :goto_18
    const/4 v3, 0x2

    if-ge v2, v3, :cond_36

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v3, v3, v2

    if-nez v3, :cond_26

    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_26
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v3, v3, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_23

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_23

    :cond_36
    new-instance v3, Landroid/graphics/BitmapShader;

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v4, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4a
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5f

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskBitmap:Landroid/graphics/Bitmap;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5f
    return-void
.end method

.method public getAlpha()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public getIconMask()Landroid/graphics/Path;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMaxIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget v0, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    return v0

    :cond_b
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public getSafeZone()Landroid/graphics/Region;
    .registers 7

    const v5, 0x3f6aaaab

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMaskMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance v1, Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    return-object v1
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMask:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->toggleInverseFillType()V

    :cond_24
    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mTransparentRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->hasFocusStateSpecified()Z

    move-result v0

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    if-nez v4, :cond_8

    return-void

    :cond_8
    const/4 v5, 0x0

    invoke-static {p1, v5}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->setDensity(I)V

    iget v5, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSrcDensityOverride:I

    iput v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mSrcDensityOverride:I

    iget-object v0, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_17
    iget-object v5, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    array-length v5, v5

    if-ge v2, v5, :cond_24

    aget-object v3, v0, v2

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->setDensity(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->inflateLayers(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mSuspendChildInvalidation:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mChildRequestedInvalidation:Z

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->invalidateSelf()V

    goto :goto_7
.end method

.method public invalidateSelf()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayersShader:Landroid/graphics/Shader;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->-get0(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;)Z

    move-result v0

    return v0
.end method

.method public isProjected()Z
    .registers 5

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v2

    if-eqz v2, :cond_8

    return v3

    :cond_8
    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v0, 0x0

    :goto_d
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1e

    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isProjected()Z

    move-result v2

    if-eqz v2, :cond_1b

    return v3

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .registers 5

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v3, 0x0

    iget-boolean v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    if-nez v2, :cond_2a

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-ne v2, p0, :cond_2a

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-virtual {p0, v2, v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->createConstantState(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    move-result-object v2

    iput-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v1, 0x0

    :goto_14
    const/4 v2, 0x2

    if-ge v1, v2, :cond_27

    iget-object v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v2, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    aget-object v2, v2, v1

    iget-object v0, v2, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_27
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mMutated:Z

    :cond_2a
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x2

    if-ge v3, v4, :cond_19

    aget-object v4, v0, v3

    iget-object v2, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v1, 0x1

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_19
    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    :cond_22
    return v1
.end method

.method protected onStateChange([I)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1f

    aget-object v4, v0, v3

    iget-object v2, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    if-eqz v4, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1f
    if-eqz v1, :cond_28

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->updateLayerBounds(Landroid/graphics/Rect;)V

    :cond_28
    return v1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 6

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method public setAutoMirrored(Z)V
    .registers 6

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-static {v3, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->-set0(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Z)Z

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x2

    if-ge v2, v3, :cond_19

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_16

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_19
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 6

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method public setDither(Z)V
    .registers 6

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method public setHotspot(FF)V
    .registers 7

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 9

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x2

    if-ge v2, v3, :cond_14

    aget-object v3, v0, v2

    iget-object v1, v3, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_20

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    :goto_1f
    return-void

    :cond_20
    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mHotspotBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1f
.end method

.method public setOpacity(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iput p1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mOpacityOverride:I

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v0, 0x2

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x2

    if-ge v3, v4, :cond_15

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 7

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v0, 0x2

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x2

    if-ge v3, v4, :cond_15

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    iget-object v4, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;->mLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    iget-object v0, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x2

    if-ge v3, v4, :cond_18

    aget-object v4, v0, v3

    iget-object v2, v4, Landroid/graphics/drawable/AdaptiveIconDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    return v1
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 3

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
