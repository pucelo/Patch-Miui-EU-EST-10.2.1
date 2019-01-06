.class public Landroid/renderscript/RSSurfaceView;
.super Landroid/view/SurfaceView;
.source "RSSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Landroid/renderscript/RSSurfaceView;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;
    .registers 4

    new-instance v0, Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0}, Landroid/renderscript/RSSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    invoke-virtual {p0, v0}, Landroid/renderscript/RSSurfaceView;->setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V

    return-object v0
.end method

.method public destroyRenderScriptGL()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRenderScriptGL()Landroid/renderscript/RenderScriptGL;
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->pause()V

    :cond_9
    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->resume()V

    :cond_9
    return-void
.end method

.method public setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V
    .registers 2

    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    iput-object p1, p0, Landroid/renderscript/RSSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/renderscript/RSSurfaceView;->mRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
