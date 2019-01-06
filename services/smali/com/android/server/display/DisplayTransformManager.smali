.class public Lcom/android/server/display/DisplayTransformManager;
.super Ljava/lang/Object;
.source "DisplayTransformManager.java"


# static fields
.field static final COLOR_SATURATION_BOOSTED:F = 1.1f

.field static final COLOR_SATURATION_NATURAL:F = 1.0f

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_NIGHT_DISPLAY:I = 0x64

.field static final PERSISTENT_PROPERTY_NATIVE_MODE:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field static final PERSISTENT_PROPERTY_SATURATION:Ljava/lang/String; = "persist.sys.sf.color_saturation"

.field private static final SURFACE_FLINGER_TRANSACTION_COLOR_MATRIX:I = 0x3f7

.field private static final SURFACE_FLINGER_TRANSACTION_DALTONIZER:I = 0x3f6

.field private static final SURFACE_FLINGER_TRANSACTION_NATIVE_MODE:I = 0x3ff

.field private static final SURFACE_FLINGER_TRANSACTION_SATURATION:I = 0x3fe

.field private static final TAG:Ljava/lang/String; = "DisplayTransformManager"


# instance fields
.field private final mColorMatrix:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[F>;"
        }
    .end annotation
.end field

.field private mDaltonizerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDaltonizerModeLock"
    .end annotation
.end field

.field private final mDaltonizerModeLock:Ljava/lang/Object;

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private final mTempColorMatrix:[[F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    const/16 v2, 0x10

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    return-void
.end method

.method private static applyColorMatrix([F)V
    .registers 8

    const/4 v5, 0x0

    const-string/jumbo v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p0, :cond_27

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x0

    :goto_1b
    const/16 v4, 0x10

    if-ge v3, v4, :cond_2a

    aget v4, p0, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_27
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2a
    const/16 v4, 0x3f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_2e
    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_35
    .catchall {:try_start_2e .. :try_end_31} :catchall_43

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_34
    :goto_34
    return-void

    :catch_35
    move-exception v1

    :try_start_36
    const-string/jumbo v4, "DisplayTransformManager"

    const-string/jumbo v5, "Failed to set color transform"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_43

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    :catchall_43
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method private static applyDaltonizerMode(I)V
    .registers 7

    const-string/jumbo v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1a
    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_21
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v1

    :try_start_22
    const-string/jumbo v3, "DisplayTransformManager"

    const-string/jumbo v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_2f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_20

    :catchall_2f
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private applySaturation(F)V
    .registers 8

    const-string/jumbo v2, "persist.sys.sf.color_saturation"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_28} :catch_2c
    .catchall {:try_start_1d .. :try_end_28} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2b
    :goto_2b
    return-void

    :catch_2c
    move-exception v1

    :try_start_2d
    const-string/jumbo v2, "DisplayTransformManager"

    const-string/jumbo v3, "Failed to set saturation"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_3a

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    :catchall_3a
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method private computeColorMatrixLocked()[F
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mColorMatrix"
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_b

    const/4 v0, 0x0

    return-object v0

    :cond_b
    iget-object v8, p0, Lcom/android/server/display/DisplayTransformManager;->mTempColorMatrix:[[F

    aget-object v0, v8, v1

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v6, :cond_2f

    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    add-int/lit8 v0, v7, 0x1

    rem-int/lit8 v0, v0, 0x2

    aget-object v0, v8, v0

    rem-int/lit8 v2, v7, 0x2

    aget-object v2, v8, v2

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_2f
    rem-int/lit8 v0, v6, 0x2

    aget-object v0, v8, v0

    return-object v0
.end method

.method public static isNativeModeEnabled()Z
    .registers 2

    const-string/jumbo v0, "persist.sys.sf.native_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private setNativeMode(Z)V
    .registers 8

    const/4 v3, 0x0

    const-string/jumbo v4, "persist.sys.sf.native_mode"

    if-eqz p1, :cond_31

    const-string/jumbo v2, "1"

    :goto_9
    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_30

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string/jumbo v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_35

    const/4 v2, 0x1

    :goto_1f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->getSurfaceFlinger()Landroid/os/IBinder;

    move-result-object v2

    const/16 v3, 0x3ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2d} :catch_37
    .catchall {:try_start_22 .. :try_end_2d} :catchall_45

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_30
    :goto_30
    return-void

    :cond_31
    const-string/jumbo v2, "0"

    goto :goto_9

    :cond_35
    move v2, v3

    goto :goto_1f

    :catch_37
    move-exception v1

    :try_start_38
    const-string/jumbo v2, "DisplayTransformManager"

    const-string/jumbo v3, "Failed to set native mode"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_45

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_30

    :catchall_45
    move-exception v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method


# virtual methods
.method public getColorMatrix(I)[F
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_16

    if-nez v0, :cond_10

    :goto_e
    monitor-exit v2

    return-object v1

    :cond_10
    :try_start_10
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_16

    move-result-object v1

    goto :goto_e

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDaltonizerMode()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSurfaceFlinger()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_d

    const-string/jumbo v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mSurfaceFlinger:Landroid/os/IBinder;

    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayTransformManager;->mSurfaceFlinger:Landroid/os/IBinder;

    return-object v0
.end method

.method public setColorMatrix(I[F)V
    .registers 8

    if-eqz p2, :cond_22

    array-length v1, p2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_22

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected length: 16 (4x4 matrix), actual length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    iget-object v2, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_25
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_41

    if-nez p2, :cond_43

    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_3a
    invoke-direct {p0}, Lcom/android/server/display/DisplayTransformManager;->computeColorMatrixLocked()[F

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/DisplayTransformManager;->applyColorMatrix([F)V
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_50

    :cond_41
    monitor-exit v2

    return-void

    :cond_43
    if-nez v0, :cond_53

    :try_start_45
    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mColorMatrix:Landroid/util/SparseArray;

    array-length v3, p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_50

    goto :goto_3a

    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_53
    :try_start_53
    array-length v1, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy([FI[FII)V
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_50

    goto :goto_3a
.end method

.method public setColorMode(I)Z
    .registers 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_10

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTransformManager;->setNativeMode(Z)V

    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/display/DisplayTransformManager;->updateConfiguration()V

    return v2

    :cond_10
    if-ne p1, v2, :cond_1c

    const v0, 0x3f8ccccd    # 1.1f

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayTransformManager;->setNativeMode(Z)V

    goto :goto_c

    :cond_1c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    invoke-direct {p0, v3}, Lcom/android/server/display/DisplayTransformManager;->applySaturation(F)V

    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayTransformManager;->setNativeMode(Z)V

    goto :goto_c
.end method

.method public setDaltonizerMode(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerModeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    if-eq v0, p1, :cond_c

    iput p1, p0, Lcom/android/server/display/DisplayTransformManager;->mDaltonizerMode:I

    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->applyDaltonizerMode(I)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateConfiguration()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    const-string/jumbo v1, "DisplayTransformManager"

    const-string/jumbo v2, "Could not update configuration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method
