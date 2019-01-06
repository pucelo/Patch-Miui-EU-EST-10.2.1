.class public Landroid/graphics/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Shader$NoImagePreloadHolder;,
        Landroid/graphics/Shader$TileMode;
    }
.end annotation


# instance fields
.field private mCleaner:Ljava/lang/Runnable;

.field private mLocalMatrix:Landroid/graphics/Matrix;

.field private mNativeInstance:J


# direct methods
.method static synthetic -wrap0()J
    .registers 2

    invoke-static {}, Landroid/graphics/Shader;->nativeGetFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeGetFinalizer()J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .registers 2

    new-instance v0, Landroid/graphics/Shader;

    invoke-direct {v0}, Landroid/graphics/Shader;-><init>()V

    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->copyLocalMatrix(Landroid/graphics/Shader;)V

    return-object v0
.end method

.method protected copyLocalMatrix(Landroid/graphics/Shader;)V
    .registers 4

    iget-object v0, p1, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method createNativeInstance(J)J
    .registers 5

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final discardNativeInstance()V
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    iput-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    :cond_12
    return-void
.end method

.method public getLocalMatrix(Landroid/graphics/Matrix;)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public final getNativeInstance()J
    .registers 5

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Shader;->verifyNativeInstance()V

    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_29

    move-wide v0, v2

    :goto_10
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Shader;->createNativeInstance(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    sget-object v0, Landroid/graphics/Shader$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/graphics/Shader;->mNativeInstance:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Shader;->mCleaner:Ljava/lang/Runnable;

    :cond_26
    iget-wide v0, p0, Landroid/graphics/Shader;->mNativeInstance:J

    return-wide v0

    :cond_29
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    iget-wide v0, v0, Landroid/graphics/Matrix;->native_instance:J

    goto :goto_10
.end method

.method public setLocalMatrix(Landroid/graphics/Matrix;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_9
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_12

    iput-object v1, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_22

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_12

    :cond_22
    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/graphics/Shader;->mLocalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Landroid/graphics/Shader;->discardNativeInstance()V

    goto :goto_12
.end method

.method protected verifyNativeInstance()V
    .registers 1

    return-void
.end method
