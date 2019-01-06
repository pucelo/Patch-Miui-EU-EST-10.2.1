.class public Landroid/media/MediaCasException;
.super Ljava/lang/Exception;
.source "MediaCasException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCasException$DeniedByServerException;,
        Landroid/media/MediaCasException$NotProvisionedException;,
        Landroid/media/MediaCasException$ResourceBusyException;,
        Landroid/media/MediaCasException$UnsupportedCasException;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/media/MediaCasException;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaCasException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static throwExceptionIfNeeded(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_d

    new-instance v0, Landroid/media/MediaCasException$NotProvisionedException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$NotProvisionedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_17

    new-instance v0, Landroid/media/MediaCasException$ResourceBusyException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$ResourceBusyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/16 v0, 0xb

    if-ne p0, v0, :cond_21

    new-instance v0, Landroid/media/MediaCasException$DeniedByServerException;

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$DeniedByServerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-static {p0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    return-void
.end method
