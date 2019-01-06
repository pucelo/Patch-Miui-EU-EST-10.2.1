.class public abstract Lcom/android/keyguard/faceunlock/AbstractCameraUtil;
.super Ljava/lang/Object;
.source "AbstractCameraUtil.java"


# instance fields
.field public angle:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x280

    iput v0, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    return-void
.end method


# virtual methods
.method public closeCamera()V
    .locals 0

    return-void
.end method

.method public closeCameraImmediately()V
    .locals 0

    return-void
.end method

.method public getBitMap([BLandroid/graphics/Rect;IZ)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v7, 0x1

    const/4 v10, 0x0

    new-instance v0, Landroid/graphics/YuvImage;

    iget v3, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    invoke-direct {v2, v10, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v8}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v2, v9

    invoke-static {v9, v10, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    int-to-float v2, p3

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    if-nez p4, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_0
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public openCamera(I)V
    .locals 0

    return-void
.end method

.method public setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V
    .locals 0

    return-void
.end method

.method public setMeteringAreas([I)V
    .locals 0

    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    return-void
.end method
