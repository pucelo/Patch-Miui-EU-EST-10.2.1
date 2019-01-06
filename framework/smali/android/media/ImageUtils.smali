.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .registers 11

    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    sparse-switch v0, :sswitch_data_78

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Invalid image format %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_22
    if-nez p1, :cond_32

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_32
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_44
    if-nez p1, :cond_54

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_54
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_64
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_72
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v4, v4}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_64
        0x2 -> :sswitch_64
        0x3 -> :sswitch_64
        0x4 -> :sswitch_64
        0x10 -> :sswitch_44
        0x11 -> :sswitch_22
        0x14 -> :sswitch_64
        0x20 -> :sswitch_64
        0x22 -> :sswitch_72
        0x23 -> :sswitch_22
        0x25 -> :sswitch_64
        0x26 -> :sswitch_64
        0x100 -> :sswitch_64
        0x1002 -> :sswitch_64
        0x20203859 -> :sswitch_64
        0x20363159 -> :sswitch_64
        0x32315659 -> :sswitch_22
    .end sparse-switch
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .registers 11

    sparse-switch p2, :sswitch_data_3a

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Invalid format specified %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_1a
    const-wide v0, 0x3fd3333333333333L    # 0.3

    :goto_1f
    mul-int v2, p0, p1

    int-to-double v2, v2

    mul-double/2addr v2, v0

    int-to-double v4, p3

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2

    :sswitch_27
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_1f

    :sswitch_2a
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    goto :goto_1f

    :sswitch_2d
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    goto :goto_1f

    :sswitch_30
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_1f

    :sswitch_33
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    goto :goto_1f

    :sswitch_36
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    goto :goto_1f

    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_36
        0x2 -> :sswitch_36
        0x3 -> :sswitch_33
        0x4 -> :sswitch_30
        0x10 -> :sswitch_30
        0x11 -> :sswitch_2d
        0x14 -> :sswitch_30
        0x20 -> :sswitch_30
        0x22 -> :sswitch_2d
        0x23 -> :sswitch_2d
        0x24 -> :sswitch_30
        0x25 -> :sswitch_2a
        0x26 -> :sswitch_2d
        0x100 -> :sswitch_1a
        0x101 -> :sswitch_1a
        0x1002 -> :sswitch_30
        0x20203859 -> :sswitch_27
        0x20363159 -> :sswitch_30
        0x32315659 -> :sswitch_2d
        0x44363159 -> :sswitch_30
    .end sparse-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    sparse-switch p0, :sswitch_data_20

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Invalid format specified %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1a
    const/4 v0, 0x3

    return v0

    :sswitch_1c
    const/4 v0, 0x2

    return v0

    :sswitch_1e
    return v2

    :sswitch_1f
    return v4

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_1a
        0x14 -> :sswitch_1e
        0x20 -> :sswitch_1e
        0x22 -> :sswitch_1f
        0x23 -> :sswitch_1a
        0x24 -> :sswitch_1e
        0x25 -> :sswitch_1e
        0x26 -> :sswitch_1e
        0x100 -> :sswitch_1e
        0x101 -> :sswitch_1e
        0x1002 -> :sswitch_1e
        0x20203859 -> :sswitch_1e
        0x20363159 -> :sswitch_1e
        0x32315659 -> :sswitch_1a
        0x44363159 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .registers 23

    if-eqz p0, :cond_4

    if-nez p1, :cond_d

    :cond_4
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Images should be non-null"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Src and dst images should have the same format"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_45

    :cond_3c
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "PRIVATE format images are not copyable"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x24

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5a

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Copy of RAW_OPAQUE format has not been implemented"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5a
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getFormat()I

    move-result v18

    const/16 v19, 0x1002

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6f

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Copy of RAW_DEPTH format has not been implemented"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_6f
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/media/ImageWriter;

    move/from16 v18, v0

    if-nez v18, :cond_84

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_84
    new-instance v17, Landroid/util/Size;

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/util/Size;-><init>(II)V

    new-instance v6, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_e3

    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "source image size "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " is different"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " with "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "destination image size "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_e3
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_ee
    array-length v0, v14

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_1c2

    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    aget-object v18, v4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    aget-object v18, v4, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v18

    if-eqz v18, :cond_122

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v18

    :goto_117
    if-nez v18, :cond_125

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "Source and destination ByteBuffers must be direct byteBuffer!"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_122
    const/16 v18, 0x0

    goto :goto_117

    :cond_125
    aget-object v18, v14, v8

    invoke-virtual/range {v18 .. v18}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v18

    aget-object v19, v4, v8

    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_168

    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Source plane image pixel stride "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v14, v8

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " must be same as destination image pixel stride "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-object v20, v4, v8

    invoke-virtual/range {v20 .. v20}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_168
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move/from16 v0, v16

    if-ne v0, v5, :cond_183

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_179
    invoke-virtual {v11, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_ee

    :cond_183
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v18

    aget-object v19, v14, v8

    invoke-virtual/range {v19 .. v19}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v19

    mul-int v12, v18, v19

    const/4 v10, 0x0

    :goto_19e
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_179

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_1b9

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    sub-int v9, v18, v13

    if-le v12, v9, :cond_1b9

    move v12, v9

    :cond_1b9
    invoke-static {v11, v13, v2, v3, v12}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    add-int v13, v13, v16

    add-int/2addr v3, v5

    add-int/lit8 v10, v10, 0x1

    goto :goto_19e

    :cond_1c2
    return-void
.end method
