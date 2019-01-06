.class public final Landroid/hardware/weaver/V1_0/WeaverReadResponse;
.super Ljava/lang/Object;
.source "WeaverReadResponse.java"


# instance fields
.field public timeout:I

.field public final value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/weaver/V1_0/WeaverReadResponse;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x10

    invoke-virtual {p0, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v1, v12, 0x18

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_24
    if-ge v9, v12, :cond_37

    new-instance v11, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    invoke-direct {v11}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;-><init>()V

    mul-int/lit8 v1, v9, 0x18

    int-to-long v2, v1

    invoke-virtual {v11, p0, v13, v2, v3}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    :cond_37
    return-object v10
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/weaver/V1_0/WeaverReadResponse;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v0, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v4, 0x8

    invoke-virtual {v0, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v1, 0x0

    :goto_1e
    if-ge v1, v2, :cond_2f

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    mul-int/lit8 v5, v1, 0x18

    int-to-long v6, v5

    invoke-virtual {v4, v3, v6, v7}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_2f
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_5

    return v4

    :cond_5
    if-nez p1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    if-eq v1, v2, :cond_11

    return v3

    :cond_11
    move-object v0, p1

    check-cast v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    iget v2, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-eq v1, v2, :cond_1b

    return v3

    :cond_1b
    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    return v3

    :cond_26
    return v4
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 22

    const-wide/16 v4, 0x0

    add-long v4, v4, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    const-wide/16 v4, 0x8

    add-long v4, v4, p3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    mul-int/lit8 v3, v12, 0x1

    int-to-long v4, v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const-wide/16 v8, 0x8

    add-long v8, v8, p3

    const-wide/16 v14, 0x0

    add-long/2addr v8, v14

    const/4 v10, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v12, :cond_4f

    mul-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    invoke-virtual {v13, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4f
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 6

    const-wide/16 v2, 0x18

    invoke-virtual {p1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".timeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", .value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 16

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x8

    add-long v4, p2, v10

    iget v3, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    iget-object v3, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-long v4, p2, v8

    add-long/2addr v4, v8

    invoke-virtual {p1, v4, v5, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v4, p2, v8

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x1

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v0, 0x0

    :goto_28
    if-ge v0, v1, :cond_3f

    mul-int/lit8 v3, v0, 0x1

    int-to-long v4, v3

    iget-object v3, p0, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_3f
    add-long v4, p2, v8

    add-long/2addr v4, v10

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 6

    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
