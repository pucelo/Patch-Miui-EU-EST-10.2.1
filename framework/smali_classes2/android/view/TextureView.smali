.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$1;,
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field private mHadSurface:Z

.field private mLayer:Landroid/view/HardwareLayer;

.field private mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mLock:[Ljava/lang/Object;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixChanged:Z

.field private mNativeWindow:J

.field private final mNativeWindowLock:[Ljava/lang/Object;

.field private mOpaque:Z

.field private mSaveCount:I

.field private mSurface:Landroid/graphics/SurfaceTexture;

.field private mUpdateLayer:Z

.field private final mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mUpdateSurface:Z


# direct methods
.method static synthetic -wrap0(Landroid/view/TextureView;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    new-instance v0, Landroid/view/TextureView$1;

    invoke-direct {v0, p0}, Landroid/view/TextureView$1;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-void
.end method

.method private applyTransformMatrix()V
    .registers 3

    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/view/HardwareLayer;->setTransform(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    :cond_12
    return-void
.end method

.method private applyUpdate()V
    .registers 5

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_32

    monitor-exit v1

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/HardwareLayer;->prepare(IIZ)Z

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->updateSurfaceTexture()V

    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    :cond_2f
    return-void

    :cond_30
    monitor-exit v1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private destroyHardwareLayer()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->detachSurfaceTexture()V

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    iput-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    :cond_14
    return-void
.end method

.method private native nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native nDestroyNativeWindow()V
.end method

.method private static native nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private releaseSurfaceTexture()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v1, v2}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v0

    :cond_12
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_15
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_26

    monitor-exit v1

    if-eqz v0, :cond_20

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_20
    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/TextureView;->mHadSurface:Z

    :cond_25
    return-void

    :catchall_26
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private updateLayer()V
    .registers 3

    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private updateLayerAndInvalidate()V
    .registers 3

    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b

    monitor-exit v0

    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public buildLayer()V
    .registers 1

    return-void
.end method

.method protected destroyHardwareResources()V
    .registers 1

    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .registers 6

    iget v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v3, -0x600001

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Landroid/view/TextureView;->mPrivateFlags:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_29

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v3, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;)V

    :cond_29
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmap(II)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p1, :cond_1d

    if-lez p2, :cond_1d

    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Landroid/view/TextureView;->getHardwareLayer()Landroid/view/HardwareLayer;

    :cond_19
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    invoke-virtual {v0, p1}, Landroid/view/HardwareLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    :cond_22
    return-object p1
.end method

.method getHardwareLayer()Landroid/view/HardwareLayer;
    .registers 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-nez v1, :cond_69

    iget-object v1, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v1, :cond_11

    :cond_10
    return-object v2

    :cond_11
    iget-object v1, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v1}, Landroid/view/ThreadedRenderer;->createTextureLayer()Landroid/view/HardwareLayer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_8c

    const/4 v0, 0x1

    :goto_20
    if-eqz v0, :cond_2e

    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v5}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v1}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    :cond_2e
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v3, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v1, :cond_62

    if-eqz v0, :cond_62

    iget-object v1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_62
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v2, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/view/HardwareLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    :cond_69
    iget-boolean v1, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v1, :cond_89

    iput-boolean v5, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    iget-object v2, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Landroid/view/HardwareLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_89
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    return-object v1

    :cond_8c
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getLayerType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2

    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    :cond_7
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public isAvailable()Z
    .registers 2

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isOpaque()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    return-object v4

    :cond_8
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_13

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    :cond_13
    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/view/TextureView;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_2e

    move-result v0

    if-nez v0, :cond_22

    monitor-exit v1

    return-object v4

    :cond_22
    monitor-exit v1

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "TextureView"

    const-string/jumbo v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    :cond_1d
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .registers 1

    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    invoke-direct {p0}, Landroid/view/TextureView;->releaseSurfaceTexture()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    :cond_2a
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1c

    if-nez p2, :cond_1d

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    :cond_19
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    goto :goto_1c
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_11

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TextureView doesn\'t support displaying a background drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_11

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TextureView doesn\'t support displaying a foreground drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)V
    .registers 3

    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p1, v0, :cond_9

    iput-object p1, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    :cond_9
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 3

    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setOpaque(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    if-eq p1, v0, :cond_d

    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_d

    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    :cond_d
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 5

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-ne p1, v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_33

    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_33
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0, v0}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    iget v0, p0, Landroid/view/TextureView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_4f

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    :cond_4f
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    return-void
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2

    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .registers 3

    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 6

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-ne p1, v0, :cond_1b

    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    iget-object v1, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v1

    :try_start_13
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0}, Landroid/view/TextureView;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    :cond_1b
    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method
