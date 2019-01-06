.class Landroid/util/Base64$Decoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Decoder"
.end annotation


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x100

    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_216

    sput-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    iput-object p2, p0, Landroid/util/Base64$Decoder;->output:[B

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_13

    sget-object v0, Landroid/util/Base64$Decoder;->DECODE:[I

    :goto_c
    iput-object v0, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    iput v1, p0, Landroid/util/Base64$Decoder;->state:I

    iput v1, p0, Landroid/util/Base64$Decoder;->value:I

    return-void

    :cond_13
    sget-object v0, Landroid/util/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_c
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 16

    iget v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_7

    const/4 v9, 0x0

    return v9

    :cond_7
    move v5, p2

    add-int/2addr p3, p2

    iget v7, p0, Landroid/util/Base64$Decoder;->state:I

    iget v8, p0, Landroid/util/Base64$Decoder;->value:I

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/util/Base64$Decoder;->output:[B

    iget-object v0, p0, Landroid/util/Base64$Decoder;->alphabet:[I

    :goto_12
    if-ge v5, p3, :cond_12d

    if-nez v7, :cond_67

    :goto_16
    add-int/lit8 v9, v5, 0x4

    if-gt v9, p3, :cond_5a

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v9, v0, v9

    shl-int/lit8 v9, v9, 0x12

    add-int/lit8 v10, v5, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x2

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    add-int/lit8 v10, v5, 0x3

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget v10, v0, v10

    or-int v8, v9, v10

    if-ltz v8, :cond_5a

    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v5, v5, 0x4

    goto :goto_16

    :cond_5a
    if-lt v5, p3, :cond_67

    move v3, v2

    :goto_5d
    if-nez p4, :cond_fd

    iput v7, p0, Landroid/util/Base64$Decoder;->state:I

    iput v8, p0, Landroid/util/Base64$Decoder;->value:I

    iput v3, p0, Landroid/util/Base64$Decoder;->op:I

    const/4 v9, 0x1

    return v9

    :cond_67
    add-int/lit8 v6, v5, 0x1

    aget-byte v9, p1, v5

    and-int/lit16 v9, v9, 0xff

    aget v1, v0, v9

    packed-switch v7, :pswitch_data_130

    :cond_72
    :goto_72
    move v5, v6

    goto :goto_12

    :pswitch_74
    if-ltz v1, :cond_7a

    move v8, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    :cond_7a
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :pswitch_82
    if-ltz v1, :cond_8b

    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    :cond_8b
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :pswitch_93
    if-ltz v1, :cond_9c

    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    :cond_9c
    const/4 v9, -0x2

    if-ne v1, v9, :cond_a9

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    const/4 v7, 0x4

    move v2, v3

    goto :goto_72

    :cond_a9
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :pswitch_b1
    if-ltz v1, :cond_cc

    shl-int/lit8 v9, v8, 0x6

    or-int v8, v9, v1

    add-int/lit8 v9, v2, 0x2

    int-to-byte v10, v8

    aput-byte v10, v4, v9

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    shr-int/lit8 v9, v8, 0x10

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    add-int/lit8 v2, v2, 0x3

    const/4 v7, 0x0

    goto :goto_72

    :cond_cc
    const/4 v9, -0x2

    if-ne v1, v9, :cond_df

    add-int/lit8 v9, v2, 0x1

    shr-int/lit8 v10, v8, 0x2

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    add-int/lit8 v2, v2, 0x2

    const/4 v7, 0x5

    goto :goto_72

    :cond_df
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :pswitch_e7
    const/4 v9, -0x2

    if-ne v1, v9, :cond_ed

    add-int/lit8 v7, v7, 0x1

    goto :goto_72

    :cond_ed
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :pswitch_f5
    const/4 v9, -0x1

    if-eq v1, v9, :cond_72

    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :cond_fd
    packed-switch v7, :pswitch_data_140

    move v2, v3

    :goto_101
    iput v7, p0, Landroid/util/Base64$Decoder;->state:I

    iput v2, p0, Landroid/util/Base64$Decoder;->op:I

    const/4 v9, 0x1

    return v9

    :pswitch_107
    move v2, v3

    goto :goto_101

    :pswitch_109
    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :pswitch_10e
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v9, v8, 0x4

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    goto :goto_101

    :pswitch_116
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v9, v8, 0xa

    int-to-byte v9, v9

    aput-byte v9, v4, v3

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v9, v8, 0x2

    int-to-byte v9, v9

    aput-byte v9, v4, v2

    move v2, v3

    goto :goto_101

    :pswitch_126
    const/4 v9, 0x6

    iput v9, p0, Landroid/util/Base64$Decoder;->state:I

    const/4 v9, 0x0

    return v9

    :pswitch_12b
    move v2, v3

    goto :goto_101

    :cond_12d
    move v3, v2

    goto/16 :goto_5d

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_74
        :pswitch_82
        :pswitch_93
        :pswitch_b1
        :pswitch_e7
        :pswitch_f5
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_107
        :pswitch_109
        :pswitch_10e
        :pswitch_116
        :pswitch_126
        :pswitch_12b
    .end packed-switch
.end method
