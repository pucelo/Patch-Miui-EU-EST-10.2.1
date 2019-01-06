.class public Lmiui/maml/elements/GLLayerScreenElement;
.super Lmiui/maml/elements/ViewHolderScreenElement;
.source "GLLayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;,
        Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML GLLayerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "GLLayer"


# instance fields
.field private mCanvasVar:Lmiui/maml/data/IndexedVariable;

.field private mHVar:Lmiui/maml/data/IndexedVariable;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;

.field private mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;

.field private mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mViewVar:Lmiui/maml/data/IndexedVariable;

.field private mWVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

    return-object v0
.end method

.method static synthetic -get5(Lmiui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic -get6(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v2, Landroid/opengl/GLSurfaceView;

    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lmiui/maml/elements/GLLayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lmiui/maml/elements/GLLayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    new-instance v3, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;

    invoke-direct {v3, p0, v5}, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    if-eqz v2, :cond_a4

    const/4 v0, 0x0

    :goto_40
    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v0}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string/jumbo v3, "create"

    invoke-virtual {v2, v3}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lmiui/maml/CommandTrigger;

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string/jumbo v3, "change"

    invoke-virtual {v2, v3}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lmiui/maml/CommandTrigger;

    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    const-string/jumbo v3, "draw"

    invoke-virtual {v2, v3}, Lmiui/maml/CommandTriggers;->find(Ljava/lang/String;)Lmiui/maml/CommandTrigger;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

    :cond_6a
    iget-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lmiui/maml/CommandTrigger;

    if-nez v2, :cond_77

    const-string/jumbo v2, "GLLayerScreenElement"

    const-string/jumbo v3, "no draw commands."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_77
    invoke-virtual {p0}, Lmiui/maml/elements/GLLayerScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v3, "__objGLCanvas"

    invoke-direct {v2, v3, v1, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v3, "__objGLView"

    invoke-direct {v2, v3, v1, v7}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mViewVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v3, "__w"

    invoke-direct {v2, v3, v1, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mWVar:Lmiui/maml/data/IndexedVariable;

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    const-string/jumbo v3, "__h"

    invoke-direct {v2, v3, v1, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v2, p0, Lmiui/maml/elements/GLLayerScreenElement;->mHVar:Lmiui/maml/data/IndexedVariable;

    return-void

    :cond_a4
    const/4 v0, 0x1

    goto :goto_40
.end method


# virtual methods
.method protected doTick(J)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/GLLayerScreenElement;->doTickSelf(J)V

    invoke-virtual {p0}, Lmiui/maml/elements/GLLayerScreenElement;->udpateView()V

    return-void
.end method

.method protected getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method public init()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement;->mViewVar:Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    invoke-super {p0}, Lmiui/maml/elements/ViewHolderScreenElement;->init()V

    return-void
.end method

.method protected onControllerCreated(Lmiui/maml/RendererController;)V
    .registers 4

    new-instance v0, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$ProxyListener;)V

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    return-void
.end method
