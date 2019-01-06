.class public final Landroid/hardware/HardwareBuffer;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/HardwareBuffer$1;
    }
.end annotation


# static fields
.field public static final BLOB:I = 0x21

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/HardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_HARDWARE_BUFFER_SIZE:J = 0xe8L

.field public static final RGBA_1010102:I = 0x2b

.field public static final RGBA_8888:I = 0x1

.field public static final RGBA_FP16:I = 0x16

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final USAGE_CPU_READ_OFTEN:J = 0x3L

.field public static final USAGE_CPU_READ_RARELY:J = 0x2L

.field public static final USAGE_CPU_WRITE_OFTEN:J = 0x30L

.field public static final USAGE_CPU_WRITE_RARELY:J = 0x20L

.field public static final USAGE_GPU_COLOR_OUTPUT:J = 0x200L

.field public static final USAGE_GPU_DATA_BUFFER:J = 0x1000000L

.field public static final USAGE_GPU_SAMPLED_IMAGE:J = 0x100L

.field public static final USAGE_PROTECTED_CONTENT:J = 0x4000L

.field public static final USAGE_SENSOR_DIRECT_DATA:J = 0x800000L

.field public static final USAGE_VIDEO_ENCODE:J = 0x10000L


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mNativeObject:J


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)J
    .registers 3

    invoke-static {p0}, Landroid/hardware/HardwareBuffer;->nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/HardwareBuffer$1;

    invoke-direct {v0}, Landroid/hardware/HardwareBuffer$1;-><init>()V

    sput-object v0, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    iput-wide p1, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    const-class v2, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v0, Llibcore/util/NativeAllocationRegistry;

    invoke-static {}, Landroid/hardware/HardwareBuffer;->nGetNativeFinalizer()J

    move-result-wide v2

    const-wide/16 v4, 0xe8

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    iget-wide v2, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(JLandroid/hardware/HardwareBuffer;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-void
.end method

.method public static create(IIIIJ)Landroid/hardware/HardwareBuffer;
    .registers 12

    invoke-static {p2}, Landroid/hardware/HardwareBuffer;->isSupportedFormat(I)Z

    move-result v2

    if-nez v2, :cond_20

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid pixel format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_20
    if-gtz p0, :cond_3c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3c
    if-gtz p1, :cond_58

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_58
    if-gtz p3, :cond_74

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid layer count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_74
    const/16 v2, 0x21

    if-ne p2, v2, :cond_84

    const/4 v2, 0x1

    if-eq p1, v2, :cond_84

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Height must be 1 when using the BLOB format"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_84
    invoke-static/range {p0 .. p5}, Landroid/hardware/HardwareBuffer;->nCreateHardwareBuffer(IIIIJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_97

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to create a HardwareBuffer, either the dimensions passed were too large, too many image layers were requested, or an invalid set of usage flags was passed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_97
    new-instance v2, Landroid/hardware/HardwareBuffer;

    invoke-direct {v2, v0, v1}, Landroid/hardware/HardwareBuffer;-><init>(J)V

    return-object v2
.end method

.method private static isSupportedFormat(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x16 -> :sswitch_5
        0x21 -> :sswitch_5
        0x2b -> :sswitch_5
    .end sparse-switch
.end method

.method private static native nCreateHardwareBuffer(IIIIJ)J
.end method

.method private static native nGetFormat(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetHeight(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetLayers(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetUsage(J)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nGetWidth(J)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nReadHardwareBufferFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V
.end method


# virtual methods
.method public close()V
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/HardwareBuffer;->mCleaner:Ljava/lang/Runnable;

    :cond_17
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

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
    iget-object v0, p0, Landroid/hardware/HardwareBuffer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_c

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFormat()I
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This HardwareBuffer has been closed and its format cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetFormat(J)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This HardwareBuffer has been closed and its height cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetHeight(J)I

    move-result v0

    return v0
.end method

.method public getLayers()I
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This HardwareBuffer has been closed and its layer count cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetLayers(J)I

    move-result v0

    return v0
.end method

.method public getUsage()J
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This HardwareBuffer has been closed and its usage cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetUsage(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This HardwareBuffer has been closed and its width cannot be obtained."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/hardware/HardwareBuffer;->nGetWidth(J)I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 5

    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDestroyed()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This HardwareBuffer has been closed and cannot be written to a parcel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-wide v0, p0, Landroid/hardware/HardwareBuffer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/hardware/HardwareBuffer;->nWriteHardwareBufferToParcel(JLandroid/os/Parcel;)V

    return-void
.end method
