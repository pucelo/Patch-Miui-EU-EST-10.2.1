.class Landroid/hardware/camera2/legacy/RequestThreadManager$2;
.super Ljava/lang/Object;
.source "RequestThreadManager.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 15

    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Received jpeg."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get3(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/camera2/legacy/CaptureCollector;->jpegProduced()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v9, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v9, :cond_29

    :cond_1c
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Dropping jpeg frame."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/legacy/RequestHolder;

    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/hardware/camera2/legacy/RequestHolder;->getHolderTargets()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3d
    :goto_3d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    :try_start_49
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get10(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_3d

    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Producing jpeg buffer..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v9, p1

    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetJpegFooterSize()I

    move-result v10

    add-int v8, v9, v10

    add-int/lit8 v9, v8, 0x3

    and-int/lit8 v8, v9, -0x4

    invoke-static {v4, v6, v7}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    const/4 v9, 0x1

    invoke-static {v4, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    int-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v1, v10

    add-int/lit8 v9, v1, 0xf

    and-int/lit8 v1, v9, -0x10

    invoke-static {v4, v1, v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    const/16 v9, 0x21

    invoke-static {v4, p1, v1, v1, v9}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->produceFrame(Landroid/view/Surface;[BIII)V
    :try_end_89
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_49 .. :try_end_89} :catch_8a

    goto :goto_3d

    :catch_8a
    move-exception v2

    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get0(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "Surface abandoned, dropping frame. "

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    :cond_98
    iget-object v9, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-static {v9}, Landroid/hardware/camera2/legacy/RequestThreadManager;->-get13(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
