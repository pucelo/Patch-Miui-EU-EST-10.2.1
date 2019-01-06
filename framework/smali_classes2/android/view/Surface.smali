.class public Landroid/view/Surface;
.super Ljava/lang/Object;
.source "Surface.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Surface$1;,
        Landroid/view/Surface$CompatibleCanvas;,
        Landroid/view/Surface$HwuiContext;,
        Landroid/view/Surface$OutOfResourcesException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATION_0:I = 0x0

.field public static final ROTATION_180:I = 0x2

.field public static final ROTATION_270:I = 0x3

.field public static final ROTATION_90:I = 0x1

.field public static final SCALING_MODE_FREEZE:I = 0x0

.field public static final SCALING_MODE_NO_SCALE_CROP:I = 0x3

.field public static final SCALING_MODE_SCALE_CROP:I = 0x2

.field public static final SCALING_MODE_SCALE_TO_WINDOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Surface"


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mCompatibleMatrix:Landroid/graphics/Matrix;

.field private mGenerationId:I

.field private mHwuiContext:Landroid/view/Surface$HwuiContext;

.field private mIsAutoRefreshEnabled:Z

.field private mIsSharedBufferModeEnabled:Z

.field private mIsSingleBuffered:Z

.field final mLock:Ljava/lang/Object;

.field private mLockedObject:J

.field private mName:Ljava/lang/String;

.field mNativeObject:J


