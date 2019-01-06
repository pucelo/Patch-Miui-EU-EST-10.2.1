.class public Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;
.super Ljava/lang/Object;
.source "MiuiGxzwFrameAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;,
        Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;,
        Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Landroid/view/SurfaceHolder$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDrawHandler:Landroid/os/Handler;

.field private mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

.field private final mDrawThread:Landroid/os/HandlerThread;

.field private volatile mFrameInterval:I

.field private final mHandler:Landroid/os/Handler;

.field private mLastDrawAnim:Z

.field private volatile mMode:I

.field private final mRecycleBitmapQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSupportInBitmap:Z

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private final mSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mFrameInterval:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mMode:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->decodeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->clearSurface()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;Landroid/graphics/Bitmap;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->drawBitmap(Landroid/graphics/Bitmap;F)V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mFrameInterval:I

    iput-boolean v2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSupportInBitmap:Z

    iput v2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mLastDrawAnim:Z

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    iput-object p1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iput-object p2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mCallBack:Landroid/view/SurfaceHolder$Callback;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mCallBack:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FrameAnimation Draw Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    return-void
.end method

.method private clearSurface()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    throw v1
.end method

.method private configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;
    .locals 10

    const/high16 v9, 0x3f000000    # 0.5f

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v7, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    int-to-float v7, v1

    int-to-float v8, v6

    mul-float/2addr v8, p2

    sub-float/2addr v7, v8

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v2, v7

    int-to-float v7, v0

    int-to-float v8, v5

    mul-float/2addr v8, p2

    sub-float/2addr v7, v8

    mul-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v3, v7

    invoke-virtual {v4, p2, p2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v4
.end method

.method private decodeBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSupportInBitmap:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-object v1, v2, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V

    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FLcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V
    .locals 5

    iget-object v3, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v3, "MiuiGxzwFrameAnimation"

    const-string/jumbo v4, "drawBitmap: bitmap or canvas is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;

    move-result-object v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    if-eqz p2, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->configureDrawMatrix(Landroid/graphics/Bitmap;F)Landroid/graphics/Matrix;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    if-nez p4, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    return-void

    :cond_3
    :try_start_1
    invoke-interface {p4, v1, p1, v2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;->drawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-direct {p0, v1}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V

    throw v3
.end method

.method private unlockCanvasAndPostSafely(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    const-string/jumbo v0, "MiuiGxzwFrameAnimation"

    const-string/jumbo v1, "clean"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->stopAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$2;-><init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public draw(IZF)V
    .locals 5

    const-string/jumbo v2, "MiuiGxzwFrameAnimation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "draw: res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", anim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", scale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->stopAnimation()V

    iget-boolean v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mLastDrawAnim:Z

    move v0, p2

    iput-boolean p2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mLastDrawAnim:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    xor-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mRecycleBitmapQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;

    invoke-direct {v3, p0, p1, p3, p2}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$1;-><init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;IFZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->isAniming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAniming()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->getDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFrameInterval(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "frameInterval < 0"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mFrameInterval:I

    return-void
.end method

.method public setMode(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wrong mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mMode:I

    return-void
.end method

.method public startAnimation([IIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mLastDrawAnim:Z

    invoke-virtual {p0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->stopAnimation()V

    new-instance v0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;-><init>(Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;[IIIILcom/android/keyguard/fod/MiuiGxzwFrameAnimation$FrameAnimationListener;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$CustomerDrawBitmap;Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V

    iput-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopAnimation()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->getDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;->stopDraw()V

    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation;->mDrawRunnable:Lcom/android/keyguard/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    return-void
.end method
