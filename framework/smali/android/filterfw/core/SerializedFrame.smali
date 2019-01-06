.class public Landroid/filterfw/core/SerializedFrame;
.super Landroid/filterfw/core/Frame;
.source "SerializedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;,
        Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;
    }
.end annotation


# static fields
.field private static final INITIAL_CAPACITY:I = 0x40


# instance fields
.field private mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

.field private mObjectOut:Ljava/io/ObjectOutputStream;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/filterfw/core/SerializedFrame;->setReusable(Z)V

    :try_start_7
    new-instance v1, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    const/16 v2, 0x40

    invoke-direct {v1, p0, v2}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;-><init>(Landroid/filterfw/core/SerializedFrame;I)V

    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    new-instance v1, Ljava/io/ObjectOutputStream;

    iget-object v2, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->markHeaderEnd()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not create serialization streams for SerializedFrame!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final deserializeObjectValue()Ljava/lang/Object;
    .registers 8

    :try_start_0
    iget-object v4, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v4}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->getInputStream()Landroid/filterfw/core/SerializedFrame$DirectByteInputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_32
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v4

    return-object v4

    :catch_10
    move-exception v1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to deserialize object of unknown class in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_32
    move-exception v0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not deserialize object in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private final serializeObjectValue(Ljava/lang/Object;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mByteOutputStream:Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;

    invoke-virtual {v1}, Landroid/filterfw/core/SerializedFrame$DirectByteOutputStream;->reset()V

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    iget-object v1, p0, Landroid/filterfw/core/SerializedFrame;->mObjectOut:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not serialize object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SerializedFrame;
    .registers 5

    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    new-instance v1, Landroid/filterfw/core/SerializedFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SerializedFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    invoke-virtual {v1, p0}, Landroid/filterfw/core/SerializedFrame;->setObjectValue(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 3

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFloats()[F
    .registers 3

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [F

    if-eqz v1, :cond_b

    check-cast v0, [F

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInts()[I
    .registers 3

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [I

    if-eqz v1, :cond_b

    check-cast v0, [I

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getObjectValue()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Landroid/filterfw/core/SerializedFrame;->deserializeObjectValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected hasNativeAllocation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected releaseNativeAllocation()V
    .registers 1

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .registers 5

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setFloats([F)V
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/SerializedFrame;->serializeObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setInts([I)V
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SerializedFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SerializedFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/SerializedFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
