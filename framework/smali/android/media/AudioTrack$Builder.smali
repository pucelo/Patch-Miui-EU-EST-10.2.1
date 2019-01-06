.class public Landroid/media/AudioTrack$Builder;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttributes:Landroid/media/AudioAttributes;

.field private mBufferSizeInBytes:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mMode:I

.field private mPerformanceMode:I

.field private mSessionId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    iput v1, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioTrack;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    if-nez v1, :cond_14

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    :cond_14
    iget v1, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    packed-switch v1, :pswitch_data_c0

    :cond_19
    :goto_19
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    if-nez v1, :cond_32

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    :cond_32
    :try_start_32
    iget v1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    if-ne v1, v5, :cond_4f

    iget v1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    if-nez v1, :cond_4f

    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v1

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    :cond_4f
    new-instance v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v4, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    iget v5, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-nez v1, :cond_bf

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Cannot create AudioTrack"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_6d} :catch_6d

    :catch_6d
    move-exception v6

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_78
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x100

    and-int/lit16 v2, v2, -0x201

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    goto :goto_19

    :pswitch_94
    iget-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    iget v4, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    invoke-static {v1, v2, v3, v4}, Landroid/media/AudioTrack;->-wrap0(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v1

    if-eqz v1, :cond_19

    :pswitch_a2
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v1, v2}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    iget-object v2, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x200

    and-int/lit16 v2, v2, -0x101

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    goto/16 :goto_19

    :cond_bf
    return-object v0

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_94
        :pswitch_78
        :pswitch_a2
    .end packed-switch
.end method

.method public setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioAttributes argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioFormat argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iput-object p1, p0, Landroid/media/AudioTrack$Builder;->mFormat:Landroid/media/AudioFormat;

    return-object p0
.end method

.method public setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gtz p1, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid buffer size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mBufferSizeInBytes:I

    return-object p0
.end method

.method public setPerformanceMode(I)Landroid/media/AudioTrack$Builder;
    .registers 5

    packed-switch p1, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid performance mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mPerformanceMode:I

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public setSessionId(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid audio session ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mSessionId:I

    return-object p0
.end method

.method public setTransferMode(I)Landroid/media/AudioTrack$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid transfer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    iput p1, p0, Landroid/media/AudioTrack$Builder;->mMode:I

    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method
