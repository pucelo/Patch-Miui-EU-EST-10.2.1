.class public Lcom/google/android/gles_jni/EGLSurfaceImpl;
.super Ljavax/microedition/khronos/egl/EGLSurface;
.source "EGLSurfaceImpl.java"


# instance fields
.field mEGLSurface:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-direct {p0}, Ljavax/microedition/khronos/egl/EGLSurface;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/google/android/gles_jni/EGLSurfaceImpl;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;

    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    iget-wide v6, v0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    move v1, v2

    goto :goto_1d
.end method

.method public hashCode()I
    .registers 7

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    iget-wide v4, p0, Lcom/google/android/gles_jni/EGLSurfaceImpl;->mEGLSurface:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    return v0
.end method
