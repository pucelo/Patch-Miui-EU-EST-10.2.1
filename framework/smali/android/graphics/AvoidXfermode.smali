.class public Landroid/graphics/AvoidXfermode;
.super Landroid/graphics/Xfermode;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/AvoidXfermode$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(IILandroid/graphics/AvoidXfermode$Mode;)V
    .registers 6

    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    if-ltz p2, :cond_9

    const/16 v0, 0xff

    if-le p2, v0, :cond_12

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tolerance must be 0..255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-void
.end method
