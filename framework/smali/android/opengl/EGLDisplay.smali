.class public Landroid/opengl/EGLDisplay;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLDisplay.java"


# direct methods
.method private constructor <init>(J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/opengl/EGLObjectHandle;-><init>(J)V

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
    instance-of v3, p1, Landroid/opengl/EGLDisplay;

    if-nez v3, :cond_a

    return v2

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/opengl/EGLDisplay;

    invoke-virtual {p0}, Landroid/opengl/EGLDisplay;->getNativeHandle()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/opengl/EGLDisplay;->getNativeHandle()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_1a

    :goto_19
    return v1

    :cond_1a
    move v1, v2

    goto :goto_19
.end method
