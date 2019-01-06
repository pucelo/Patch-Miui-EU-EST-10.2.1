.class public Landroid/media/AudioSystemCompat;
.super Ljava/lang/Object;
.source "AudioSystemCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSingleVolume(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
