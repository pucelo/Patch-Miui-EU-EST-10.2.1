.class public Landroid/net/NetworkStatsHistory;
.super Ljava/lang/Object;
.source "NetworkStatsHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStatsHistory$1;,
        Landroid/net/NetworkStatsHistory$DataStreamUtils;,
        Landroid/net/NetworkStatsHistory$Entry;,
        Landroid/net/NetworkStatsHistory$ParcelUtils;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIELD_ACTIVE_TIME:I = 0x1

.field public static final FIELD_ALL:I = -0x1

.field public static final FIELD_OPERATIONS:I = 0x20

.field public static final FIELD_RX_BYTES:I = 0x2

.field public static final FIELD_RX_PACKETS:I = 0x4

.field public static final FIELD_TX_BYTES:I = 0x8

.field public static final FIELD_TX_PACKETS:I = 0x10

.field private static final VERSION_ADD_ACTIVE:I = 0x3

.field private static final VERSION_ADD_PACKETS:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# instance fields
.field private activeTime:[J

.field private bucketCount:I

.field private bucketDuration:J

.field private bucketStart:[J

.field private operations:[J

.field private rxBytes:[J

.field private rxPackets:[J

.field private totalBytes:J

.field private txBytes:[J

.field private txPackets:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/NetworkStatsHistory$1;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStatsHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    const/16 v0, 0xa

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JI)V
    .registers 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    return-void
.end method

.method public constructor <init>(JII)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_12

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_12
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1a

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_1a
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_22

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_22
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_2a

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_2a
    and-int/lit8 v0, p4, 0x10

    if-eqz v0, :cond_32

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_32
    and-int/lit8 v0, p4, 0x20

    if-eqz v0, :cond_3a

    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_3a
    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStatsHistory;J)V
    .registers 6

    invoke-virtual {p1, p2, p3}, Landroid/net/NetworkStatsHistory;->estimateResizeBuckets(J)I

    move-result v0

    invoke-direct {p0, p2, p3, v0}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    invoke-virtual {p0, p1}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->readLongArray(Landroid/os/Parcel;)[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v0, v0

    iput v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_e8

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readFullLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :goto_65
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_73

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-eq v1, v2, :cond_ca

    :cond_73
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "Mismatched history lengths"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_7c
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c4

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    :goto_8f
    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {p1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->readVarLongArray(Ljava/io/DataInputStream;)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    iput v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v2

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->total([J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    goto :goto_65

    :cond_c4
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v1, v1

    new-array v1, v1, [J

    goto :goto_8f

    :cond_ca
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_73

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_73

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_73

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    array-length v1, v1

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ne v1, v2, :cond_73

    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_24
        :pswitch_7c
        :pswitch_7c
    .end packed-switch
.end method

.method private static addLong([JIJ)V
    .registers 6

    if-eqz p0, :cond_7

    aget-wide v0, p0, p1

    add-long/2addr v0, p2

    aput-wide v0, p0, p1

    :cond_7
    return-void
.end method

.method private ensureBuckets(JJ)V
    .registers 14

    const/4 v8, 0x0

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v4, p1, v4

    sub-long/2addr p1, v4

    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long v6, p3, v6

    sub-long/2addr v4, v6

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    rem-long/2addr v4, v6

    add-long/2addr p3, v4

    move-wide v2, p1

    :goto_12
    cmp-long v1, v2, p3

    if-gez v1, :cond_28

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v4, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v8, v4, v2, v3}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_24

    not-int v1, v0

    invoke-direct {p0, v1, v2, v3}, Landroid/net/NetworkStatsHistory;->insertBucket(IJ)V

    :cond_24
    iget-wide v4, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v2, v4

    goto :goto_12

    :cond_28
    return-void
.end method

.method private static getLong([JIJ)J
    .registers 4

    if-eqz p0, :cond_4

    aget-wide p2, p0, p1

    :cond_4
    return-wide p2
.end method

.method private insertBucket(IJ)V
    .registers 12

    const-wide/16 v6, 0x0

    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v4, v4

    if-lt v3, v4, :cond_66

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v2, v3, 0x2

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_2a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_36

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_36
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_42

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_42
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_4e

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_4e
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_5a
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    iput-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_66
    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge p1, v3, :cond_b9

    add-int/lit8 v0, p1, 0x1

    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int v1, v3, p1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v3, :cond_82

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_82
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v3, :cond_8d

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_8d
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v3, :cond_98

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_98
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v3, :cond_a3

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_a3
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v3, :cond_ae

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_ae
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v3, :cond_b9

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-object v4, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v4, v0, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    :cond_b9
    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aput-wide p2, v3, p1

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v3, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v3, p1, v6, v7}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return-void
.end method

.method public static randomLong(Ljava/util/Random;JJ)J
    .registers 10

    long-to-float v0, p1

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result v1

    sub-long v2, p3, p1

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private static setLong([JIJ)V
    .registers 4

    if-eqz p0, :cond_4

    aput-wide p2, p0, p1

    :cond_4
    return-void
.end method

.method private static writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V
    .registers 8

    if-eqz p3, :cond_7

    aget-wide v0, p3, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_7
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .registers 11

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x0

    const-string/jumbo v2, "NetworkStatsHistory: bucketDuration="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    if-eqz p2, :cond_94

    const/4 v1, 0x0

    :goto_15
    if-lez v1, :cond_26

    const-string/jumbo v2, "(omitting "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo v2, " buckets)"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    move v0, v1

    :goto_27
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v2, :cond_9e

    const-string/jumbo v2, "st="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v2, v0

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v2, :cond_4a

    const-string/jumbo v2, " rb="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_4a
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v2, :cond_5b

    const-string/jumbo v2, " rp="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_5b
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v2, :cond_6c

    const-string/jumbo v2, " tb="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_6c
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v2, :cond_7d

    const-string/jumbo v2, " tp="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_7d
    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v2, :cond_8e

    const-string/jumbo v2, " op="

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    :cond_8e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_94
    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v2, v2, -0x20

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto/16 :goto_15

    :cond_9e
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;)V
    .registers 10

    const-wide/16 v6, 0x3e8

    const/16 v4, 0x2c

    const-string/jumbo v1, "d,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const/4 v0, 0x0

    :goto_14
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_95

    const-string/jumbo v1, "b,"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, v0

    div-long/2addr v2, v6

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v1, :cond_72

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_34
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v1, :cond_79

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_42
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v1, :cond_80

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_50
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v1, :cond_87

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_5e
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v1, :cond_8e

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    :goto_6c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_72
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_34

    :cond_79
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_42

    :cond_80
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_50

    :cond_87
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5e

    :cond_8e
    const-string/jumbo v1, "*"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6c

    :cond_95
    return-void
.end method

.method public estimateResizeBuckets(J)I
    .registers 8

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method public generateRandom(JJJ)V
    .registers 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v18, Ljava/util/Random;

    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextFloat()F

    move-result v2

    move-wide/from16 v0, p5

    long-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-long v8, v3

    move-wide/from16 v0, p5

    long-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    float-to-long v12, v3

    const-wide/16 v4, 0x400

    div-long v10, v8, v4

    const-wide/16 v4, 0x400

    div-long v14, v12, v4

    const-wide/16 v4, 0x800

    div-long v16, v8, v4

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v18}, Landroid/net/NetworkStatsHistory;->generateRandom(JJJJJJJLjava/util/Random;)V

    return-void
.end method

.method public generateRandom(JJJJJJJLjava/util/Random;)V
    .registers 39
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    new-instance v7, Landroid/net/NetworkStats$Entry;

    sget-object v8, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    invoke-direct/range {v7 .. v21}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    :goto_17
    const-wide/16 v8, 0x400

    cmp-long v6, p5, v8

    if-gtz v6, :cond_23

    const-wide/16 v8, 0x80

    cmp-long v6, p7, v8

    if-lez v6, :cond_94

    :cond_23
    move-object/from16 v0, p15

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v10

    const-wide/16 v8, 0x0

    sub-long v14, p3, v10

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    move-object/from16 v0, p15

    invoke-static {v0, v8, v9, v14, v15}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    add-long v12, v10, v8

    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p5

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p7

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p9

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p11

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p15

    move-wide/from16 v1, p13

    invoke-static {v0, v8, v9, v1, v2}, Landroid/net/NetworkStatsHistory;->randomLong(Ljava/util/Random;JJ)J

    move-result-wide v8

    iput-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long p5, p5, v8

    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long p7, p7, v8

    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long p9, p9, v8

    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long p11, p11, v8

    iget-wide v8, v7, Landroid/net/NetworkStats$Entry;->operations:J

    sub-long p13, p13, v8

    move-object/from16 v9, p0

    move-object v14, v7

    invoke-virtual/range {v9 .. v14}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_17

    :cond_94
    const-wide/16 v8, 0x400

    cmp-long v6, p9, v8

    if-gtz v6, :cond_23

    const-wide/16 v8, 0x80

    cmp-long v6, p11, v8

    if-gtz v6, :cond_23

    const-wide/16 v8, 0x20

    cmp-long v6, p13, v8

    if-gtz v6, :cond_23

    return-void
.end method

.method public getBucketDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    return-wide v0
.end method

.method public getEnd()J
    .registers 5

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_10

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long/2addr v0, v2

    return-wide v0

    :cond_10
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getIndexAfter(J)I
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_15

    not-int v0, v0

    :goto_c
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public getIndexBefore(J)I
    .registers 8

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v2, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {v1, v3, v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v0

    if-gez v0, :cond_17

    not-int v1, v0

    add-int/lit8 v0, v1, -0x1

    :goto_e
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method public getStart()J
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-lez v0, :cond_a

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v0, v0, v1

    return-wide v0

    :cond_a
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public getTotalBytes()J
    .registers 3

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-wide v0
.end method

.method public getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 9

    const-wide/16 v4, -0x1

    if-eqz p2, :cond_40

    move-object v0, p2

    :goto_5
    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v1, p1, v4, v5}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    return-object v0

    :cond_40
    new-instance v0, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto :goto_5
.end method

.method public getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 33

    if-eqz p7, :cond_82

    move-object/from16 v5, p7

    :goto_4
    sub-long v18, p3, p1

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-wide/from16 v0, p1

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_89

    const-wide/16 v18, 0x0

    :goto_18
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_8c

    const-wide/16 v18, 0x0

    :goto_26
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_8f

    const-wide/16 v18, 0x0

    :goto_34
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_92

    const-wide/16 v18, 0x0

    :goto_42
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_95

    const-wide/16 v18, 0x0

    :goto_50
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_98

    const-wide/16 v18, 0x0

    :goto_5e
    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v11

    move v10, v11

    :goto_6b
    if-ltz v10, :cond_81

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    move-object/from16 v18, v0

    aget-wide v8, v18, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v18, v0

    add-long v6, v8, v18

    cmp-long v18, v6, p1

    if-gtz v18, :cond_9b

    :cond_81
    return-object v5

    :cond_82
    new-instance v5, Landroid/net/NetworkStatsHistory$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStatsHistory$Entry;-><init>()V

    goto/16 :goto_4

    :cond_89
    const-wide/16 v18, -0x1

    goto :goto_18

    :cond_8c
    const-wide/16 v18, -0x1

    goto :goto_26

    :cond_8f
    const-wide/16 v18, -0x1

    goto :goto_34

    :cond_92
    const-wide/16 v18, -0x1

    goto :goto_42

    :cond_95
    const-wide/16 v18, -0x1

    goto :goto_50

    :cond_98
    const-wide/16 v18, -0x1

    goto :goto_5e

    :cond_9b
    cmp-long v18, v8, p3

    if-ltz v18, :cond_a2

    :cond_9f
    :goto_9f
    add-int/lit8 v10, v10, -0x1

    goto :goto_6b

    :cond_a2
    cmp-long v18, v8, p5

    if-gez v18, :cond_191

    cmp-long v18, v6, p5

    if-lez v18, :cond_191

    const/4 v4, 0x1

    :goto_ab
    if-eqz v4, :cond_194

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    :goto_b1
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-lez v18, :cond_9f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_db

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    :cond_db
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_ff

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_123

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_147

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    :cond_147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_16b

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    :cond_16b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v18, v0

    if-eqz v18, :cond_9f

    iget-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move-object/from16 v20, v0

    aget-wide v20, v20, v10

    mul-long v20, v20, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    move-wide/from16 v22, v0

    div-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v5, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    goto/16 :goto_9f

    :cond_191
    const/4 v4, 0x0

    goto/16 :goto_ab

    :cond_194
    cmp-long v18, v6, p3

    if-gez v18, :cond_1a3

    move-wide v14, v6

    :goto_199
    cmp-long v18, v8, p1

    if-lez v18, :cond_1a6

    move-wide/from16 v16, v8

    :goto_19f
    sub-long v12, v14, v16

    goto/16 :goto_b1

    :cond_1a3
    move-wide/from16 v14, p3

    goto :goto_199

    :cond_1a6
    move-wide/from16 v16, p1

    goto :goto_19f
.end method

.method public getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;
    .registers 15

    const-wide v6, 0x7fffffffffffffffL

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    return-object v0
.end method

.method public intersects(JJ)Z
    .registers 12

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_12

    cmp-long v4, p1, v0

    if-gtz v4, :cond_12

    return v5

    :cond_12
    cmp-long v4, p3, v2

    if-ltz v4, :cond_1b

    cmp-long v4, p3, v0

    if-gtz v4, :cond_1b

    return v5

    :cond_1b
    cmp-long v4, v2, p1

    if-ltz v4, :cond_24

    cmp-long v4, v2, p3

    if-gtz v4, :cond_24

    return v5

    :cond_24
    cmp-long v4, v0, p1

    if-ltz v4, :cond_2d

    cmp-long v4, v0, p3

    if-gtz v4, :cond_2d

    return v5

    :cond_2d
    const/4 v4, 0x0

    return v4
.end method

.method public recordData(JJJJ)V
    .registers 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Landroid/net/NetworkStats$Entry;

    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-wide/from16 v6, p5

    move-wide/from16 v10, p7

    invoke-direct/range {v1 .. v15}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    return-void
.end method

.method public recordData(JJLandroid/net/NetworkStats$Entry;)V
    .registers 47

    move-object/from16 v0, p5

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p5

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v36, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v38, v0

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->operations:J

    move-wide/from16 v34, v0

    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isNegative()Z

    move-result v12

    if-eqz v12, :cond_29

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "tried recording negative data"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_29
    invoke-virtual/range {p5 .. p5}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_30

    return-void

    :cond_30
    invoke-direct/range {p0 .. p4}, Landroid/net/NetworkStatsHistory;->ensureBuckets(JJ)V

    sub-long v8, p3, p1

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v33

    move/from16 v32, v33

    :goto_3f
    if-ltz v32, :cond_51

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v20, v12, v32

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v18, v20, v12

    cmp-long v12, v18, p1

    if-gez v12, :cond_67

    :cond_51
    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    move-object/from16 v0, p5

    iget-wide v14, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    return-void

    :cond_67
    cmp-long v12, v20, p3

    if-lez v12, :cond_6e

    :cond_6b
    :goto_6b
    add-int/lit8 v32, v32, -0x1

    goto :goto_3f

    :cond_6e
    move-wide/from16 v0, v18

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    move-wide/from16 v0, v20

    move-wide/from16 v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    sub-long v6, v12, v14

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_6b

    invoke-static/range {v4 .. v9}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v24

    move-wide v12, v6

    move-wide v14, v8

    invoke-static/range {v10 .. v15}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v26

    move-wide/from16 v12, v36

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-static/range {v12 .. v17}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v28

    move-wide/from16 v12, v38

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-static/range {v12 .. v17}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v30

    move-wide/from16 v12, v34

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-static/range {v12 .. v17}, Landroid/net/NetworkStats;->multiplySafe(JJJ)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    move/from16 v0, v32

    invoke-static {v12, v0, v6, v7}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    move/from16 v0, v32

    move-wide/from16 v1, v24

    invoke-static {v12, v0, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v4, v4, v24

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    move/from16 v0, v32

    move-wide/from16 v1, v26

    invoke-static {v12, v0, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v10, v10, v26

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    move/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-static {v12, v0, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v36, v36, v28

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    move/from16 v0, v32

    move-wide/from16 v1, v30

    invoke-static {v12, v0, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v38, v38, v30

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    move/from16 v0, v32

    move-wide/from16 v1, v22

    invoke-static {v12, v0, v1, v2}, Landroid/net/NetworkStatsHistory;->addLong([JIJ)V

    sub-long v34, v34, v22

    sub-long/2addr v8, v6

    goto/16 :goto_6b
.end method

.method public recordEntireHistory(Landroid/net/NetworkStatsHistory;)V
    .registers 8

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    return-void
.end method

.method public recordHistory(Landroid/net/NetworkStatsHistory;JJ)V
    .registers 24

    new-instance v3, Landroid/net/NetworkStats$Entry;

    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    const/4 v2, 0x0

    :goto_15
    move-object/from16 v0, p1

    iget v4, v0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v2, v4, :cond_75

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v6, v4, v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v8, v6, v4

    cmp-long v4, v6, p2

    if-ltz v4, :cond_2f

    cmp-long v4, v8, p4

    if-lez v4, :cond_32

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_32
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStatsHistory;->operations:[J

    const-wide/16 v10, 0x0

    invoke-static {v4, v2, v10, v11}, Landroid/net/NetworkStatsHistory;->getLong([JIJ)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/net/NetworkStats$Entry;->operations:J

    move-object/from16 v5, p0

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    goto :goto_2f

    :cond_75
    return-void
.end method

.method public removeBucketsBefore(J)V
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    :goto_1
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v4, v6, :cond_11

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v2, v6, v4

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    add-long v0, v2, v6

    cmp-long v6, v0, p1

    if-lez v6, :cond_6c

    :cond_11
    if-lez v4, :cond_6b

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    array-length v5, v6

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    if-eqz v6, :cond_2a

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    :cond_2a
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v6, :cond_36

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    :cond_36
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    if-eqz v6, :cond_42

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    :cond_42
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v6, :cond_4e

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    :cond_4e
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    if-eqz v6, :cond_5a

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    :cond_5a
    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    if-eqz v6, :cond_66

    iget-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v6

    iput-object v6, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    :cond_66
    iget v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    sub-int/2addr v6, v4

    iput v6, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    :cond_6b
    return-void

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public setValues(ILandroid/net/NetworkStatsHistory$Entry;)V
    .registers 7

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_d
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_1a
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget-wide v2, p2, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    aput-wide v2, v0, p1

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget-wide v2, p2, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-static {v0, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget-wide v2, p2, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-static {v0, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget-wide v2, p2, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-static {v0, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget-wide v2, p2, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-static {v0, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget-wide v2, p2, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-static {v0, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget-wide v2, p2, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-static {v0, p1, v2, v3}, Landroid/net/NetworkStatsHistory;->setLong([JIJ)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    if-eqz v0, :cond_57

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    aget-wide v2, v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_57
    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    if-eqz v0, :cond_64

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    iget-object v2, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    aget-wide v2, v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    :cond_64
    return-void
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v2, "  "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$ParcelUtils;->writeLongArray(Landroid/os/Parcel;[JI)V

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->totalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 14

    const-wide v8, 0x10400000001L

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-wide v6, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const/4 v0, 0x0

    :goto_f
    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    if-ge v0, v1, :cond_5b

    const-wide v6, 0x21100000002L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    aget-wide v6, v1, v0

    invoke-virtual {p1, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    const-wide v6, 0x10400000002L

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    const-wide v6, 0x10400000003L

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    const-wide v6, 0x10400000004L

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    const-wide v6, 0x10400000005L

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    iget-object v1, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    const-wide v6, 0x10400000006L

    invoke-static {p1, v6, v7, v1, v0}, Landroid/net/NetworkStatsHistory;->writeToProto(Landroid/util/proto/ProtoOutputStream;J[JI)V

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_5b
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/NetworkStatsHistory;->bucketDuration:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->bucketStart:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->activeTime:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->rxPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txBytes:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->txPackets:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    iget-object v0, p0, Landroid/net/NetworkStatsHistory;->operations:[J

    iget v1, p0, Landroid/net/NetworkStatsHistory;->bucketCount:I

    invoke-static {p1, v0, v1}, Landroid/net/NetworkStatsHistory$DataStreamUtils;->writeVarLongArray(Ljava/io/DataOutputStream;[JI)V

    return-void
.end method
