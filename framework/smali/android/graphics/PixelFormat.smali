.class public Landroid/graphics/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# static fields
.field public static final A_8:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JPEG:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LA_88:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final L_8:I = 0x9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPAQUE:I = -0x1

.field public static final RGBA_1010102:I = 0x2b

.field public static final RGBA_4444:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_5551:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGBA_8888:I = 0x1

.field public static final RGBA_F16:I = 0x16

.field public static final RGBX_8888:I = 0x2

.field public static final RGB_332:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RGB_565:I = 0x4

.field public static final RGB_888:I = 0x3

.field public static final TRANSLUCENT:I = -0x3

.field public static final TRANSPARENT:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field public static final YCbCr_420_SP:I = 0x11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_I:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final YCbCr_422_SP:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public bitsPerPixel:I

.field public bytesPerPixel:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHasAlpha(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        -0x3 -> :sswitch_5
        -0x2 -> :sswitch_5
        0x1 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0xa -> :sswitch_5
        0x16 -> :sswitch_5
        0x2b -> :sswitch_5
    .end sparse-switch
.end method

.method public static getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V
    .registers 5

    const/16 v0, 0x10

    const/16 v2, 0x8

    const/4 v1, 0x1

    sparse-switch p0, :sswitch_data_50

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown pixel format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_22
    const/16 v0, 0x20

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 v0, 0x4

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    :goto_29
    return-void

    :sswitch_2a
    const/16 v0, 0x18

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 v0, 0x3

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_29

    :sswitch_32
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    const/4 v0, 0x2

    iput v0, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_29

    :sswitch_38
    iput v2, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_29

    :sswitch_3d
    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_29

    :sswitch_42
    const/16 v0, 0xc

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v1, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_29

    :sswitch_49
    const/16 v0, 0x40

    iput v0, p1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    iput v2, p1, Landroid/graphics/PixelFormat;->bytesPerPixel:I

    goto :goto_29

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_22
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_32
        0x6 -> :sswitch_32
        0x7 -> :sswitch_32
        0x8 -> :sswitch_38
        0x9 -> :sswitch_38
        0xa -> :sswitch_32
        0xb -> :sswitch_38
        0x10 -> :sswitch_3d
        0x11 -> :sswitch_42
        0x14 -> :sswitch_3d
        0x16 -> :sswitch_49
        0x2b -> :sswitch_22
    .end sparse-switch
.end method

.method public static isPublicFormat(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x16 -> :sswitch_5
        0x2b -> :sswitch_5
    .end sparse-switch
.end method
