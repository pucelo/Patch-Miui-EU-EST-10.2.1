.class public final Landroid/opengl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEGLErrorString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_58

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "EGL_SUCCESS"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "EGL_NOT_INITIALIZED"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "EGL_BAD_ACCESS"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "EGL_BAD_ALLOC"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "EGL_BAD_ATTRIBUTE"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "EGL_BAD_CONFIG"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "EGL_BAD_CONTEXT"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "EGL_BAD_CURRENT_SURFACE"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "EGL_BAD_DISPLAY"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "EGL_BAD_MATCH"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "EGL_BAD_NATIVE_PIXMAP"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "EGL_BAD_NATIVE_WINDOW"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "EGL_BAD_PARAMETER"

    return-object v0

    :pswitch_50
    const-string/jumbo v0, "EGL_BAD_SURFACE"

    return-object v0

    :pswitch_54
    const-string/jumbo v0, "EGL_CONTEXT_LOST"

    return-object v0

    :pswitch_data_58
    .packed-switch 0x3000
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_48
        :pswitch_4c
        :pswitch_50
        :pswitch_54
    .end packed-switch
.end method

.method public static getInternalFormat(Landroid/graphics/Bitmap;)I
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "getInternalFormat can\'t be used with a null Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bitmap is recycled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v0

    if-gez v0, :cond_29

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown internalformat"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    return v0
.end method

.method public static getType(Landroid/graphics/Bitmap;)I
    .registers 4

    if-nez p0, :cond_b

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "getType can\'t be used with a null Bitmap"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bitmap is recycled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    invoke-static {p0}, Landroid/opengl/GLUtils;->native_getType(Landroid/graphics/Bitmap;)I

    move-result v0

    if-gez v0, :cond_29

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unknown type"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    return v0
.end method

.method private static native native_getInternalFormat(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_getType(Landroid/graphics/Bitmap;)I
.end method

.method private static native native_texImage2D(IIILandroid/graphics/Bitmap;II)I
.end method

.method private static native native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;I)V
    .registers 11

    if-nez p3, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v4, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-void
.end method

.method public static texImage2D(IIILandroid/graphics/Bitmap;II)V
    .registers 8

    if-nez p3, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    return-void
.end method

.method public static texImage2D(IILandroid/graphics/Bitmap;I)V
    .registers 10

    const/4 v2, -0x1

    if-nez p2, :cond_c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    move v0, p0

    move v1, p1

    move-object v3, p2

    move v4, v2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->native_texImage2D(IIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;)V
    .registers 12

    if-nez p4, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static {p4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    const/4 v5, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    return-void
.end method

.method public static texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    .registers 9

    if-nez p4, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "texSubImage2D can\'t be used with a null Bitmap"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "bitmap is recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLUtils;->native_texSubImage2D(IIIILandroid/graphics/Bitmap;II)I

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid Bitmap format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    return-void
.end method
