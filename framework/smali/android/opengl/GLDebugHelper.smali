.class public Landroid/opengl/GLDebugHelper;
.super Ljava/lang/Object;
.source "GLDebugHelper.java"


# static fields
.field public static final CONFIG_CHECK_GL_ERROR:I = 0x1

.field public static final CONFIG_CHECK_THREAD:I = 0x2

.field public static final CONFIG_LOG_ARGUMENT_NAMES:I = 0x4

.field public static final ERROR_WRONG_THREAD:I = 0x7000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;
    .registers 4

    if-eqz p2, :cond_8

    new-instance v0, Landroid/opengl/EGLLogWrapper;

    invoke-direct {v0, p0, p1, p2}, Landroid/opengl/EGLLogWrapper;-><init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V

    move-object p0, v0

    :cond_8
    return-object p0
.end method

.method public static wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;
    .registers 6

    if-eqz p1, :cond_18

    new-instance v0, Landroid/opengl/GLErrorWrapper;

    invoke-direct {v0, p0, p1}, Landroid/opengl/GLErrorWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;I)V

    :goto_7
    if-eqz p2, :cond_16

    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_14

    const/4 v1, 0x1

    :goto_e
    new-instance p0, Landroid/opengl/GLLogWrapper;

    invoke-direct {p0, v0, p2, v1}, Landroid/opengl/GLLogWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V

    :goto_13
    return-object p0

    :cond_14
    const/4 v1, 0x0

    goto :goto_e

    :cond_16
    move-object p0, v0

    goto :goto_13

    :cond_18
    move-object v0, p0

    goto :goto_7
.end method