# direct methods
.method static synthetic -get0(Landroid/view/Surface;)Landroid/graphics/Matrix;
    .registers 2

    iget-object v0, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -wrap0(JJ)J
    .registers 6

    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiCreate(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap1(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDestroy(J)V

    return-void
.end method

.method static synthetic -wrap2(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/view/Surface;->nHwuiDraw(J)V

    return-void
.end method

.method static synthetic -wrap3(JJ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/Surface;->nHwuiSetSurface(JJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/Surface$1;

    invoke-direct {v0}, Landroid/view/Surface$1;-><init>()V

    sput-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    invoke-direct {p0, p1, p2}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/Surface$CompatibleCanvas;

    invoke-direct {v0, p0, v1}, Landroid/view/Surface$CompatibleCanvas;-><init>(Landroid/view/Surface;Landroid/view/Surface$CompatibleCanvas;)V

    iput-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-nez p1, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isSingleBuffered()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2c
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/Surface;->nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_3b

    monitor-exit v1

    return-void

    :catchall_3b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkNotReleasedLocked()V
    .registers 5

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Surface has already been released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method private static native nHwuiCreate(JJ)J
.end method

.method private static native nHwuiDestroy(J)V
.end method

.method private static native nHwuiDraw(J)V
.end method

.method private static native nHwuiSetSurface(JJ)V
.end method

.method private static native nativeAdvancedSfComposition(J)V
.end method

.method private static native nativeAllocateBuffers(J)V
.end method

.method private static native nativeAttachAndQueueBuffer(JLandroid/graphics/GraphicBuffer;)I
.end method

.method private static native nativeCreateFromSurfaceControl(J)J
.end method

.method private static native nativeCreateFromSurfaceTexture(Landroid/graphics/SurfaceTexture;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeForceScopedDisconnect(J)I
.end method

.method private static native nativeGetFromSurfaceControl(J)J
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetNextFrameNumber(J)J
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeIsConsumerRunningBehind(J)Z
.end method

.method private static native nativeIsValid(J)Z
.end method

.method private static native nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private static native nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetAutoRefreshEnabled(JZ)I
.end method

.method private static native nativeSetScalingMode(JI)I
.end method

.method private static native nativeSetSharedBufferModeEnabled(JZ)I
.end method

.method private static native nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private static native nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static rotationToString(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_2e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const-string/jumbo v0, "ROTATION_0"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "ROTATION_90"

    return-object v0

    :pswitch_25
    const-string/jumbo v0, "ROTATION_180"

    return-object v0

    :pswitch_29
    const-string/jumbo v0, "ROTATION_270"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
    .end packed-switch
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private setNativeObjectLocked(J)V
    .registers 8

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_2b

    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2c

    cmp-long v0, p1, v2

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    iput-wide p1, p0, Landroid/view/Surface;->mNativeObject:J

    iget v0, p0, Landroid/view/Surface;->mGenerationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/Surface;->mGenerationId:I

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->updateSurface()V

    :cond_2b
    return-void

    :cond_2c
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1a

    cmp-long v0, p1, v2

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_1a
.end method

.method private unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 8

    const-wide/16 v4, 0x0

    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    if-eq p1, v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "canvas object must be the same instance that was previously returned by lockCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/view/Surface;->mNativeObject:J

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "Surface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WARNING: Surface\'s mNativeObject (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") != mLockedObject (0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Surface was not locked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    :try_start_5e
    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1, p1}, Landroid/view/Surface;->nativeUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
    :try_end_63
    .catchall {:try_start_5e .. :try_end_63} :catchall_6b

    iget-wide v0, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v0, v1}, Landroid/view/Surface;->nativeRelease(J)V

    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    return-void

    :catchall_6b
    move-exception v0

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    iput-wide v4, p0, Landroid/view/Surface;->mLockedObject:J

    throw v0
.end method


# virtual methods
.method public advancedSfComposition()V
    .registers 5

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeAdvancedSfComposition(J)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public allocateBuffers()V
    .registers 5

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeAllocateBuffers(J)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V
    .registers 8

    iget-object v2, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5, p1}, Landroid/view/Surface;->nativeAttachAndQueueBuffer(JLandroid/graphics/GraphicBuffer;)I

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to attach and queue buffer to Surface (bad object?)"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1a
    monitor-exit v2

    return-void
.end method

.method public copyFrom(Landroid/view/SurfaceControl;)V
    .registers 12

    const-wide/16 v8, 0x0

    if-nez p1, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "other must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v4, v2, v8

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1c
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetFromSurfaceControl(J)J

    move-result-wide v0

    iget-object v5, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_23
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2e

    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v6, v7}, Landroid/view/Surface;->nativeRelease(J)V

    :cond_2e
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_33

    monitor-exit v5

    return-void

    :catchall_33
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public createFrom(Landroid/view/SurfaceControl;)V
    .registers 12

    const-wide/16 v8, 0x0

    if-nez p1, :cond_d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "other must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    cmp-long v4, v2, v8

    if-nez v4, :cond_1c

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "null SurfaceControl native object. Are you using a released SurfaceControl?"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1c
    invoke-static {v2, v3}, Landroid/view/Surface;->nativeCreateFromSurfaceControl(J)J

    move-result-wide v0

    iget-object v5, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_23
    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v4, v6, v8

    if-eqz v4, :cond_2e

    iget-wide v6, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v6, v7}, Landroid/view/Surface;->nativeRelease(J)V

    :cond_2e
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_33

    monitor-exit v5

    return-void

    :catchall_33
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public destroy()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/Surface;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_9
    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_10

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_10
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method forceScopedDisconnect()V
    .registers 7

    iget-object v2, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeForceScopedDisconnect(J)I

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to disconnect Surface instance (bad object?)"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1a
    monitor-exit v2

    return-void
.end method

.method public getGenerationId()I
    .registers 3

    iget-object v0, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/view/Surface;->mGenerationId:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getNextFrameNumber()J
    .registers 5

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetNextFrameNumber(J)J
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isAutoRefreshEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    return v0
.end method

.method public isConsumerRunningBehind()Z
    .registers 5

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsConsumerRunningBehind(J)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isSharedBufferModeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    return v0
.end method

.method public isSingleBuffered()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    return v0
.end method

.method public isValid()Z
    .registers 7

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_e

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_e
    :try_start_e
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeIsValid(J)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_16

    move-result v0

    monitor-exit v1

    return v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Surface was already locked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1a
    :try_start_1a
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v0, p1}, Landroid/view/Surface;->nativeLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/Surface;->mLockedObject:J

    iget-object v0, p0, Landroid/view/Surface;->mCanvas:Landroid/graphics/Canvas;
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_17

    monitor-exit v1

    return-object v0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .registers 7

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-nez v0, :cond_11

    new-instance v0, Landroid/view/Surface$HwuiContext;

    invoke-direct {v0, p0}, Landroid/view/Surface$HwuiContext;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    :cond_11
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeGetWidth(J)I

    move-result v2

    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeGetHeight(J)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/Surface$HwuiContext;->lockCanvas(II)Landroid/graphics/Canvas;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_25

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    iput-boolean v0, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_27
    .catchall {:try_start_f .. :try_end_27} :catchall_29

    monitor-exit v1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .registers 7

    const-wide/16 v4, 0x0

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_15

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3}, Landroid/view/Surface;->nativeRelease(J)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Landroid/view/Surface;->setNativeObjectLocked(J)V

    :cond_15
    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0}, Landroid/view/Surface$HwuiContext;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAutoRefreshEnabled(Z)V
    .registers 6

    iget-boolean v1, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    if-eq v1, p1, :cond_17

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeSetAutoRefreshEnabled(JZ)I

    move-result v0

    if-eqz v0, :cond_15

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to set auto refresh on Surface (bad object?)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    iput-boolean p1, p0, Landroid/view/Surface;->mIsAutoRefreshEnabled:Z

    :cond_17
    return-void
