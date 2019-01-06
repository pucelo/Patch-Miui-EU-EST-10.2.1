.class Landroid/app/ActivityView$SurfaceCallback;
.super Ljava/lang/Object;
.source "ActivityView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ActivityView;


# direct methods
.method private constructor <init>(Landroid/app/ActivityView;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityView;Landroid/app/ActivityView$SurfaceCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityView$SurfaceCallback;-><init>(Landroid/app/ActivityView;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->-wrap0(Landroid/app/ActivityView;)I

    move-result v1

    invoke-virtual {v0, p3, p4, v1}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    :cond_17
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v1}, Landroid/app/ActivityView;->-get2(Landroid/app/ActivityView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ActivityView;->-set0(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-wrap1(Landroid/app/ActivityView;)V

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$StateCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-virtual {v0, v1}, Landroid/app/ActivityView$StateCallback;->onActivityViewReady(Landroid/app/ActivityView;)V

    :cond_3b
    :goto_3b
    return-void

    :cond_3c
    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    goto :goto_3b
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get1(Landroid/app/ActivityView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0, v1}, Landroid/app/ActivityView;->-set0(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/app/ActivityView$SurfaceCallback;->this$0:Landroid/app/ActivityView;

    invoke-static {v0}, Landroid/app/ActivityView;->-get3(Landroid/app/ActivityView;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    :cond_20
    return-void
.end method
