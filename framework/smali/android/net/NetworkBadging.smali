.class public Landroid/net/NetworkBadging;
.super Ljava/lang/Object;
.source "NetworkBadging.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final BADGING_4K:I = 0x1e

.field public static final BADGING_HD:I = 0x14

.field public static final BADGING_NONE:I = 0x0

.field public static final BADGING_SD:I = 0xa


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBadgedWifiSignalResource(I)I
    .registers 4

    packed-switch p0, :pswitch_data_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const v0, 0x10804d4

    return v0

    :pswitch_21
    const v0, 0x10804d5

    return v0

    :pswitch_25
    const v0, 0x10804d6

    return v0

    :pswitch_29
    const v0, 0x10804d7

    return v0

    :pswitch_2d
    const v0, 0x10804d8

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method public static getWifiIcon(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Landroid/net/NetworkBadging;->getWifiSignalResource(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getWifiSignalResource(I)I
    .registers 4

    packed-switch p0, :pswitch_data_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid signal level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const v0, 0x10804f9

    return v0

    :pswitch_21
    const v0, 0x10804fa

    return v0

    :pswitch_25
    const v0, 0x10804fb

    return v0

    :pswitch_29
    const v0, 0x10804fc

    return v0

    :pswitch_2d
    const v0, 0x10804fd

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method
