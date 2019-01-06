.class public Lmiui/telephony/dtmf/DTMFAudioInputStream;
.super Ljava/io/InputStream;
.source "DTMFAudioInputStream.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DTMFAudioInputStream"


# instance fields
.field private mByteBuff:[B

.field private mReadedCnt:I


# direct methods
.method public constructor <init>([B)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-nez p1, :cond_f

    const-string/jumbo v1, "DTMFAudioInputStream"

    const-string/jumbo v2, "parameter error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    const/4 v0, 0x0

    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_21

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_21
    const/4 v1, 0x0

    iput v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    return-void
.end method


# virtual methods
.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    iget-object v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v1, v1

    if-lt v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    iget v1, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public read([BI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    if-eqz v2, :cond_6

    if-gtz p2, :cond_11

    :cond_6
    const-string/jumbo v2, "DTMFAudioInputStream"

    const-string/jumbo v3, "paramenter error:fail to get subdatalist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2

    :cond_11
    move v0, p2

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v2, v2

    iget v3, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    sub-int/2addr v2, v3

    if-ge v2, p2, :cond_21

    iget-object v2, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mByteBuff:[B

    array-length v2, v2

    iget v3, p0, Lmiui/telephony/dtmf/DTMFAudioInputStream;->mReadedCnt:I

    sub-int v0, v2, v3

    :cond_21
    const/4 v1, 0x0

    :goto_22
    if-ge v1, v0, :cond_2e

    invoke-virtual {p0}, Lmiui/telephony/dtmf/DTMFAudioInputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2e
    return p2
.end method
