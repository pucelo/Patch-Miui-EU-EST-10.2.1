.class public final Landroid/net/nsd/NsdServiceInfo;
.super Ljava/lang/Object;
.source "NsdServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdServiceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NsdServiceInfo"


# instance fields
.field private mHost:Ljava/net/InetAddress;

.field private mPort:I

.field private mServiceName:Ljava/lang/String;

.field private mServiceType:Ljava/lang/String;

.field private final mTxtRecord:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/nsd/NsdServiceInfo;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/nsd/NsdServiceInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/nsd/NsdServiceInfo;I)I
    .registers 2

    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return p1
.end method

.method static synthetic -set2(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/nsd/NsdServiceInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/nsd/NsdServiceInfo$1;

    invoke-direct {v0}, Landroid/net/nsd/NsdServiceInfo$1;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method private getTxtRecordSize()I
    .registers 6

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_2f

    const/4 v4, 0x0

    :goto_2d
    add-int/2addr v2, v4

    goto :goto_b

    :cond_2f
    array-length v4, v3

    goto :goto_2d

    :cond_31
    return v2
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/net/InetAddress;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getTxtRecord()[B
    .registers 12

    const/4 v9, 0x0

    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v6

    if-nez v6, :cond_a

    new-array v8, v9, [B

    return-object v8

    :cond_a
    new-array v5, v6, [B

    const/4 v3, 0x0

    iget-object v8, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v7, :cond_61

    move v8, v9

    :goto_38
    add-int/2addr v8, v10

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v5, v3

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v8, v9, v5, v4, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int v3, v4, v8

    add-int/lit8 v4, v3, 0x1

    const/16 v8, 0x3d

    aput-byte v8, v5, v3

    if-eqz v7, :cond_64

    array-length v8, v7

    invoke-static {v7, v9, v5, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v8, v7

    add-int v3, v4, v8

    goto :goto_17

    :cond_61
    array-length v8, v7

    goto :goto_38

    :cond_63
    return-object v5

    :cond_64
    move v3, v4

    goto :goto_17
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-nez p2, :cond_9

    const/4 v1, 0x0

    :try_start_3
    check-cast v1, [B

    :goto_5
    invoke-virtual {p0, p1, v1}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V

    return-void

    :cond_9
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_f} :catch_11

    move-result-object v1

    goto :goto_5

    :catch_11
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Value must be UTF-8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAttribute(Ljava/lang/String;[B)V
    .registers 11

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key cannot be empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3c

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x20

    if-lt v0, v5, :cond_23

    const/16 v5, 0x7e

    if-le v0, v5, :cond_2c

    :cond_23
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key strings must be printable US-ASCII"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2c
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_39

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key strings must not include \'=\'"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez p2, :cond_51

    move v5, v4

    :goto_43
    add-int/2addr v5, v6

    const/16 v6, 0xff

    if-lt v5, v6, :cond_53

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Key length + value length must be < 255 bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_51
    array-length v5, p2

    goto :goto_43

    :cond_53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x9

    if-le v5, v6, :cond_75

    const-string/jumbo v5, "NsdServiceInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Key lengths > 9 are discouraged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    invoke-direct {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecordSize()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    if-nez p2, :cond_90

    :goto_80
    add-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x2

    const/16 v4, 0x514

    if-le v1, v4, :cond_92

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Total length of attributes must be < 1300 bytes"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_90
    array-length v4, p2

    goto :goto_80

    :cond_92
    const/16 v4, 0x190

    if-le v1, v4, :cond_9f

    const-string/jumbo v4, "NsdServiceInfo"

    const-string/jumbo v5, "Total length of all attributes exceeds 400 bytes; truncation may occur"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    iget-object v4, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHost(Ljava/net/InetAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    return-void
.end method

.method public setPort(I)V
    .registers 2

    iput p1, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public setServiceType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    return-void
.end method

.method public setTxtRecords(Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x0

    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const/4 v3, 0x0

    :goto_6
    array-length v8, v5

    if-ge v3, v8, :cond_ea

    aget-byte v8, v5, v3

    and-int/lit16 v4, v8, 0xff

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_46

    :try_start_11
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Zero sized txt record"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception v0

    const-string/jumbo v8, "NsdServiceInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "While parsing txt records (pos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    add-int/2addr v3, v4

    goto :goto_6

    :cond_46
    add-int v8, v3, v4

    :try_start_48
    array-length v9, v5

    if-le v8, v9, :cond_73

    const-string/jumbo v8, "NsdServiceInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Corrupt record length (pos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    array-length v8, v5

    sub-int v4, v8, v3

    :cond_73
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, v3

    :goto_77
    add-int v8, v3, v4

    if-ge v1, v8, :cond_a2

    if-nez v2, :cond_8f

    aget-byte v8, v5, v1

    const/16 v9, 0x3d

    if-ne v8, v9, :cond_8c

    new-instance v2, Ljava/lang/String;

    sub-int v8, v1, v3

    sget-object v9, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v3, v8, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    :cond_8f
    if-nez v6, :cond_9b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v8, v4, v8

    add-int/lit8 v8, v8, -0x1

    new-array v6, v8, [B

    :cond_9b
    aget-byte v8, v5, v1

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8c

    :cond_a2
    if-nez v2, :cond_ab

    new-instance v2, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v5, v3, v4, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    :cond_ab
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ba

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Invalid txt record (key is empty)"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_ba
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getAttributes()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e5

    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid txt record (duplicate key \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_e5
    invoke-virtual {p0, v2, v6}, Landroid/net/nsd/NsdServiceInfo;->setAttribute(Ljava/lang/String;[B)V
    :try_end_e8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_e8} :catch_1a

    goto/16 :goto_44

    :cond_ea
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", port: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    move-result-object v1

    if-eqz v1, :cond_4f

    const-string/jumbo v2, ", txtRecord: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mServiceType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    if-eqz v3, :cond_58

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mHost:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_1c
    iget v3, p0, Landroid/net/nsd/NsdServiceInfo;->mPort:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroid/net/nsd/NsdServiceInfo;->mTxtRecord:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-eqz v2, :cond_5c

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    array-length v3, v2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_34

    :cond_58
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c

    :cond_5c
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    :cond_60
    return-void
.end method
