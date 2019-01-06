.class public Lmiui/maml/FancyDrawable;
.super Lmiui/maml/MamlDrawable;
.source "FancyDrawable.java"

# interfaces
.implements Lmiui/maml/RendererController$IRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/FancyDrawable$1;,
        Lmiui/maml/FancyDrawable$FancyDrawableState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final RENDER_TIMEOUT:I = 0x64

.field private static final START_IMAGE_NAME:Ljava/lang/String; = "startImage.png"

.field private static final USE_QUIET_IMAGE_TAG:Ljava/lang/String; = "useQuietImage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lmiui/maml/RendererCore;

.field private mStartDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeOut:Z


# direct methods
.method static synthetic -set0(Lmiui/maml/FancyDrawable;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/FancyDrawable;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doPause()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .registers 4

    invoke-direct {p0}, Lmiui/maml/MamlDrawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .registers 5

    invoke-direct {p0}, Lmiui/maml/MamlDrawable;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/FancyDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/FancyDrawable$1;-><init>(Lmiui/maml/FancyDrawable;)V

    iput-object v0, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    return-void
.end method

.method private doPause()V
    .registers 3

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-eqz v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    const-string/jumbo v0, "doPause: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->pauseRenderable(Lmiui/maml/RendererController$IRenderable;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private doResume()V
    .registers 3

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_19

    if-nez v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    const-string/jumbo v0, "doResume: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/FancyDrawable;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->resumeRenderable(Lmiui/maml/RendererController$IRenderable;)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;)Lmiui/maml/FancyDrawable;
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/maml/RenderThread;->globalThread(Z)Lmiui/maml/RenderThread;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/maml/FancyDrawable;->fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static fromZipFile(Landroid/content/Context;Ljava/lang/String;Lmiui/maml/RenderThread;)Lmiui/maml/FancyDrawable;
    .registers 7

    const/4 v2, 0x0

    new-instance v3, Lmiui/maml/ScreenElementRootFactory$Parameter;

    invoke-direct {v3, p0, p1}, Lmiui/maml/ScreenElementRootFactory$Parameter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v3}, Lmiui/maml/ScreenElementRootFactory;->create(Lmiui/maml/ScreenElementRootFactory$Parameter;)Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    if-nez v1, :cond_d

    return-object v2

    :cond_d
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmiui/maml/ScreenElementRoot;->setDefaultFramerate(F)V

    const/4 v0, 0x0

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->load()Z

    move-result v3

    if-eqz v3, :cond_1d

    new-instance v0, Lmiui/maml/RendererCore;

    invoke-direct {v0, v1, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    :cond_1d
    if-nez v0, :cond_20

    :goto_1f
    return-object v2

    :cond_20
    new-instance v2, Lmiui/maml/FancyDrawable;

    invoke-direct {v2, v0}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    goto :goto_1f
.end method

.method private init(Lmiui/maml/RendererCore;)V
    .registers 7

    const/4 v4, 0x0

    if-nez p1, :cond_9

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_9
    new-instance v1, Lmiui/maml/FancyDrawable$FancyDrawableState;

    invoke-direct {v1, p1}, Lmiui/maml/FancyDrawable$FancyDrawableState;-><init>(Lmiui/maml/RendererCore;)V

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1, p0}, Lmiui/maml/RendererCore;->addRenderable(Lmiui/maml/RendererController$IRenderable;)V

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v2}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lmiui/maml/FancyDrawable;->setIntrinsicSize(II)V

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v1}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v1, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "quietImage.png"

    invoke-virtual {v1, v2, v3}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_68

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_68
    iget-object v1, v0, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iget-object v2, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "startImage.png"

    invoke-virtual {v1, v2, v3}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_96

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_96
    return-void
.end method

.method private init(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "init  root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/maml/ScreenElementRoot;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    new-instance v0, Lmiui/maml/RendererCore;

    invoke-direct {v0, p1, p2}, Lmiui/maml/RendererCore;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/RenderThread;)V

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->init(Lmiui/maml/RendererCore;)V

    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "FancyDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 2

    const-string/jumbo v0, "cleanUp: "

    invoke-direct {p0, v0}, Lmiui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0, p0}, Lmiui/maml/RendererCore;->removeRenderable(Lmiui/maml/RendererController$IRenderable;)V

    return-void
.end method

.method public doRender()V
    .registers 5

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected drawIcon(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    if-eqz v2, :cond_11

    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doResume()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmiui/maml/FancyDrawable;->mTimeOut:Z

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lmiui/maml/FancyDrawable;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lmiui/maml/FancyDrawable;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    const-string/jumbo v2, "useQuietImage"

    iget-object v3, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v3}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_5d

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_59
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_5c
    return-void

    :cond_5d
    iget-object v2, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v2, p1}, Lmiui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_62} :catch_63

    goto :goto_59

    :catch_63
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->cleanUp()V

    invoke-super {p0}, Lmiui/maml/MamlDrawable;->finalize()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-virtual {v0}, Lmiui/maml/RendererCore;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    return-object v0
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onPause()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string/jumbo v1, "pause"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doPause()V

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/FancyDrawable;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    invoke-direct {p0}, Lmiui/maml/FancyDrawable;->doResume()V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_12
    return-void
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .registers 9

    const/4 v5, 0x0

    if-eqz p2, :cond_49

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_b

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_39

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Badge location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not in badged drawable bounds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    iget v4, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lmiui/maml/FancyDrawable;->mIntrinsicWidth:I

    if-gt v0, v1, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lmiui/maml/FancyDrawable;->mIntrinsicHeight:I

    if-gt v0, v1, :cond_b

    :cond_49
    iput-object p1, p0, Lmiui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lmiui/maml/FancyDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p1, v0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mState:Lmiui/maml/MamlDrawable$MamlDrawableState;

    iput-object p2, v0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_12
    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lmiui/maml/FancyDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1b
    return-void
.end method
