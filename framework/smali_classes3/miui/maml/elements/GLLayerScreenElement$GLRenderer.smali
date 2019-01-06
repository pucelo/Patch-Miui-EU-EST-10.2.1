.class Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "GLLayerScreenElement.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/GLLayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/GLLayerScreenElement;Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lmiui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get4(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get4(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_24
    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/GLLayerScreenElement;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->doneRender()V

    :cond_31
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get2(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get6(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v2, p2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get1(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    int-to-double v2, p3

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get2(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_38
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get3(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get3(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    iget-object v0, p0, Lmiui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lmiui/maml/elements/GLLayerScreenElement;

    invoke-static {v0}, Lmiui/maml/elements/GLLayerScreenElement;->-get0(Lmiui/maml/elements/GLLayerScreenElement;)Lmiui/maml/data/IndexedVariable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method
