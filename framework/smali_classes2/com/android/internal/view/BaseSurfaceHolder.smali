.class public abstract Lcom/android/internal/view/BaseSurfaceHolder;
.super Ljava/lang/Object;
.source "BaseSurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseSurfaceHolder"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

.field mHaveGottenCallbacks:Z

.field mLastLockTime:J

.field protected mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedType:I

.field mRequestedWidth:I

.field public mSurface:Landroid/view/Surface;

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field public final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTmpDirty:Landroid/graphics/Rect;

.field mType:I


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    iput v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;
    .registers 16

    const/4 v12, 0x0

    iget v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mType:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_f

    new-instance v3, Landroid/view/SurfaceHolder$BadSurfaceTypeException;

    const-string/jumbo v8, "Surface type is SURFACE_TYPE_PUSH_BUFFERS"

    invoke-direct {v3, v8}, Landroid/view/SurfaceHolder$BadSurfaceTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_f
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onAllowLockCanvas()Z

    move-result v3

    if-eqz v3, :cond_39

    if-nez p1, :cond_31

    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    if-nez v3, :cond_28

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    :cond_28
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mTmpDirty:Landroid/graphics/Rect;

    :cond_31
    if-eqz p2, :cond_42

    :try_start_33
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_49

    move-result-object v0

    :cond_39
    :goto_39
    if-eqz v0, :cond_54

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    return-object v0

    :cond_42
    :try_start_42
    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_47} :catch_49

    move-result-object v0

    goto :goto_39

    :catch_49
    move-exception v1

    const-string/jumbo v3, "BaseSurfaceHolder"

    const-string/jumbo v8, "Exception locking surface"

    invoke-static {v3, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    :cond_54
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    const-wide/16 v10, 0x64

    add-long v4, v8, v10

    cmp-long v3, v4, v6

    if-lez v3, :cond_6b

    sub-long v8, v4, v6

    :try_start_64
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_67
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_67} :catch_73

    :goto_67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    :cond_6b
    iput-wide v6, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mLastLockTime:J

    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v12

    :catch_73
    move-exception v2

    goto :goto_67
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 5

    iget-boolean v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    return-object v1

    :cond_7
    iget-object v2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d

    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    array-length v1, v1

    if-eq v1, v0, :cond_1f

    :cond_1b
    new-array v1, v0, [Landroid/view/SurfaceHolder$Callback;

    iput-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    :cond_1f
    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_31

    monitor-exit v2

    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;

    return-object v1

    :cond_2d
    const/4 v1, 0x0

    :try_start_2e
    iput-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mGottenCallbacks:[Landroid/view/SurfaceHolder$Callback;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_31

    goto :goto_26

    :catchall_31
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getRequestedFormat()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    return v0
.end method

.method public getRequestedHeight()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    return v0
.end method

.method public getRequestedType()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    return v0
.end method

.method public getRequestedWidth()I
    .registers 2

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    return v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAllowLockCanvas()Z
.end method

.method public abstract onRelayoutContainer()V
.end method

.method public abstract onUpdateSurface()V
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4

    iget-object v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFixedSize(II)V
    .registers 4

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, p2, :cond_f

    :cond_8
    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    iput p2, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    :cond_f
    return-void
.end method

.method public setFormat(I)V
    .registers 3

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedFormat:I

    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    :cond_9
    return-void
.end method

.method public setSizeFromLayout()V
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    if-eq v0, v1, :cond_10

    :cond_9
    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedHeight:I

    iput v1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedWidth:I

    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onRelayoutContainer()V

    :cond_10
    return-void
.end method

.method public setSurfaceFrameSize(II)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceFrame:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public setType(I)V
    .registers 3

    packed-switch p1, :pswitch_data_14

    :goto_3
    packed-switch p1, :pswitch_data_1c

    :cond_6
    :goto_6
    :pswitch_6
    return-void

    :pswitch_7
    const/4 p1, 0x0

    goto :goto_3

    :pswitch_9
    iget v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    if-eq v0, p1, :cond_6

    iput p1, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mRequestedType:I

    invoke-virtual {p0}, Lcom/android/internal/view/BaseSurfaceHolder;->onUpdateSurface()V

    goto :goto_6

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
        :pswitch_6
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method public ungetCallbacks()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mHaveGottenCallbacks:Z

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method
