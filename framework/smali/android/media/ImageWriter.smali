.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;,
        Landroid/media/ImageWriter$WriterSurfaceImage;
    }
.end annotation


# instance fields
.field private mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mEstimatedNativeAllocBytes:I

.field private mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private mWriterFormat:I


# direct methods
.method static synthetic -get0(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .registers 2

    iget-object v0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    return-void
.end method

.method protected constructor <init>(Landroid/view/Surface;II)V
    .registers 9

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    if-eqz p1, :cond_16

    if-ge p2, v4, :cond_3b

    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal input argument: surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxImages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-nez p3, :cond_43

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result p3

    :cond_43
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2, p3, v4}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void
.end method

.method private abortImage(Landroid/media/Image;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "image shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_24

    return-void

    :cond_24
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-wrap0(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    return-void
.end method

.method private attachAndQueueInputImage(Landroid/media/Image;)V
    .registers 15

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "image shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-virtual {p1}, Landroid/media/Image;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_29

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual {p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v6

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v7

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->top:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIII)I

    return-void
.end method

.method private synchronized native declared-synchronized cancelImage(JLandroid/media/Image;)V
.end method

.method private isImageOwnedByMe(Landroid/media/Image;)Z
    .registers 5

    const/4 v2, 0x0

    instance-of v1, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    if-nez v1, :cond_6

    return v2

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v1

    if-eq v1, p0, :cond_10

    return v2

    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method private synchronized native declared-synchronized nativeAttachAndQueueImage(JJIJIIII)I
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose(J)V
.end method

.method private synchronized native declared-synchronized nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;Landroid/view/Surface;II)J
.end method

.method private synchronized native declared-synchronized nativeQueueInputImage(JLandroid/media/Image;JIIII)V
.end method

.method public static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .registers 4

    new-instance v0, Landroid/media/ImageWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;II)V

    return-object v0
.end method

.method public static newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .registers 6

    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Landroid/media/ImageWriter;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;II)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .registers 6

    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    if-nez v1, :cond_c

    return-void

    :cond_c
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_f
    iget-object v0, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_19

    monitor-exit v3

    if-eqz v0, :cond_18

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_18
    return-void

    :catchall_19
    move-exception v4

    monitor-exit v3

    throw v4
.end method


# virtual methods
.method public close()V
    .registers 6

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    goto :goto_b

    :cond_1b
    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Landroid/media/ImageWriter;->nativeClose(J)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    iget v2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_38

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    iput v4, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    :cond_38
    return-void
.end method

.method public dequeueInputImage()Landroid/media/Image;
    .registers 5

    iget v1, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    const/16 v2, 0x22

    if-ne v1, v2, :cond_f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PRIVATE format ImageWriter doesn\'t support this operation since the images are inaccessible to the application!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-lt v1, v2, :cond_35

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Already dequeued max number of Images "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_35
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v2, v3, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_7
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .registers 2

    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public getMaxImages()I
    .registers 2

    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public queueInputImage(Landroid/media/Image;)V
    .registers 16

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v11

    if-eqz v11, :cond_23

    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v0, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Image from ImageWriter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    if-nez v11, :cond_46

    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ImageReader;

    if-nez v0, :cond_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/ImageReader;

    invoke-virtual {v12, p1}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void

    :cond_46
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v10

    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    iget v6, v10, Landroid/graphics/Rect;->left:I

    iget v7, v10, Landroid/graphics/Rect;->top:I

    iget v8, v10, Landroid/graphics/Rect;->right:I

    iget v9, v10, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIII)V

    if-eqz v11, :cond_6d

    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object v13, p1

    check-cast v13, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-static {v13}, Landroid/media/ImageWriter$WriterSurfaceImage;->-wrap0(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    const/4 v0, 0x0

    iput-boolean v0, v13, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    :cond_6d
    return-void
.end method

.method public setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .registers 7

    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_35

    if-eqz p2, :cond_19

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    if-nez v0, :cond_1e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "handler is null but the current thread is not a looper"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_19
    :try_start_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_1e
    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, v0, :cond_31

    :cond_2a
    new-instance v1, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    :cond_31
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;
    :try_end_33
    .catchall {:try_start_19 .. :try_end_33} :catchall_16

    :goto_33
    monitor-exit v2

    return-void

    :cond_35
    const/4 v1, 0x0

    :try_start_36
    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_16

    goto :goto_33
.end method
