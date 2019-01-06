.class Landroid/media/Cea608CCParser$CCData;
.super Ljava/lang/Object;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCData"
.end annotation


# static fields
.field private static final mCtrlCodeMap:[Ljava/lang/String;

.field private static final mProtugueseCharMap:[Ljava/lang/String;

.field private static final mSpanishCharMap:[Ljava/lang/String;

.field private static final mSpecialCharMap:[Ljava/lang/String;


# instance fields
.field private final mData1:B

.field private final mData2:B

.field private final mType:B


# direct methods
.method static synthetic -wrap0(Landroid/media/Cea608CCParser$CCData;)Z
    .registers 2

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "RCL"

    aput-object v1, v0, v3

    const-string/jumbo v1, "BS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "AOF"

    aput-object v1, v0, v5

    const-string/jumbo v1, "AON"

    aput-object v1, v0, v6

    const-string/jumbo v1, "DER"

    aput-object v1, v0, v7

    const-string/jumbo v1, "RU2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "RU3"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "RU4"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "FON"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "RDC"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "TR"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "RTD"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "EDM"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "CR"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "ENM"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "EOC"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u00ae"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u00b0"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00bd"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00bf"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u2122"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u00a2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00a3"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u266a"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00e0"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00a0"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00e8"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00e2"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00ea"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00ee"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00f4"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00fb"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u00c1"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u00c9"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00d3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00da"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u00dc"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u00fc"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2018"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00a1"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "*"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "\'"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2014"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00a9"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2120"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2022"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u201c"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u201d"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00c0"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00c2"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00c7"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00c8"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00ca"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00cb"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00eb"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00ce"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00cf"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00ef"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00d4"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00d9"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00f9"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00db"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00ab"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00bb"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "\u00c3"

    aput-object v1, v0, v3

    const-string/jumbo v1, "\u00e3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u00cd"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u00cc"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u00ec"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u00d2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00f2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00d5"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00f5"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "{"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "}"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "\\"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "^"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "_"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "|"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "~"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00c4"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00e4"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00d6"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00f6"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00df"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00a5"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00a4"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2502"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00c5"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00e5"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00d8"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u00f8"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u250c"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2510"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2514"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string/jumbo v1, "\u2518"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(BBB)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    iput-byte p2, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    iput-byte p3, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    return-void
.end method

.method private ctrlCodeToString(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mCtrlCodeMap:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x20

    aget-object v0, v0, v1

    return-object v0
.end method

.method static fromByteArray([B)[Landroid/media/Cea608CCParser$CCData;
    .registers 7

    array-length v2, p0

    div-int/lit8 v2, v2, 0x3

    new-array v0, v2, [Landroid/media/Cea608CCParser$CCData;

    const/4 v1, 0x0

    :goto_6
    array-length v2, v0

    if-ge v1, v2, :cond_23

    new-instance v2, Landroid/media/Cea608CCParser$CCData;

    mul-int/lit8 v3, v1, 0x3

    aget-byte v3, p0, v3

    mul-int/lit8 v4, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    invoke-direct {v2, v3, v4, v5}, Landroid/media/Cea608CCParser$CCData;-><init>(BBB)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    return-object v0
.end method

.method private getBasicChar(B)C
    .registers 3

    sparse-switch p1, :sswitch_data_24

    int-to-char v0, p1

    :goto_4
    return v0

    :sswitch_5
    const/16 v0, 0xe1

    goto :goto_4

    :sswitch_8
    const/16 v0, 0xe9

    goto :goto_4

    :sswitch_b
    const/16 v0, 0xed

    goto :goto_4

    :sswitch_e
    const/16 v0, 0xf3

    goto :goto_4

    :sswitch_11
    const/16 v0, 0xfa

    goto :goto_4

    :sswitch_14
    const/16 v0, 0xe7

    goto :goto_4

    :sswitch_17
    const/16 v0, 0xf7

    goto :goto_4

    :sswitch_1a
    const/16 v0, 0xd1

    goto :goto_4

    :sswitch_1d
    const/16 v0, 0xf1

    goto :goto_4

    :sswitch_20
    const/16 v0, 0x2588

    goto :goto_4

    nop

    :sswitch_data_24
    .sparse-switch
        0x2a -> :sswitch_5
        0x5c -> :sswitch_8
        0x5e -> :sswitch_b
        0x5f -> :sswitch_e
        0x60 -> :sswitch_11
        0x7b -> :sswitch_14
        0x7c -> :sswitch_17
        0x7d -> :sswitch_1a
        0x7e -> :sswitch_1d
        0x7f -> :sswitch_20
    .end sparse-switch
.end method

.method private getBasicChars()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x7f

    const/16 v2, 0x20

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    if-lt v1, v2, :cond_31

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    if-gt v1, v3, :cond_31

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-lt v1, v2, :cond_2c

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-gt v1, v3, :cond_2c

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-direct {p0, v1}, Landroid/media/Cea608CCParser$CCData;->getBasicChar(B)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_31
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExtendedChar()Ljava/lang/String;
    .registers 5

    const/16 v3, 0x3f

    const/16 v2, 0x20

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x12

    if-eq v0, v1, :cond_10

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_21

    :cond_10
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_21

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-gt v0, v3, :cond_21

    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mSpanishCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x20

    aget-object v0, v0, v1

    return-object v0

    :cond_21
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2d

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_3e

    :cond_2d
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-lt v0, v2, :cond_3e

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-gt v0, v3, :cond_3e

    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mProtugueseCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x20

    aget-object v0, v0, v1

    return-object v0

    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSpecialChar()Ljava/lang/String;
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_21

    :cond_c
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x30

    if-lt v0, v1, :cond_21

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_21

    sget-object v0, Landroid/media/Cea608CCParser$CCData;->mSpecialCharMap:[Ljava/lang/String;

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    add-int/lit8 v1, v1, -0x30

    aget-object v0, v0, v1

    return-object v0

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method private isBasicChar()Z
    .registers 4

    const/4 v0, 0x0

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x20

    if-lt v1, v2, :cond_e

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x7f

    if-gt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private isExtendedChar()Z
    .registers 4

    const/4 v0, 0x0

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x12

    if-eq v1, v2, :cond_d

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1b

    :cond_d
    :goto_d
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1a

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0

    :cond_1b
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x13

    if-eq v1, v2, :cond_d

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_1a

    goto :goto_d
.end method

.method private isSpecialChar()Z
    .registers 4

    const/4 v0, 0x0

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x11

    if-eq v1, v2, :cond_d

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1a

    :cond_d
    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1a

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method


# virtual methods
.method getCtrlCode()I
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x14

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1b

    :cond_c
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1b

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1b

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    return v0

    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method getDisplayText()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getBasicChars()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getSpecialChar()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->getExtendedChar()Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method getMidRow()Landroid/media/Cea608CCParser$StyleCode;
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1f

    :cond_c
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1f

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_1f

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v0}, Landroid/media/Cea608CCParser$StyleCode;->fromByte(B)Landroid/media/Cea608CCParser$StyleCode;

    move-result-object v0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method getPAC()Landroid/media/Cea608CCParser$PAC;
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    and-int/lit8 v0, v0, 0x70

    const/16 v1, 0x10

    if-ne v0, v1, :cond_25

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_25

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_1c

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_25

    :cond_1c
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    iget-byte v1, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v0, v1}, Landroid/media/Cea608CCParser$PAC;->fromBytes(BB)Landroid/media/Cea608CCParser$PAC;

    move-result-object v0

    return-object v0

    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method getTabOffset()I
    .registers 3

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x17

    if-eq v0, v1, :cond_c

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1d

    :cond_c
    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1d

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    const/16 v1, 0x23

    if-gt v0, v1, :cond_1d

    iget-byte v0, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method isDisplayableChar()Z
    .registers 2

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isBasicChar()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isSpecialChar()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Landroid/media/Cea608CCParser$CCData;->isExtendedChar()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    const/16 v5, 0x10

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    if-ge v4, v5, :cond_30

    iget-byte v4, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    if-ge v4, v5, :cond_30

    const-string/jumbo v4, "[%d]Null: %02x %02x"

    new-array v5, v10, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_30
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getCtrlCode()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4f

    const-string/jumbo v4, "[%d]%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-direct {p0, v0}, Landroid/media/Cea608CCParser$CCData;->ctrlCodeToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4f
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getTabOffset()I

    move-result v3

    if-lez v3, :cond_6d

    const-string/jumbo v4, "[%d]Tab%d"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_6d
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getPAC()Landroid/media/Cea608CCParser$PAC;

    move-result-object v2

    if-eqz v2, :cond_8b

    const-string/jumbo v4, "[%d]PAC: %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2}, Landroid/media/Cea608CCParser$PAC;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_8b
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getMidRow()Landroid/media/Cea608CCParser$StyleCode;

    move-result-object v1

    if-eqz v1, :cond_a9

    const-string/jumbo v4, "[%d]Mid-row: %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_a9
    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->isDisplayableChar()Z

    move-result v4

    if-eqz v4, :cond_d8

    const-string/jumbo v4, "[%d]Displayable: %s (%02x %02x)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0}, Landroid/media/Cea608CCParser$CCData;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_d8
    const-string/jumbo v4, "[%d]Invalid: %02x %02x"

    new-array v5, v10, [Ljava/lang/Object;

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mType:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v7

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData1:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v8

    iget-byte v6, p0, Landroid/media/Cea608CCParser$CCData;->mData2:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
