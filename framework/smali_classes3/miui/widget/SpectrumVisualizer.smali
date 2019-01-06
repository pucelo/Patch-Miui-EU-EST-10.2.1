.class public Lmiui/widget/SpectrumVisualizer;
.super Landroid/widget/ImageView;
.source "SpectrumVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/SpectrumVisualizer$1;,
        Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;,
        Lmiui/widget/SpectrumVisualizer$DotBarDrawer;,
        Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;
    }
.end annotation


# static fields
.field private static final CONSIDER_SAMPLE_LENGTH:I = 0xa0

.field public static IS_LPA_DECODE:Z = false

.field private static final RES_DEFAULT_SLIDING_DOT_BAR_ID:I = 0x11020099

.field private static final RES_DEFAULT_SLIDING_PANEL_ID:I = 0x11020098

.field private static final RES_DEFAULT_SLIDING_SHADOW_DOT_BAR_ID:I = 0x1102009a

.field private static final TAG:Ljava/lang/String; = "SpectrumVisualizer"

.field private static final VISUALIZATION_SAMPLE_LENGTH:I = 0x100


# instance fields
.field private INDEX_SCALE_FACTOR:F

.field private final MAX_VALID_SAMPLE:I

.field private SAMPLE_SCALE_FACTOR:F

.field private VISUALIZE_DESC_HEIGHT:F

.field mAlphaWidthNum:I

.field private mCachedBitmap:Landroid/graphics/Bitmap;

.field private mCachedCanvas:Landroid/graphics/Canvas;

.field mCellSize:I

.field mDotbarHeight:I

.field private mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

.field private mEnableDrawing:Z

.field private mIsEnableUpdate:Z

.field private mIsNeedCareStreamActive:Z

.field private mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field mPaint:Landroid/graphics/Paint;

