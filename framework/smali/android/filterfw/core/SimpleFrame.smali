.class public Landroid/filterfw/core/SimpleFrame;
.super Landroid/filterfw/core/Frame;
.source "SimpleFrame.java"


# instance fields
.field private mObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/filterfw/core/Frame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    invoke-direct {p0, p1}, Landroid/filterfw/core/SimpleFrame;->initWithFormat(Landroid/filterfw/core/FrameFormat;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setReusable(Z)V

    return-void
.end method

.method private initWithFormat(Landroid/filterfw/core/FrameFormat;)V
    .registers 5

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getLength()I

    move-result v1

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getBaseType()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    :goto_e
    return-void

    :pswitch_f
    new-array v2, v1, [B

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_e

    :pswitch_14
    new-array v2, v1, [S

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_e

    :pswitch_19
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_e

    :pswitch_1e
    new-array v2, v1, [F

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_e

    :pswitch_23
    new-array v2, v1, [D

    iput-object v2, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    goto :goto_e

    :pswitch_data_28
    .packed-switch 0x2
        :pswitch_f
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_23
    .end packed-switch
.end method

.method private setFormatObjectClass(Ljava/lang/Class;)V
    .registers 4

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/filterfw/core/MutableFrameFormat;->setObjectClass(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setFormat(Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method

.method static wrapObject(Ljava/lang/Object;Landroid/filterfw/core/FrameManager;)Landroid/filterfw/core/SimpleFrame;
    .registers 5

    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/filterfw/format/ObjectFormat;->fromObject(Ljava/lang/Object;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    new-instance v1, Landroid/filterfw/core/SimpleFrame;

    invoke-direct {v1, v0, p1}, Landroid/filterfw/core/SimpleFrame;-><init>(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FrameManager;)V

    invoke-virtual {v1, p0}, Landroid/filterfw/core/SimpleFrame;->setObjectValue(Ljava/lang/Object;)V

    return-object v1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFloats()[F
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, [F

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getInts()[I
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    check-cast v0, [I

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getObjectValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

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

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;II)V
    .registers 5

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setFloats([F)V
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected setGenericObjectValue(Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/filterfw/core/SimpleFrame;->setFormatObjectClass(Ljava/lang/Class;)V

    :cond_11
    iput-object p1, p0, Landroid/filterfw/core/SimpleFrame;->mObject:Ljava/lang/Object;

    return-void

    :cond_14
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempting to set object value of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SimpleFrame of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getObjectClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInts([I)V
    .registers 2

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->assertFrameMutable()V

    invoke-virtual {p0, p1}, Landroid/filterfw/core/SimpleFrame;->setGenericObjectValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SimpleFrame ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/filterfw/core/SimpleFrame;->getFormat()Landroid/filterfw/core/FrameFormat;

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
