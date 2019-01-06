.class public Landroid/media/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "MediaPlayerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static seekTo(Landroid/media/MediaPlayer;II)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1, p2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    return-void
.end method
