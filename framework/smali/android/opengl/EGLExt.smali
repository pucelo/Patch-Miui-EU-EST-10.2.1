.class public Landroid/opengl/EGLExt;
.super Ljava/lang/Object;
.source "EGLExt.java"


# static fields
.field public static final EGL_CONTEXT_FLAGS_KHR:I = 0x30fc

.field public static final EGL_CONTEXT_MAJOR_VERSION_KHR:I = 0x3098

.field public static final EGL_CONTEXT_MINOR_VERSION_KHR:I = 0x30fb

.field public static final EGL_OPENGL_ES3_BIT_KHR:I = 0x40

.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Landroid/opengl/EGLExt;->_nativeClassInit()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _nativeClassInit()V
.end method

.method public static native eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z
.end method