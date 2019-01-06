.class Landroid/filterpacks/videosrc/SurfaceTextureSource$1;
.super Ljava/lang/Object;
.source "SurfaceTextureSource.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/SurfaceTextureSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/SurfaceTextureSource;)V
    .registers 2

    iput-object p1, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 4

    invoke-static {}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "SurfaceTextureSource"

    const-string/jumbo v1, "New frame from SurfaceTexture"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Landroid/filterpacks/videosrc/SurfaceTextureSource$1;->this$0:Landroid/filterpacks/videosrc/SurfaceTextureSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/SurfaceTextureSource;->-get1(Landroid/filterpacks/videosrc/SurfaceTextureSource;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
