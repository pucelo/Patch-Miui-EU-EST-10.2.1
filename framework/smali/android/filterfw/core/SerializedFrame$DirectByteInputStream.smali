.class Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;
.super Ljava/io/InputStream;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/SerializedFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectByteInputStream"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mPos:I

.field private mSize:I

.field final synthetic this$0:Landroid/filterfw/core/SerializedFrame;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/SerializedFrame;[BI)V
    .registers 5

    iput-object p1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->this$0:Landroid/filterfw/core/SerializedFrame;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iput-object p2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iput p3, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    return-void
.end method


# virtual methods
.method public final available()I
    .registers 3

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final read()I
    .registers 4

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public final read([BII)I
    .registers 6

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-lt v0, v1, :cond_8

    const/4 v0, -0x1

    return v0

    :cond_8
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr v0, p3

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    if-le v0, v1, :cond_15

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int p3, v0, v1

    :cond_15
    iget-object v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mBuffer:[B

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    return p3
.end method

.method public final skip(J)J
    .registers 10

    const-wide/16 v4, 0x0

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget v2, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mSize:I

    iget v1, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    :cond_13
    cmp-long v0, p1, v4

    if-gez v0, :cond_18

    return-wide v4

    :cond_18
    iget v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;->mPos:I

    return-wide p1
.end method
