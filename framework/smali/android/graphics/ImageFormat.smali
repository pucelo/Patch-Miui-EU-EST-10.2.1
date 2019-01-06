.class public Landroid/graphics/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# static fields
.field public static final DEPTH16:I = 0x44363159

.field public static final DEPTH_POINT_CLOUD:I = 0x101

.field public static final FLEX_RGBA_8888:I = 0x2a

.field public static final FLEX_RGB_888:I = 0x29

.field public static final JPEG:I = 0x100

.field public static final NV16:I = 0x10

.field public static final NV21:I = 0x11

.field public static final PRIVATE:I = 0x22

.field public static final RAW10:I = 0x25

.field public static final RAW12:I = 0x26

.field public static final RAW_DEPTH:I = 0x1002

.field public static final RAW_PRIVATE:I = 0x24

.field public static final RAW_SENSOR:I = 0x20

.field public static final RGB_565:I = 0x4

.field public static final UNKNOWN:I = 0x0

.field public static final Y16:I = 0x20363159

.field public static final Y8:I = 0x20203859

.field public static final YUV_420_888:I = 0x23

.field public static final YUV_422_888:I = 0x27

.field public static final YUV_444_888:I = 0x28

.field public static final YUY2:I = 0x14

.field public static final YV12:I = 0x32315659


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitsPerPixel(I)I
    .registers 4

    const/16 v2, 0x18

    const/16 v1, 0xc

    const/16 v0, 0x10

    sparse-switch p0, :sswitch_data_20

    const/4 v0, -0x1

    return v0

    :sswitch_b
    return v0

    :sswitch_c
    return v0

    :sswitch_d
    return v0

    :sswitch_e
    return v1

    :sswitch_f
    const/16 v0, 0x8

    return v0

    :sswitch_12
    return v0

    :sswitch_13
    return v1

    :sswitch_14
    return v1

    :sswitch_15
    return v0

    :sswitch_16
    return v2

    :sswitch_17
    return v2

    :sswitch_18
    const/16 v0, 0x20

    return v0

    :sswitch_1b
    return v0

    :sswitch_1c
    const/16 v0, 0xa

    return v0

    :sswitch_1f
    return v1

    :sswitch_data_20
    .sparse-switch
        0x4 -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_13
        0x14 -> :sswitch_d
        0x20 -> :sswitch_1b
        0x23 -> :sswitch_14
        0x25 -> :sswitch_1c
        0x26 -> :sswitch_1f
        0x27 -> :sswitch_15
        0x28 -> :sswitch_16
        0x29 -> :sswitch_17
        0x2a -> :sswitch_18
        0x1002 -> :sswitch_1b
        0x20203859 -> :sswitch_f
        0x20363159 -> :sswitch_12
        0x32315659 -> :sswitch_e
        0x44363159 -> :sswitch_12
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
        0x4 -> :sswitch_5
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x14 -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_5
        0x23 -> :sswitch_5
        0x24 -> :sswitch_5
        0x25 -> :sswitch_5
        0x26 -> :sswitch_5
        0x27 -> :sswitch_5
        0x28 -> :sswitch_5
        0x29 -> :sswitch_5
        0x2a -> :sswitch_5
        0x100 -> :sswitch_5
        0x101 -> :sswitch_5
        0x1002 -> :sswitch_5
        0x32315659 -> :sswitch_5
        0x44363159 -> :sswitch_5
    .end sparse-switch
.end method
