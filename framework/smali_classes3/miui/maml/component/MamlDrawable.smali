.class public Lmiui/maml/component/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/component/MamlDrawable$1;,
        Lmiui/maml/component/MamlDrawable$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MamlDrawable"

.field private static final RENDER_TIMEOUT:I = 0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidateSelf:Ljava/lang/Runnable;

.field private mPaused:Z

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mUpdater:Lmiui/maml/RenderUpdater;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lmiui/maml/component/MamlDrawable;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/component/MamlDrawable;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/component/MamlDrawable;->doPause()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/component/MamlDrawable;-><init>(Lmiui/maml/ScreenElementRoot;Z)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Z)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/maml/component/MamlDrawable$1;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlDrawable$1;-><init>(Lmiui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    new-instance v0, Lmiui/maml/component/MamlDrawable$2;

    invoke-direct {v0, p0}, Lmiui/maml/component/MamlDrawable$2;-><init>(Lmiui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    iput-object p1, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lmiui/maml/component/MamlDrawable;->setIntrinsicSize(II)V

    new-instance v0, Lmiui/maml/component/MamlDrawable$3;

    iget-object v1, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, v2, p2}, Lmiui/maml/component/MamlDrawable$3;-><init>(Lmiui/maml/component/MamlDrawable;Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->init()V

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method

.method private doPause()V
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "doPause: "

    invoke-direct {p0, v0}, Lmiui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onPause()V

    return-void
.end method

.method private doResume()V
    .registers 2

    iget-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "doResume: "

    invoke-direct {p0, v0}, Lmiui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/component/MamlDrawable;->mPaused:Z

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->onResume()V

    return-void
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .registers 5

    const-string/jumbo v0, "MamlDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/component/MamlDrawable;->toString()Ljava/lang/String;

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

    invoke-direct {p0, v0}, Lmiui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0}, Lmiui/maml/RenderUpdater;->cleanUp()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    iget-object v3, p0, Lmiui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lmiui/maml/component/MamlDrawable;->doResume()V

    :try_start_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lmiui/maml/component/MamlDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lmiui/maml/component/MamlDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget v3, p0, Lmiui/maml/component/MamlDrawable;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lmiui/maml/component/MamlDrawable;->mHeight:I

    int-to-float v4, v4

    iget v5, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3a} :catch_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_3a} :catch_3b

    :goto_3a
    return-void

    :catch_3b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const-string/jumbo v3, "MamlDrawable"

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "MamlDrawable"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget v0, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .registers 2

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setAutoCleanup(Z)Lmiui/maml/component/MamlDrawable;
    .registers 3

    iget-object v0, p0, Lmiui/maml/component/MamlDrawable;->mUpdater:Lmiui/maml/RenderUpdater;

    invoke-virtual {v0, p1}, Lmiui/maml/RenderUpdater;->setAutoCleanup(Z)V

    return-object p0
.end method

.method public setBounds(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p3, p1

    iput v0, p0, Lmiui/maml/component/MamlDrawable;->mWidth:I

    sub-int v0, p4, p2

    iput v0, p0, Lmiui/maml/component/MamlDrawable;->mHeight:I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setIntrinsicSize(II)V
    .registers 3

    iput p1, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    iput p2, p0, Lmiui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    return-void
.end method