.field mPixels:[I

.field mPointData:[F

.field private mSampleBuf:[S

.field mShadowDotbarHeight:I

.field mShadowPixels:[I

.field private mSoftDrawEnabled:Z

.field private mVisualizationHeight:I

.field mVisualizationHeightNum:I

.field private mVisualizationWidth:I

.field mVisualizationWidthNum:I

.field private mVisualizer:Landroid/media/audiofx/Visualizer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "persist.sys.lpa.decode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa0

    new-array v0, v0, [S

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    new-instance v0, Lmiui/widget/SpectrumVisualizer$1;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$1;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    const/16 v0, 0x14

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->MAX_VALID_SAMPLE:I

    invoke-direct {p0, p1, p2}, Lmiui/widget/SpectrumVisualizer;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;)V
    .registers 7

    const/16 v3, 0xff

    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    sub-int v0, v2, v3

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_f
    if-ge v1, v0, :cond_19

    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    invoke-interface {v2, p1, v1}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_19
    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :goto_1b
    if-lez v1, :cond_39

    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mPaint:Landroid/graphics/Paint;

    mul-int/lit16 v3, v1, 0xff

    iget v4, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    iget-object v2, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    sub-int/2addr v3, v1

    invoke-interface {v2, p1, v3}, Lmiui/widget/SpectrumVisualizer$DotBarDrawer;->drawDotBar(Landroid/graphics/Canvas;I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    :cond_39
    return-void
.end method

.method private drawToBitmap()Landroid/graphics/Bitmap;
    .registers 6

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1e

    :cond_1a
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    :cond_1e
    if-nez v0, :cond_37

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lmiui/widget/SpectrumVisualizer;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    :cond_37
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-direct {p0, v1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iput-boolean v9, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    iput-boolean v9, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    iput v10, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-eqz p2, :cond_40

    sget-object v8, Landroid/miui/R$styleable;->SpectrumVisualizer:[I

    invoke-virtual {p1, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iget v8, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    const/4 v9, 0x4

    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    const/4 v8, 0x5

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    const/4 v8, 0x6

    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_40
    if-nez v4, :cond_4d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11020098

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_4d
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v2, :cond_60

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11020099

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_60
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v7, :cond_7d

    if-nez v6, :cond_76

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1102009a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_76
    move-object v8, v6

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_7d
    invoke-virtual {p0, v3, v1, v5}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public enableDrawing(Z)V
    .registers 2

    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    return-void
.end method

.method public enableUpdate(Z)V
    .registers 10

    :try_start_0
    iget-boolean v3, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    if-eq v3, p1, :cond_19

    if-eqz p1, :cond_47

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-nez v3, :cond_47

    sget-boolean v3, Lmiui/widget/SpectrumVisualizer;->IS_LPA_DECODE:Z

    if-eqz v3, :cond_1a

    const-string/jumbo v3, "SpectrumVisualizer"

    const-string/jumbo v4, "lpa decode is on, can\'t enable"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_17
    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    :cond_19
    :goto_19
    return-void

    :cond_1a
    new-instance v3, Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->getEnabled()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/16 v4, 0x200

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    iget-object v4, p0, Lmiui/widget/SpectrumVisualizer;->mOnDataCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    goto :goto_17

    :catch_45
    move-exception v0

    goto :goto_19

    :cond_47
    if-nez p1, :cond_17

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-ge v3, v4, :cond_63

    const-string/jumbo v3, "is_xiaomi_device"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6e

    :cond_63
    :goto_63
    iget-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v3}, Landroid/media/audiofx/Visualizer;->release()V

    const/4 v3, 0x0

    iput-object v3, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizer:Landroid/media/audiofx/Visualizer;

    goto :goto_17

    :catch_6c
    move-exception v2

    goto :goto_19

    :cond_6e
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_73
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_73} :catch_45
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_73} :catch_6c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_73} :catch_74

    goto :goto_63

    :catch_74
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19
.end method

.method public getVisualHeight()I
    .registers 2

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    return v0
.end method

.method public getVisualWidth()I
    .registers 2

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    return v0
.end method

.method public isUpdateEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mIsEnableUpdate:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mEnableDrawing:Z

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lmiui/widget/SpectrumVisualizer;->drawToBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_15
    return-void

    :cond_16
    invoke-direct {p0, p1}, Lmiui/widget/SpectrumVisualizer;->drawInternal(Landroid/graphics/Canvas;)V

    goto :goto_15
.end method

.method public setAlphaNum(I)V
    .registers 3

    const/4 v0, 0x0

    if-gtz p1, :cond_6

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    return-void

    :cond_6
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_10

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 p1, v0, 0x2

    :cond_10
    iput p1, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    return-void
.end method

.method public setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 14

    const/4 v8, 0x0

    const/4 v2, 0x0

    iput p1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iput p2, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_1c

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    :cond_1c
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mPixels:[I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    move-object v0, p3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidth:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float v0, v1, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    new-array v0, v0, [F

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    if-nez v0, :cond_6f

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mAlphaWidthNum:I

    :cond_6f
    iput-object v8, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    if-eqz p4, :cond_b6

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    if-le v0, v1, :cond_89

    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mDotbarHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    :cond_89
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    if-ge v0, v1, :cond_97

    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    return-void

    :cond_97
    iget v0, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v1, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    iget-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mShadowPixels:[I

    iget v3, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v6, p0, Lmiui/widget/SpectrumVisualizer;->mCellSize:I

    iget v7, p0, Lmiui/widget/SpectrumVisualizer;->mShadowDotbarHeight:I

    move-object v0, p4

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v0, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$SymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    :goto_b5
    return-void

    :cond_b6
    new-instance v0, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;

    invoke-direct {v0, p0}, Lmiui/widget/SpectrumVisualizer$AsymmetryDotBar;-><init>(Lmiui/widget/SpectrumVisualizer;)V

    iput-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mDrawer:Lmiui/widget/SpectrumVisualizer$DotBarDrawer;

    goto :goto_b5
.end method

.method public setBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-virtual {p0, p1}, Lmiui/widget/SpectrumVisualizer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lmiui/widget/SpectrumVisualizer;->setBitmaps(IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setSoftDrawEnabled(Z)V
    .registers 4

    const/4 v1, 0x0

    iput-boolean p1, p0, Lmiui/widget/SpectrumVisualizer;->mSoftDrawEnabled:Z

    if-nez p1, :cond_12

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lmiui/widget/SpectrumVisualizer;->mCachedCanvas:Landroid/graphics/Canvas;

    :cond_12
    return-void
.end method

.method update([B)V
    .registers 20

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lmiui/widget/SpectrumVisualizer;->mIsNeedCareStreamActive:Z

    if-eqz v13, :cond_17

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_17

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    return-void

    :cond_17
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/widget/SpectrumVisualizer;->enableDrawing(Z)V

    if-nez p1, :cond_20

    return-void

    :cond_20
    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/widget/SpectrumVisualizer;->mSampleBuf:[S

    array-length v11, v10

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v11, :cond_4a

    mul-int/lit8 v13, v7, 0x2

    aget-byte v2, p1, v13

    mul-int/lit8 v13, v7, 0x2

    add-int/lit8 v13, v13, 0x1

    aget-byte v3, p1, v13

    mul-int v13, v2, v2

    mul-int v14, v3, v3

    add-int/2addr v13, v14

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-int v4, v14

    const/16 v13, 0x7fff

    if-ge v4, v13, :cond_47

    :goto_41
    int-to-short v13, v4

    aput-short v13, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_47
    const/16 v4, 0x7fff

    goto :goto_41

    :cond_4a
    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_4d
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    if-ge v7, v13, :cond_b4

    const/4 v8, 0x0

    :goto_54
    if-ge v5, v11, :cond_64

    aget-short v13, v10, v12

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationWidthNum:I

    add-int/2addr v5, v13

    goto :goto_54

    :cond_64
    sub-int/2addr v5, v11

    const/4 v13, 0x1

    if-le v8, v13, :cond_ac

    add-int/lit8 v13, v7, 0x2

    int-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->INDEX_SCALE_FACTOR:F

    float-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    double-to-float v6, v14

    add-int/lit8 v13, v8, -0x1

    int-to-float v13, v13

    mul-float/2addr v13, v6

    mul-float v9, v13, v6

    :goto_7f
    const/high16 v13, 0x41a00000    # 20.0f

    cmpl-float v13, v9, v13

    if-lez v13, :cond_ae

    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v9, v13

    :goto_8a
    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    move-object/from16 v0, p0

    iget v14, v0, Lmiui/widget/SpectrumVisualizer;->mVisualizationHeightNum:I

    int-to-float v14, v14

    div-float v14, v9, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lmiui/widget/SpectrumVisualizer;->mPointData:[F

    aget v15, v15, v7

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/widget/SpectrumVisualizer;->VISUALIZE_DESC_HEIGHT:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    aput v14, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_ac
    const/4 v9, 0x0

    goto :goto_7f

    :cond_ae
    move-object/from16 v0, p0

    iget v13, v0, Lmiui/widget/SpectrumVisualizer;->SAMPLE_SCALE_FACTOR:F

    div-float/2addr v9, v13

    goto :goto_8a

    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lmiui/widget/SpectrumVisualizer;->invalidate()V

    return-void
.end method
