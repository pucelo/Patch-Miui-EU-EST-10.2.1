.class public Landroid/net/nsd/DnsSdTxtRecord;
.super Ljava/lang/Object;
.source "DnsSdTxtRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/DnsSdTxtRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/DnsSdTxtRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSeperator:B = 0x3dt


# instance fields
.field private mData:[B


# direct methods
.method static synthetic -get0(Landroid/net/nsd/DnsSdTxtRecord;)[B
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/nsd/DnsSdTxtRecord$1;

    invoke-direct {v0}, Landroid/net/nsd/DnsSdTxtRecord$1;-><init>()V

    sput-object v0, Landroid/net/nsd/DnsSdTxtRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method public constructor <init>(Landroid/net/nsd/DnsSdTxtRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    if-eqz v0, :cond_13

    iget-object v0, p1, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    :cond_13
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    return-void
.end method

.method private getKey(I)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_13

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v4

    if-ge v2, v4, :cond_13

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v4, v4, v2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_13
    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v4, v4

    if-ge v2, v4, :cond_39

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v1, v4, v2

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v1, :cond_2c

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0x3d

    if-ne v4, v5, :cond_36

    :cond_2c
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([BII)V

    return-object v4

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_39
    const/4 v4, 0x0

    return-object v4
.end method

.method private getValue(I)[B
    .registers 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p1, :cond_14

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v5

    if-ge v2, v5, :cond_14

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v5, v5, v2

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_14
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v5

    if-ge v2, v5, :cond_41

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v1, v5, v2

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v1, :cond_41

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v2, v0

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_42

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    new-array v4, v5, [B

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int v6, v2, v0

    add-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v0

    add-int/lit8 v7, v7, -0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v4, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_41
    return-object v4

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f
.end method

.method private getValue(Ljava/lang/String;)[B
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v2

    return-object v2

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    return-object v3
.end method

.method private getValueAsString(I)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(I)[B

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_c
    return-object v1
.end method

.method private insert([B[BI)V
    .registers 15

    const/4 v8, 0x0

    iget-object v4, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    if-eqz p2, :cond_1b

    array-length v6, p2

    :goto_6
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, p3, :cond_1d

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v7

    if-ge v2, v7, :cond_1d

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v7, v7, v2

    add-int/lit8 v7, v7, 0x1

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1b
    const/4 v6, 0x0

    goto :goto_6

    :cond_1d
    array-length v7, p1

    add-int v9, v7, v6

    if-eqz p2, :cond_5f

    const/4 v7, 0x1

    :goto_23
    add-int v0, v9, v7

    array-length v7, v4

    add-int/2addr v7, v0

    add-int/lit8 v3, v7, 0x1

    new-array v7, v3, [B

    iput-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v4, v8, v7, v8, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v4

    sub-int v5, v7, v2

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    sub-int v9, v3, v5

    invoke-static {v4, v2, v7, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    int-to-byte v9, v0

    aput-byte v9, v7, v2

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v9, v2, 0x1

    array-length v10, p1

    invoke-static {p1, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    if-eqz p2, :cond_5e

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v9, v2, 0x1

    array-length v10, p1

    add-int/2addr v9, v10

    const/16 v10, 0x3d

    aput-byte v10, v7, v9

    iget-object v7, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v9, p1

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x2

    invoke-static {p2, v8, v7, v9, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_5e
    return-void

    :cond_5f
    move v7, v8

    goto :goto_23
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    return v2

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return v3
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p1, p0, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    instance-of v1, p1, Landroid/net/nsd/DnsSdTxtRecord;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/net/nsd/DnsSdTxtRecord;

    iget-object v1, v0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->getValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    :cond_c
    return-object v1
.end method

.method public getRawData()[B
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public keyCount()I
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v2, v2

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v2, v2, v1

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return v0
.end method

.method public remove(Ljava/lang/String;)I
    .registers 11

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v5

    if-ge v1, v5, :cond_60

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    aget-byte v0, v5, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v0, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v0, :cond_27

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_58

    :cond_27
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_58

    iget-object v3, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [B

    iput-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    iget-object v5, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-static {v3, v8, v5, v8, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v7, v3

    sub-int/2addr v7, v1

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    return v2

    :cond_58
    add-int/lit8 v5, v0, 0x1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_60
    const/4 v5, -0x1

    return v5
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    if-eqz p2, :cond_21

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v5, v4

    :goto_7
    :try_start_7
    const-string/jumbo v6, "US-ASCII"

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_d} :catch_24

    move-result-object v3

    const/4 v2, 0x0

    :goto_f
    array-length v6, v3

    if-ge v2, v6, :cond_31

    aget-byte v6, v3, v2

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_2e

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "= is not a valid character in key"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_21
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto :goto_7

    :catch_24
    move-exception v1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "key should be US-ASCII"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_31
    array-length v6, v3

    add-int/2addr v6, v5

    const/16 v7, 0xff

    if-lt v6, v7, :cond_40

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Key and Value length cannot exceed 255 bytes"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_40
    invoke-virtual {p0, p1}, Landroid/net/nsd/DnsSdTxtRecord;->remove(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4b

    invoke-virtual {p0}, Landroid/net/nsd/DnsSdTxtRecord;->keyCount()I

    move-result v0

    :cond_4b
    invoke-direct {p0, v3, v4, v0}, Landroid/net/nsd/DnsSdTxtRecord;->insert([B[BI)V

    return-void
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, v2}, Landroid/net/nsd/DnsSdTxtRecord;->getKey(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_75

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "{"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2}, Landroid/net/nsd/DnsSdTxtRecord;->getValueAsString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_41
    if-nez v3, :cond_5c

    move-object v3, v1

    :goto_44
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_5c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_44

    :cond_75
    if-eqz v3, :cond_78

    :goto_77
    return-object v3

    :cond_78
    const-string/jumbo v3, ""

    goto :goto_77
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/net/nsd/DnsSdTxtRecord;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
