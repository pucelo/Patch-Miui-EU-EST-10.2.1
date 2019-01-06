.class Landroid/util/Base64$Encoder;
.super Landroid/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final ENCODE:[B

.field private static final ENCODE_WEBSAFE:[B

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v1, 0x40

    const-class v0, Landroid/util/Base64$Encoder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/util/Base64$Encoder;->-assertionsDisabled:Z

    new-array v0, v1, [B

    fill-array-data v0, :array_1c

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_40

    sput-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    return-void

    nop

    :array_1c
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_40
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/util/Base64$Coder;-><init>()V

    iput-object p2, p0, Landroid/util/Base64$Encoder;->output:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_33

    move v0, v1

    :goto_c
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_35

    move v0, v1

    :goto_13
    iput-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_37

    :goto_19
    iput-boolean v1, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_39

    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE:[B

    :goto_21
    iput-object v0, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/util/Base64$Encoder;->tail:[B

    iput v2, p0, Landroid/util/Base64$Encoder;->tailLen:I

    iget-boolean v0, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_3c

    const/16 v0, 0x13

    :goto_30
    iput v0, p0, Landroid/util/Base64$Encoder;->count:I

    return-void

    :cond_33
    move v0, v2

    goto :goto_c

    :cond_35
    move v0, v2

    goto :goto_13

    :cond_37
    move v1, v2

    goto :goto_19

    :cond_39
    sget-object v0, Landroid/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_21

    :cond_3c
    const/4 v0, -0x1

    goto :goto_30
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 19

    iget-object v1, p0, Landroid/util/Base64$Encoder;->alphabet:[B

    iget-object v5, p0, Landroid/util/Base64$Encoder;->output:[B

    const/4 v3, 0x0

    iget v2, p0, Landroid/util/Base64$Encoder;->count:I

    move/from16 v6, p2

    add-int p3, p3, p2

    const/4 v10, -0x1

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    packed-switch v11, :pswitch_data_258

    :cond_11
    :goto_11
    :pswitch_11
    const/4 v11, -0x1

    if-eq v10, v11, :cond_ae

    const/4 v11, 0x0

    const/4 v3, 0x1

    shr-int/lit8 v12, v10, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_254

    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_251

    add-int/lit8 v3, v4, 0x1

    const/16 v11, 0xd

    aput-byte v11, v5, v4

    :goto_48
    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xa

    aput-byte v11, v5, v3

    const/16 v2, 0x13

    move v7, v6

    :goto_51
    add-int/lit8 v11, v7, 0x3

    move/from16 v0, p3

    if-gt v11, v0, :cond_fd

    aget-byte v11, p1, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v7, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v12, v7, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    add-int/lit8 v11, v4, 0x1

    shr-int/lit8 v12, v10, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    add-int/lit8 v11, v4, 0x3

    and-int/lit8 v12, v10, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    add-int/lit8 v6, v7, 0x3

    add-int/lit8 v3, v4, 0x4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_ae

    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_a5

    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    :cond_a5
    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xa

    aput-byte v11, v5, v3

    const/16 v2, 0x13

    move v3, v4

    :cond_ae
    move v7, v6

    move v4, v3

    goto :goto_51

    :pswitch_b1
    add-int/lit8 v11, p2, 0x2

    move/from16 v0, p3

    if-gt v11, v0, :cond_11

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v6, p2, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v7, v6, 0x1

    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    const/4 v11, 0x0

    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    move v6, v7

    goto/16 :goto_11

    :pswitch_d7
    add-int/lit8 v11, p2, 0x1

    move/from16 v0, p3

    if-gt v11, v0, :cond_11

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    iget-object v12, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    add-int/lit8 v6, p2, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    or-int v10, v11, v12

    const/4 v11, 0x0

    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    goto/16 :goto_11

    :cond_fd
    if-eqz p4, :cond_210

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x1

    if-ne v11, v12, :cond_168

    const/4 v8, 0x0

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_163

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    const/4 v8, 0x1

    aget-byte v11, v11, v12

    move v6, v7

    :goto_113
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v10, v11, 0x4

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_24e

    add-int/lit8 v3, v4, 0x1

    const/16 v11, 0x3d

    aput-byte v11, v5, v4

    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    move v3, v4

    :goto_13f
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_155

    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_14e

    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    :cond_14e
    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v3, v4

    :cond_155
    :goto_155
    sget-boolean v11, Landroid/util/Base64$Encoder;->-assertionsDisabled:Z

    if-nez v11, :cond_202

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    if-eqz v11, :cond_202

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_163
    add-int/lit8 v6, v7, 0x1

    aget-byte v11, p1, v7

    goto :goto_113

    :cond_168
    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x2

    if-ne v11, v12, :cond_1e0

    const/4 v8, 0x0

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_1d5

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    const/4 v8, 0x1

    aget-byte v11, v11, v12

    move v6, v7

    :goto_17d
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v11, 0xa

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_1da

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v11, v11, v8

    move v8, v9

    :goto_18c
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x2

    or-int v10, v12, v11

    iget v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v3, v4, 0x1

    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    add-int/lit8 v4, v3, 0x1

    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_1be

    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    move v3, v4

    :cond_1be
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_155

    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_1cd

    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    :cond_1cd
    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v3, v4

    goto :goto_155

    :cond_1d5
    add-int/lit8 v6, v7, 0x1

    aget-byte v11, p1, v7

    goto :goto_17d

    :cond_1da
    add-int/lit8 v7, v6, 0x1

    aget-byte v11, p1, v6

    move v6, v7

    goto :goto_18c

    :cond_1e0
    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_1fe

    if-lez v4, :cond_1fe

    const/16 v11, 0x13

    if-eq v2, v11, :cond_1fe

    iget-boolean v11, p0, Landroid/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_24c

    add-int/lit8 v3, v4, 0x1

    const/16 v11, 0xd

    aput-byte v11, v5, v4

    :goto_1f4
    add-int/lit8 v4, v3, 0x1

    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v6, v7

    move v3, v4

    goto/16 :goto_155

    :cond_1fe
    move v6, v7

    move v3, v4

    goto/16 :goto_155

    :cond_202
    sget-boolean v11, Landroid/util/Base64$Encoder;->-assertionsDisabled:Z

    if-nez v11, :cond_222

    move/from16 v0, p3

    if-eq v6, v0, :cond_222

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    :cond_210
    add-int/lit8 v11, p3, -0x1

    if-ne v7, v11, :cond_228

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    move v6, v7

    move v3, v4

    :cond_222
    :goto_222
    iput v3, p0, Landroid/util/Base64$Encoder;->op:I

    iput v2, p0, Landroid/util/Base64$Encoder;->count:I

    const/4 v11, 0x1

    return v11

    :cond_228
    add-int/lit8 v11, p3, -0x2

    if-ne v7, v11, :cond_249

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    iget-object v11, p0, Landroid/util/Base64$Encoder;->tail:[B

    iget v12, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Landroid/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v11, v12

    move v6, v7

    move v3, v4

    goto :goto_222

    :cond_249
    move v6, v7

    move v3, v4

    goto :goto_222

    :cond_24c
    move v3, v4

    goto :goto_1f4

    :cond_24e
    move v3, v4

    goto/16 :goto_13f

    :cond_251
    move v3, v4

    goto/16 :goto_48

    :cond_254
    move v7, v6

    goto/16 :goto_51

    nop

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b1
        :pswitch_d7
    .end packed-switch
.end method
