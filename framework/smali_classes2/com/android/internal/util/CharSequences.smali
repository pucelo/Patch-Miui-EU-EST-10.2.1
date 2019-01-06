.class public Lcom/android/internal/util/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 12

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-ge v4, v0, :cond_2a

    move v3, v4

    move v2, v1

    move v6, v5

    :goto_f
    if-ge v6, v3, :cond_31

    add-int/lit8 v5, v6, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    sub-int v7, v8, v9

    if-eqz v7, :cond_2e

    return v7

    :cond_2a
    move v3, v0

    move v2, v1

    move v6, v5

    goto :goto_f

    :cond_2e
    move v2, v1

    move v6, v5

    goto :goto_f

    :cond_31
    sub-int v8, v4, v0

    return v8
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_c

    return v4

    :cond_c
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v1, :cond_21

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1e

    return v4

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_21
    const/4 v2, 0x1

    return v2
.end method

.method public static forAsciiBytes([B)Ljava/lang/CharSequence;
    .registers 2

    new-instance v0, Lcom/android/internal/util/CharSequences$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/CharSequences$1;-><init>([B)V

    return-object v0
.end method

.method public static forAsciiBytes([BII)Ljava/lang/CharSequence;
    .registers 4

    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/CharSequences;->validate(III)V

    new-instance v0, Lcom/android/internal/util/CharSequences$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/CharSequences$2;-><init>([BII)V

    return-object v0
.end method

.method static validate(III)V
    .registers 4

    if-gez p0, :cond_8

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    if-gez p1, :cond_10

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_10
    if-le p1, p2, :cond_18

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_18
    if-le p0, p1, :cond_20

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_20
    return-void
.end method
