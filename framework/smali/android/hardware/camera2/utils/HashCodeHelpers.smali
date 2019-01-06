.class public final Landroid/hardware/camera2/utils/HashCodeHelpers;
.super Ljava/lang/Object;
.source "HashCodeHelpers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs hashCode([F)I
    .registers 7

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return v3

    :cond_4
    const/4 v1, 0x1

    array-length v4, p0

    :goto_6
    if-ge v3, v4, :cond_16

    aget v0, p0, v3

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    shl-int/lit8 v5, v1, 0x5

    sub-int/2addr v5, v1

    xor-int v1, v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_16
    return v1
.end method

.method public static varargs hashCode([I)I
    .registers 6

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x1

    array-length v3, p0

    :goto_6
    if-ge v2, v3, :cond_12

    aget v1, p0, v2

    shl-int/lit8 v4, v0, 0x5

    sub-int/2addr v4, v0

    xor-int v0, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    return v0
.end method

.method public static varargs hashCodeGeneric([Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x1

    array-length v4, p0

    :goto_6
    if-ge v3, v4, :cond_1a

    aget-object v1, p0, v3

    if-nez v1, :cond_15

    const/4 v2, 0x0

    :goto_d
    shl-int/lit8 v5, v0, 0x5

    sub-int/2addr v5, v0

    xor-int v0, v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_1a
    return v0
.end method
