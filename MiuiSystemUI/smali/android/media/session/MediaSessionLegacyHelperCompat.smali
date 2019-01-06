.class public Landroid/media/session/MediaSessionLegacyHelperCompat;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelperCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendVolumeKeyEvent(Landroid/content/Context;Landroid/view/KeyEvent;IZ)V
    .locals 1

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return-void
.end method
