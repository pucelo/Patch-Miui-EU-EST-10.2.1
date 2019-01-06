.class public Landroid/net/wifi/aware/TlvBufferUtils;
.super Ljava/lang/Object;
.source "TlvBufferUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/TlvBufferUtils$TlvConstructor;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;,
        Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid([BII)Z
    .registers 8

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_7

    if-le p1, v3, :cond_21

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid arguments - typeSize must be 0, 1, or 2: typeSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    if-lez p2, :cond_25

    if-le p2, v3, :cond_3f

    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid arguments - lengthSize must be 1 or 2: lengthSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    if-nez p0, :cond_42

    return v1

    :cond_42
    const/4 v0, 0x0

    :goto_43
    add-int v3, v0, p1

    add-int/2addr v3, p2

    array-length v4, p0

    if-gt v3, v4, :cond_5a

    add-int/2addr v0, p1

    if-ne p2, v1, :cond_51

    aget-byte v3, p0, v0

    add-int/2addr v3, p2

    add-int/2addr v0, v3

    goto :goto_43

    :cond_51
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0, v3}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    move-result v3

    add-int/2addr v3, p2

    add-int/2addr v0, v3

    goto :goto_43

    :cond_5a
    array-length v3, p0

    if-ne v0, v3, :cond_5e

    :goto_5d
    return v1

    :cond_5e
    move v1, v2

    goto :goto_5d
.end method