.end method

.method setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V
    .registers 4

    if-eqz p1, :cond_10

    iget v0, p1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/view/Surface;->mCompatibleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_10
    return-void
.end method

.method setScalingMode(I)V
    .registers 8

    iget-object v2, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5, p1}, Landroid/view/Surface;->nativeSetScalingMode(JI)I

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid scaling mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2b
    monitor-exit v2

    return-void
.end method

.method public setSharedBufferModeEnabled(Z)V
    .registers 6

    iget-boolean v1, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    if-eq v1, p1, :cond_17

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeSetSharedBufferModeEnabled(JZ)I

    move-result v0

    if-eqz v0, :cond_15

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to set shared buffer mode on Surface (bad object?)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    iput-boolean p1, p0, Landroid/view/Surface;->mIsSharedBufferModeEnabled:Z

    :cond_17
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surface(name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")/@0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public transferFrom(Landroid/view/Surface;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v6, 0x0

    if-nez p1, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "other must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    if-eq p1, p0, :cond_2c

    iget-object v3, p1, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_12
    iget-wide v0, p1, Landroid/view/Surface;->mNativeObject:J

    const-wide/16 v4, 0x0

    invoke-direct {p1, v4, v5}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_2d

    monitor-exit v3

    iget-object v3, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1d
    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_28

    iget-wide v4, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v4, v5}, Landroid/view/Surface;->nativeRelease(J)V

    :cond_28
    invoke-direct {p0, v0, v1}, Landroid/view/Surface;->setNativeObjectLocked(J)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_30

    monitor-exit v3

    :cond_2c
    return-void

    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unlockCanvas(Landroid/graphics/Canvas;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/view/Surface;->checkNotReleasedLocked()V

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/view/Surface;->mHwuiContext:Landroid/view/Surface$HwuiContext;

    invoke-virtual {v0, p1}, Landroid/view/Surface$HwuiContext;->unlockAndPost(Landroid/graphics/Canvas;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    :goto_f
    monitor-exit v1

    return-void

    :cond_11
    :try_start_11
    invoke-direct {p0, p1}, Landroid/view/Surface;->unlockSwCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_f

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v1, p0, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_f
    iget-object v2, p0, Landroid/view/Surface;->mName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/Surface;->mIsSingleBuffered:Z

    if-eqz v2, :cond_19

    const/4 v0, 0x1

    :cond_19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v2, v3, p1}, Landroid/view/Surface;->nativeWriteToParcel(JLandroid/os/Parcel;)V
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_2a

    monitor-exit v1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    :cond_29
    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
