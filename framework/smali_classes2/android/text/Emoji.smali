.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# static fields
.field public static CANCEL_TAG:I

.field public static COMBINING_ENCLOSING_KEYCAP:I

.field public static VARIATION_SELECTOR_16:I

.field public static ZERO_WIDTH_JOINER:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20e3

    sput v0, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    const/16 v0, 0x200d

    sput v0, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    const v0, 0xfe0f

    sput v0, Landroid/text/Emoji;->VARIATION_SELECTOR_16:I

    const v0, 0xe007f

    sput v0, Landroid/text/Emoji;->CANCEL_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmoji(I)Z
    .registers 2

    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static isEmojiModifier(I)Z
    .registers 2

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isEmojiModifierBase(I)Z
    .registers 3

    const/4 v1, 0x1

    const v0, 0x1f91d

    if-eq p0, v0, :cond_b

    const v0, 0x1f93c

    if-ne p0, v0, :cond_c

    :cond_b
    return v1

    :cond_c
    const v0, 0x1f91f

    if-eq p0, v0, :cond_1b

    const v0, 0x1f931

    if-gt v0, p0, :cond_1c

    const v0, 0x1f932

    if-gt p0, v0, :cond_1c

    :cond_1b
    return v1

    :cond_1c
    const v0, 0x1f9d1

    if-gt v0, p0, :cond_26

    const v0, 0x1f9dd

    if-le p0, v0, :cond_1b

    :cond_26
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isKeycapBase(I)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-gt v1, p0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x23

    if-eq p0, v1, :cond_9

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isNewEmoji(I)Z
    .registers 5

    const v3, 0x1f9e6

    const v2, 0x1f6f7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p0, v2, :cond_c

    if-le p0, v3, :cond_d

    :cond_c
    return v1

    :cond_d
    if-gt v2, p0, :cond_15

    const v2, 0x1f6f8

    if-gt p0, v2, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    const v2, 0x1f91f

    if-eq p0, v2, :cond_14

    const v2, 0x1f928

    if-gt v2, p0, :cond_24

    const v2, 0x1f92f

    if-le p0, v2, :cond_14

    :cond_24
    const v2, 0x1f931

    if-gt v2, p0, :cond_2e

    const v2, 0x1f932

    if-le p0, v2, :cond_14

    :cond_2e
    const v2, 0x1f94c

    if-eq p0, v2, :cond_14

    const v2, 0x1f95f

    if-gt v2, p0, :cond_3d

    const v2, 0x1f96b

    if-le p0, v2, :cond_14

    :cond_3d
    const v2, 0x1f992

    if-gt v2, p0, :cond_47

    const v2, 0x1f997

    if-le p0, v2, :cond_14

    :cond_47
    const v2, 0x1f9d0

    if-gt v2, p0, :cond_4e

    if-le p0, v3, :cond_14

    :cond_4e
    move v0, v1

    goto :goto_14
.end method

.method public static isRegionalIndicatorSymbol(I)Z
    .registers 3

    const/4 v0, 0x0

    const v1, 0x1f1e6

    if-gt v1, p0, :cond_c

    const v1, 0x1f1ff

    if-gt p0, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isTagSpecChar(I)Z
    .registers 3

    const/4 v0, 0x0

    const v1, 0xe0020

    if-gt v1, p0, :cond_c

    const v1, 0xe007e

    if-gt p0, v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method
