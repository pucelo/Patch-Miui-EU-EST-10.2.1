.class public abstract Landroid/security/keystore/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneIfNotEmpty([B)[B
    .registers 2

    if-eqz p0, :cond_c

    array-length v0, p0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_b
    return-object v0

    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public static cloneIfNotEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    array-length v0, p0

    if-lez v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_b
    return-object v0

    :cond_c
    move-object v0, p0

    goto :goto_b
.end method

.method public static concat([BII[BII)[B
    .registers 9

    const/4 v2, 0x0

    if-nez p2, :cond_8

    invoke-static {p3, p4, p5}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    return-object v1

    :cond_8
    if-nez p5, :cond_f

    invoke-static {p0, p1, p2}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v1

    return-object v1

    :cond_f
    add-int v1, p2, p5

    new-array v0, v1, [B

    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {p3, p4, v0, p2, p5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public static concat([B[B)[B
    .registers 8

    const/4 v1, 0x0

    if-eqz p0, :cond_f

    array-length v2, p0

    :goto_4
    if-eqz p1, :cond_11

    array-length v5, p1

    :goto_7
    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Landroid/security/keystore/ArrayUtils;->concat([BII[BII)[B

    move-result-object v0

    return-object v0

    :cond_f
    move v2, v1

    goto :goto_4

    :cond_11
    move v5, v1

    goto :goto_7
.end method

.method public static concat([I[I)[I
    .registers 6

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    array-length v1, p0

    if-nez v1, :cond_7

    :cond_6
    return-object p1

    :cond_7
    if-eqz p1, :cond_c

    array-length v1, p1

    if-nez v1, :cond_d

    :cond_c
    return-object p0

    :cond_d
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [I

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([II[III)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy([II[III)V

    return-object v0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_2
.end method

.method public static subarray([BII)[B
    .registers 6

    const/4 v2, 0x0

    if-nez p2, :cond_6

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1

    :cond_6
    if-nez p1, :cond_c

    array-length v1, p0

    if-ne p2, v1, :cond_c

    return-object p0

    :cond_c
    new-array v0, p2, [B

    invoke-static {p0, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method
