.class Landroid/opengl/GLLogWrapper;
.super Landroid/opengl/GLWrapperBase;
.source "GLLogWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/opengl/GLLogWrapper$PointerInfo;
    }
.end annotation


# static fields
.field private static final FORMAT_FIXED:I = 0x2

.field private static final FORMAT_FLOAT:I = 0x1

.field private static final FORMAT_INT:I


# instance fields
.field private mArgCount:I

.field mColorArrayEnabled:Z

.field private mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field private mLog:Ljava/io/Writer;

.field private mLogArgumentNames:Z

.field mNormalArrayEnabled:Z

.field private mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

.field mTextureCoordArrayEnabled:Z

.field mVertexArrayEnabled:Z

.field private mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;


# direct methods
.method static synthetic -wrap0(Landroid/opengl/GLLogWrapper;ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/opengl/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-direct {v0, p0}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iput-object p2, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    iput-boolean p3, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    return-void
.end method

.method private arg(Ljava/lang/String;F)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .registers 5

    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V
    .registers 5

    invoke-direct {p0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[FI)V
    .registers 6

    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[FI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[II)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;I[SI)V
    .registers 6

    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(I[SI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    if-lez v0, :cond_e

    const-string/jumbo v0, ", "

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    :cond_e
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mLogArgumentNames:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    :cond_29
    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private arg(Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private argPointer(IIILjava/nio/Buffer;)V
    .registers 7

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getPointerTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pointer"

    invoke-virtual {p4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private begin(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/opengl/GLLogWrapper;->mArgCount:I

    return-void
.end method

.method private bindArrays()V
    .registers 2

    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_9
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_12
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_1b
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->bindByteBuffer()V

    :cond_24
    return-void
.end method

.method private checkError()V
    .registers 5

    iget-object v2, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v1

    if-eqz v1, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "glError: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->logLine(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method private doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V
    .registers 24

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string/jumbo v16, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ":{"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_25

    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v16, v0

    if-nez v16, :cond_30

    :cond_25
    const-string/jumbo v16, "undefined }"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_30
    move-object/from16 v0, p4

    iget v0, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mStride:I

    move/from16 v16, v0

    if-gez v16, :cond_43

    const-string/jumbo v16, "invalid stride"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_43
    invoke-virtual/range {p4 .. p4}, Landroid/opengl/GLLogWrapper$PointerInfo;->getStride()I

    move-result v14

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mTempByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p4

    iget v12, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mSize:I

    move-object/from16 v0, p4

    iget v15, v0, Landroid/opengl/GLLogWrapper$PointerInfo;->mType:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Landroid/opengl/GLLogWrapper$PointerInfo;->sizeof(I)I

    move-result v13

    mul-int v3, v14, p5

    const/4 v8, 0x0

    :goto_5c
    if-ge v8, v12, :cond_e7

    if-lez v8, :cond_6a

    const-string/jumbo v16, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6a
    sparse-switch v15, :sswitch_data_f2

    const-string/jumbo v16, "?"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_77
    add-int/2addr v3, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_5c

    :sswitch_7b
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :sswitch_8b
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :sswitch_9f
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v11

    div-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :sswitch_b7
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v10

    div-int/lit8 v16, v3, 0x4

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :sswitch_cf
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    div-int/lit8 v16, v3, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_77

    :cond_e7
    const-string/jumbo v16, "}"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :sswitch_data_f2
    .sparse-switch
        0x1400 -> :sswitch_7b
        0x1401 -> :sswitch_8b
        0x1402 -> :sswitch_9f
        0x1406 -> :sswitch_cf
        0x140c -> :sswitch_b7
    .end sparse-switch
.end method

.method private doElement(Ljava/lang/StringBuilder;II)V
    .registers 10

    const-string/jumbo v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    const-string/jumbo v3, "v"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    const-string/jumbo v3, "n"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    const-string/jumbo v3, "c"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    iget-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    const-string/jumbo v3, "t"

    iget-object v4, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper;->doArrayElement(Ljava/lang/StringBuilder;ZLjava/lang/String;Landroid/opengl/GLLogWrapper$PointerInfo;I)V

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private end()V
    .registers 2

    const-string/jumbo v0, ");\n"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    return-void
.end method

.method private endLogIndices()V
    .registers 2

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->unbindArrays()V

    return-void
.end method

.method private flush()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    goto :goto_5
.end method

.method private formattedAppend(Ljava/lang/StringBuilder;II)V
    .registers 6

    packed-switch p3, :pswitch_data_18

    :goto_3
    return-void

    :pswitch_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_8
    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_10
    int-to-float v0, p2

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_3

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method private getBeginMode(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_24

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_POINTS"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_LINES"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "GL_LINE_LOOP"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "GL_LINE_STRIP"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "GL_TRIANGLES"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "GL_TRIANGLE_STRIP"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "GL_TRIANGLE_FAN"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private getCap(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_88

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_FOG"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_LIGHTING"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_TEXTURE_2D"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_CULL_FACE"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_ALPHA_TEST"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "GL_BLEND"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "GL_COLOR_LOGIC_OP"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "GL_DITHER"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "GL_STENCIL_TEST"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "GL_DEPTH_TEST"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "GL_LIGHT0"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "GL_LIGHT1"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "GL_LIGHT2"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "GL_LIGHT3"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "GL_LIGHT4"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "GL_LIGHT5"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "GL_LIGHT6"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "GL_LIGHT7"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "GL_POINT_SMOOTH"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "GL_LINE_SMOOTH"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "GL_COLOR_MATERIAL"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "GL_NORMALIZE"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "GL_RESCALE_NORMAL"

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "GL_VERTEX_ARRAY"

    return-object v0

    :sswitch_68
    const-string/jumbo v0, "GL_NORMAL_ARRAY"

    return-object v0

    :sswitch_6c
    const-string/jumbo v0, "GL_COLOR_ARRAY"

    return-object v0

    :sswitch_70
    const-string/jumbo v0, "GL_TEXTURE_COORD_ARRAY"

    return-object v0

    :sswitch_74
    const-string/jumbo v0, "GL_MULTISAMPLE"

    return-object v0

    :sswitch_78
    const-string/jumbo v0, "GL_SAMPLE_ALPHA_TO_COVERAGE"

    return-object v0

    :sswitch_7c
    const-string/jumbo v0, "GL_SAMPLE_ALPHA_TO_ONE"

    return-object v0

    :sswitch_80
    const-string/jumbo v0, "GL_SAMPLE_COVERAGE"

    return-object v0

    :sswitch_84
    const-string/jumbo v0, "GL_SCISSOR_TEST"

    return-object v0

    :sswitch_data_88
    .sparse-switch
        0xb10 -> :sswitch_50
        0xb20 -> :sswitch_54
        0xb44 -> :sswitch_14
        0xb50 -> :sswitch_c
        0xb57 -> :sswitch_58
        0xb60 -> :sswitch_8
        0xb71 -> :sswitch_2c
        0xb90 -> :sswitch_28
        0xba1 -> :sswitch_5c
        0xbc0 -> :sswitch_18
        0xbd0 -> :sswitch_24
        0xbe2 -> :sswitch_1c
        0xbf2 -> :sswitch_20
        0xc11 -> :sswitch_84
        0xde1 -> :sswitch_10
        0x4000 -> :sswitch_30
        0x4001 -> :sswitch_34
        0x4002 -> :sswitch_38
        0x4003 -> :sswitch_3c
        0x4004 -> :sswitch_40
        0x4005 -> :sswitch_44
        0x4006 -> :sswitch_48
        0x4007 -> :sswitch_4c
        0x803a -> :sswitch_60
        0x8074 -> :sswitch_64
        0x8075 -> :sswitch_68
        0x8076 -> :sswitch_6c
        0x8078 -> :sswitch_70
        0x809d -> :sswitch_74
        0x809e -> :sswitch_78
        0x809f -> :sswitch_7c
        0x80a0 -> :sswitch_80
    .end sparse-switch
.end method

.method private getClearBufferMask(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_11

    const-string/jumbo v1, "GL_DEPTH_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x101

    :cond_11
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_21

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    const-string/jumbo v1, "GL_STENCIL_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x401

    :cond_29
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_41

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_39

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const-string/jumbo v1, "GL_COLOR_BUFFER_BIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, -0x4001

    :cond_41
    if-eqz p1, :cond_56

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4f

    const-string/jumbo v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getClientState(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_18

    :pswitch_3
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_COLOR_ARRAY"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_VERTEX_ARRAY"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "GL_NORMAL_ARRAY"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "GL_TEXTURE_COORD_ARRAY"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x8074
        :pswitch_c
        :pswitch_10
        :pswitch_8
        :pswitch_3
        :pswitch_14
    .end packed-switch
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_24

    invoke-static {p0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_NO_ERROR"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_INVALID_ENUM"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_INVALID_VALUE"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_INVALID_OPERATION"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_STACK_OVERFLOW"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "GL_STACK_UNDERFLOW"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "GL_OUT_OF_MEMORY"

    return-object v0

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_8
        0x500 -> :sswitch_c
        0x501 -> :sswitch_10
        0x502 -> :sswitch_14
        0x503 -> :sswitch_18
        0x504 -> :sswitch_1c
        0x505 -> :sswitch_20
    .end sparse-switch
.end method

.method private getFaceName(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_c

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_FRONT_AND_BACK"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x408
        :pswitch_8
    .end packed-switch
.end method

.method private getFactor(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_34

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_ZERO"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_ONE"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_SRC_COLOR"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_ONE_MINUS_SRC_COLOR"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_DST_COLOR"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "GL_ONE_MINUS_DST_COLOR"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "GL_SRC_ALPHA"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "GL_ONE_MINUS_SRC_ALPHA"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "GL_DST_ALPHA"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "GL_ONE_MINUS_DST_ALPHA"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "GL_SRC_ALPHA_SATURATE"

    return-object v0

    :sswitch_data_34
    .sparse-switch
        0x0 -> :sswitch_8
        0x1 -> :sswitch_c
        0x300 -> :sswitch_10
        0x301 -> :sswitch_14
        0x302 -> :sswitch_20
        0x303 -> :sswitch_24
        0x304 -> :sswitch_28
        0x305 -> :sswitch_2c
        0x306 -> :sswitch_18
        0x307 -> :sswitch_1c
        0x308 -> :sswitch_30
    .end sparse-switch
.end method

.method private getFogPName(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_1c

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_FOG_DENSITY"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_FOG_START"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "GL_FOG_END"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "GL_FOG_MODE"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "GL_FOG_COLOR"

    return-object v0

    :pswitch_data_1c
    .packed-switch 0xb62
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
    .end packed-switch
.end method

.method private getFogParamCount(I)I
    .registers 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_c

    const/4 v0, 0x0

    return v0

    :pswitch_6
    return v0

    :pswitch_7
    return v0

    :pswitch_8
    return v0

    :pswitch_9
    return v0

    :pswitch_a
    const/4 v0, 0x4

    return v0

    :pswitch_data_c
    .packed-switch 0xb62
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static getHex(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHintMode(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_14

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_FASTEST"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_NICEST"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "GL_DONT_CARE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1100
        :pswitch_10
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private getHintTarget(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_20

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_FOG_HINT"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_LINE_SMOOTH_HINT"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_PERSPECTIVE_CORRECTION_HINT"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_POINT_SMOOTH_HINT"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_POLYGON_SMOOTH_HINT"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "GL_GENERATE_MIPMAP_HINT"

    return-object v0

    :sswitch_data_20
    .sparse-switch
        0xc50 -> :sswitch_10
        0xc51 -> :sswitch_14
        0xc52 -> :sswitch_c
        0xc53 -> :sswitch_18
        0xc54 -> :sswitch_8
        0x8192 -> :sswitch_1c
    .end sparse-switch
.end method

.method private getIndexType(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_10

    :pswitch_3
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_UNSIGNED_SHORT"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_UNSIGNED_BYTE"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1401
        :pswitch_c
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method private getIntegerStateFormat(I)I
    .registers 3

    packed-switch p1, :pswitch_data_8

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x898d
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private getIntegerStateName(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_6c

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_ALPHA_BITS"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_ALIASED_LINE_WIDTH_RANGE"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_ALIASED_POINT_SIZE_RANGE"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_BLUE_BITS"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_COMPRESSED_TEXTURE_FORMATS"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "GL_DEPTH_BITS"

    return-object v0

    :sswitch_20
    const-string/jumbo v0, "GL_GREEN_BITS"

    return-object v0

    :sswitch_24
    const-string/jumbo v0, "GL_MAX_ELEMENTS_INDICES"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "GL_MAX_ELEMENTS_VERTICES"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "GL_MAX_LIGHTS"

    return-object v0

    :sswitch_30
    const-string/jumbo v0, "GL_MAX_TEXTURE_SIZE"

    return-object v0

    :sswitch_34
    const-string/jumbo v0, "GL_MAX_VIEWPORT_DIMS"

    return-object v0

    :sswitch_38
    const-string/jumbo v0, "GL_MAX_MODELVIEW_STACK_DEPTH"

    return-object v0

    :sswitch_3c
    const-string/jumbo v0, "GL_MAX_PROJECTION_STACK_DEPTH"

    return-object v0

    :sswitch_40
    const-string/jumbo v0, "GL_MAX_TEXTURE_STACK_DEPTH"

    return-object v0

    :sswitch_44
    const-string/jumbo v0, "GL_MAX_TEXTURE_UNITS"

    return-object v0

    :sswitch_48
    const-string/jumbo v0, "GL_NUM_COMPRESSED_TEXTURE_FORMATS"

    return-object v0

    :sswitch_4c
    const-string/jumbo v0, "GL_RED_BITS"

    return-object v0

    :sswitch_50
    const-string/jumbo v0, "GL_SMOOTH_LINE_WIDTH_RANGE"

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "GL_SMOOTH_POINT_SIZE_RANGE"

    return-object v0

    :sswitch_58
    const-string/jumbo v0, "GL_STENCIL_BITS"

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "GL_SUBPIXEL_BITS"

    return-object v0

    :sswitch_60
    const-string/jumbo v0, "GL_MODELVIEW_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "GL_PROJECTION_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object v0

    :sswitch_68
    const-string/jumbo v0, "GL_TEXTURE_MATRIX_FLOAT_AS_INT_BITS_OES"

    return-object v0

    :sswitch_data_6c
    .sparse-switch
        0xb12 -> :sswitch_54
        0xb22 -> :sswitch_50
        0xd31 -> :sswitch_2c
        0xd33 -> :sswitch_30
        0xd36 -> :sswitch_38
        0xd38 -> :sswitch_3c
        0xd39 -> :sswitch_40
        0xd3a -> :sswitch_34
        0xd50 -> :sswitch_5c
        0xd52 -> :sswitch_4c
        0xd53 -> :sswitch_20
        0xd54 -> :sswitch_14
        0xd55 -> :sswitch_8
        0xd56 -> :sswitch_1c
        0xd57 -> :sswitch_58
        0x80e8 -> :sswitch_28
        0x80e9 -> :sswitch_24
        0x846d -> :sswitch_10
        0x846e -> :sswitch_c
        0x84e2 -> :sswitch_44
        0x86a2 -> :sswitch_48
        0x86a3 -> :sswitch_18
        0x898d -> :sswitch_60
        0x898e -> :sswitch_64
        0x898f -> :sswitch_68
    .end sparse-switch
.end method

.method private getIntegerStateSize(I)I
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_2c

    return v3

    :sswitch_7
    return v1

    :sswitch_8
    return v2

    :sswitch_9
    return v2

    :sswitch_a
    return v1

    :sswitch_b
    new-array v0, v1, [I

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x86a2

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    aget v1, v0, v3

    return v1

    :sswitch_18
    return v1

    :sswitch_19
    return v1

    :sswitch_1a
    return v1

    :sswitch_1b
    return v1

    :sswitch_1c
    return v1

    :sswitch_1d
    return v1

    :sswitch_1e
    return v2

    :sswitch_1f
    return v1

    :sswitch_20
    return v1

    :sswitch_21
    return v1

    :sswitch_22
    return v1

    :sswitch_23
    return v1

    :sswitch_24
    return v1

    :sswitch_25
    return v2

    :sswitch_26
    return v2

    :sswitch_27
    return v1

    :sswitch_28
    return v1

    :sswitch_29
    const/16 v1, 0x10

    return v1

    :sswitch_data_2c
    .sparse-switch
        0xb12 -> :sswitch_26
        0xb22 -> :sswitch_25
        0xd31 -> :sswitch_1c
        0xd33 -> :sswitch_1d
        0xd36 -> :sswitch_1f
        0xd38 -> :sswitch_20
        0xd39 -> :sswitch_21
        0xd3a -> :sswitch_1e
        0xd50 -> :sswitch_28
        0xd52 -> :sswitch_24
        0xd53 -> :sswitch_19
        0xd54 -> :sswitch_a
        0xd55 -> :sswitch_7
        0xd56 -> :sswitch_18
        0xd57 -> :sswitch_27
        0x80e8 -> :sswitch_1b
        0x80e9 -> :sswitch_1a
        0x846d -> :sswitch_9
        0x846e -> :sswitch_8
        0x84e2 -> :sswitch_22
        0x86a2 -> :sswitch_23
        0x86a3 -> :sswitch_b
        0x898d -> :sswitch_29
        0x898e -> :sswitch_29
        0x898f -> :sswitch_29
    .end sparse-switch
.end method

.method private getLightModelPName(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_10

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_LIGHT_MODEL_AMBIENT"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_LIGHT_MODEL_TWO_SIDE"

    return-object v0

    :pswitch_data_10
    .packed-switch 0xb52
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private getLightModelParamCount(I)I
    .registers 3

    packed-switch p1, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x4

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0xb52
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getLightName(I)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x4000

    if-lt p1, v0, :cond_21

    const/16 v0, 0x4007

    if-gt p1, v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GL_LIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLightPName(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_30

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_AMBIENT"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_DIFFUSE"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "GL_SPECULAR"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "GL_POSITION"

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "GL_SPOT_DIRECTION"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "GL_SPOT_EXPONENT"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "GL_SPOT_CUTOFF"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "GL_CONSTANT_ATTENUATION"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "GL_LINEAR_ATTENUATION"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "GL_QUADRATIC_ATTENUATION"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x1200
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
    .end packed-switch
.end method

.method private getLightParamCount(I)I
    .registers 4

    const/4 v1, 0x4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_12

    const/4 v0, 0x0

    return v0

    :pswitch_7
    return v1

    :pswitch_8
    return v1

    :pswitch_9
    return v1

    :pswitch_a
    return v1

    :pswitch_b
    const/4 v0, 0x3

    return v0

    :pswitch_d
    return v0

    :pswitch_e
    return v0

    :pswitch_f
    return v0

    :pswitch_10
    return v0

    :pswitch_11
    return v0

    :pswitch_data_12
    .packed-switch 0x1200
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getMaterialPName(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_20

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_AMBIENT"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_DIFFUSE"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_SPECULAR"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_EMISSION"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_SHININESS"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "GL_AMBIENT_AND_DIFFUSE"

    return-object v0

    :sswitch_data_20
    .sparse-switch
        0x1200 -> :sswitch_8
        0x1201 -> :sswitch_c
        0x1202 -> :sswitch_10
        0x1600 -> :sswitch_14
        0x1601 -> :sswitch_18
        0x1602 -> :sswitch_1c
    .end sparse-switch
.end method

.method private getMaterialParamCount(I)I
    .registers 3

    const/4 v0, 0x4

    sparse-switch p1, :sswitch_data_e

    const/4 v0, 0x0

    return v0

    :sswitch_6
    return v0

    :sswitch_7
    return v0

    :sswitch_8
    return v0

    :sswitch_9
    return v0

    :sswitch_a
    const/4 v0, 0x1

    return v0

    :sswitch_c
    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x1200 -> :sswitch_6
        0x1201 -> :sswitch_7
        0x1202 -> :sswitch_8
        0x1600 -> :sswitch_9
        0x1601 -> :sswitch_a
        0x1602 -> :sswitch_c
    .end sparse-switch
.end method

.method private getMatrixMode(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_14

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_MODELVIEW"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_PROJECTION"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "GL_TEXTURE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1700
        :pswitch_8
        :pswitch_c
        :pswitch_10
    .end packed-switch
.end method

.method private getPointerTypeName(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_1c

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_BYTE"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_UNSIGNED_BYTE"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_SHORT"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_FIXED"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_FLOAT"

    return-object v0

    :sswitch_data_1c
    .sparse-switch
        0x1400 -> :sswitch_8
        0x1401 -> :sswitch_c
        0x1402 -> :sswitch_10
        0x1406 -> :sswitch_18
        0x140c -> :sswitch_14
    .end sparse-switch
.end method

.method private getShadeModel(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_10

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_FLAT"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_SMOOTH"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x1d00
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private getTextureEnvPName(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_10

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_TEXTURE_ENV_MODE"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "GL_TEXTURE_ENV_COLOR"

    return-object v0

    :pswitch_data_10
    .packed-switch 0x2200
        :pswitch_8
        :pswitch_c
    .end packed-switch
.end method

.method private getTextureEnvParamCount(I)I
    .registers 3

    packed-switch p1, :pswitch_data_a

    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2200
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private getTextureEnvParamName(F)Ljava/lang/String;
    .registers 4

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_26

    sparse-switch v0, :sswitch_data_2c

    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_e
    const-string/jumbo v1, "GL_REPLACE"

    return-object v1

    :sswitch_12
    const-string/jumbo v1, "GL_MODULATE"

    return-object v1

    :sswitch_16
    const-string/jumbo v1, "GL_DECAL"

    return-object v1

    :sswitch_1a
    const-string/jumbo v1, "GL_BLEND"

    return-object v1

    :sswitch_1e
    const-string/jumbo v1, "GL_ADD"

    return-object v1

    :sswitch_22
    const-string/jumbo v1, "GL_COMBINE"

    return-object v1

    :cond_26
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_2c
    .sparse-switch
        0x104 -> :sswitch_1e
        0xbe2 -> :sswitch_1a
        0x1e01 -> :sswitch_e
        0x2100 -> :sswitch_12
        0x2101 -> :sswitch_16
        0x8570 -> :sswitch_22
    .end sparse-switch
.end method

.method private getTextureEnvTarget(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_c

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_TEXTURE_ENV"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x2300
        :pswitch_8
    .end packed-switch
.end method

.method private getTexturePName(I)Ljava/lang/String;
    .registers 3

    sparse-switch p1, :sswitch_data_20

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_8
    const-string/jumbo v0, "GL_TEXTURE_MAG_FILTER"

    return-object v0

    :sswitch_c
    const-string/jumbo v0, "GL_TEXTURE_MIN_FILTER"

    return-object v0

    :sswitch_10
    const-string/jumbo v0, "GL_TEXTURE_WRAP_S"

    return-object v0

    :sswitch_14
    const-string/jumbo v0, "GL_TEXTURE_WRAP_T"

    return-object v0

    :sswitch_18
    const-string/jumbo v0, "GL_GENERATE_MIPMAP"

    return-object v0

    :sswitch_1c
    const-string/jumbo v0, "GL_TEXTURE_CROP_RECT_OES"

    return-object v0

    :sswitch_data_20
    .sparse-switch
        0x2800 -> :sswitch_8
        0x2801 -> :sswitch_c
        0x2802 -> :sswitch_10
        0x2803 -> :sswitch_14
        0x8191 -> :sswitch_18
        0x8b9d -> :sswitch_1c
    .end sparse-switch
.end method

.method private getTextureParamName(F)Ljava/lang/String;
    .registers 4

    float-to-int v0, p1

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2e

    sparse-switch v0, :sswitch_data_34

    invoke-static {v0}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_e
    const-string/jumbo v1, "GL_CLAMP_TO_EDGE"

    return-object v1

    :sswitch_12
    const-string/jumbo v1, "GL_REPEAT"

    return-object v1

    :sswitch_16
    const-string/jumbo v1, "GL_NEAREST"

    return-object v1

    :sswitch_1a
    const-string/jumbo v1, "GL_LINEAR"

    return-object v1

    :sswitch_1e
    const-string/jumbo v1, "GL_NEAREST_MIPMAP_NEAREST"

    return-object v1

    :sswitch_22
    const-string/jumbo v1, "GL_LINEAR_MIPMAP_NEAREST"

    return-object v1

    :sswitch_26
    const-string/jumbo v1, "GL_NEAREST_MIPMAP_LINEAR"

    return-object v1

    :sswitch_2a
    const-string/jumbo v1, "GL_LINEAR_MIPMAP_LINEAR"

    return-object v1

    :cond_2e
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_34
    .sparse-switch
        0x2600 -> :sswitch_16
        0x2601 -> :sswitch_1a
        0x2700 -> :sswitch_1e
        0x2701 -> :sswitch_22
        0x2702 -> :sswitch_26
        0x2703 -> :sswitch_2a
        0x2901 -> :sswitch_12
        0x812f -> :sswitch_e
    .end sparse-switch
.end method

.method private getTextureTarget(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_c

    invoke-static {p1}, Landroid/opengl/GLLogWrapper;->getHex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "GL_TEXTURE_2D"

    return-object v0

    :pswitch_data_c
    .packed-switch 0xde1
        :pswitch_8
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mLog:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private logLine(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private returns(I)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    return-void
.end method

.method private returns(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ") returns "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->flush()V

    return-void
.end method

.method private startLogIndices()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->bindArrays()V

    return-void
.end method

.method private toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;
    .registers 27

    const/4 v14, 0x0

    if-gez p1, :cond_39

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/ByteBuffer;

    move/from16 v21, v0

    if-eqz v21, :cond_4b

    move-object/from16 v6, p2

    check-cast v6, Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v13

    if-eqz v4, :cond_1c

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v21

    sub-int p1, v21, v13

    :cond_1c
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    const/4 v5, 0x0

    :goto_29
    move/from16 v0, p1

    if-ge v5, v0, :cond_3b

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_39
    const/4 v4, 0x0

    goto :goto_4

    :cond_3b
    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_3e
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v14

    :cond_4b
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/CharBuffer;

    move/from16 v21, v0

    if-eqz v21, :cond_8c

    move-object/from16 v7, p2

    check-cast v7, Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->position()I

    move-result v13

    if-eqz v4, :cond_65

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->limit()I

    move-result v21

    sub-int v21, v21, v13

    mul-int/lit8 p1, v21, 0x2

    :cond_65
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v15

    const/4 v5, 0x0

    :goto_76
    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    if-ge v5, v0, :cond_88

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->get()C

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    :cond_88
    invoke-virtual {v7, v13}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3e

    :cond_8c
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/ShortBuffer;

    move/from16 v21, v0

    if-eqz v21, :cond_cc

    move-object/from16 v12, p2

    check-cast v12, Ljava/nio/ShortBuffer;

    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->position()I

    move-result v13

    if-eqz v4, :cond_a6

    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->limit()I

    move-result v21

    sub-int v21, v21, v13

    mul-int/lit8 p1, v21, 0x2

    :cond_a6
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v20

    const/4 v5, 0x0

    :goto_b7
    div-int/lit8 v21, p1, 0x2

    move/from16 v0, v21

    if-ge v5, v0, :cond_c7

    invoke-virtual {v12}, Ljava/nio/ShortBuffer;->get()S

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_b7

    :cond_c7
    invoke-virtual {v12, v13}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3e

    :cond_cc
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/IntBuffer;

    move/from16 v21, v0

    if-eqz v21, :cond_110

    move-object/from16 v10, p2

    check-cast v10, Ljava/nio/IntBuffer;

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->position()I

    move-result v13

    if-eqz v4, :cond_e6

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->limit()I

    move-result v21

    sub-int v21, v21, v13

    mul-int/lit8 p1, v21, 0x4

    :cond_e6
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v18

    const/4 v5, 0x0

    :goto_f7
    div-int/lit8 v21, p1, 0x4

    move/from16 v0, v21

    if-ge v5, v0, :cond_10b

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->get()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_f7

    :cond_10b
    invoke-virtual {v10, v13}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3e

    :cond_110
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/FloatBuffer;

    move/from16 v21, v0

    if-eqz v21, :cond_154

    move-object/from16 v9, p2

    check-cast v9, Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->position()I

    move-result v13

    if-eqz v4, :cond_12a

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->limit()I

    move-result v21

    sub-int v21, v21, v13

    mul-int/lit8 p1, v21, 0x4

    :cond_12a
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v17

    const/4 v5, 0x0

    :goto_13b
    div-int/lit8 v21, p1, 0x4

    move/from16 v0, v21

    if-ge v5, v0, :cond_14f

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->get()F

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_13b

    :cond_14f
    invoke-virtual {v9, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3e

    :cond_154
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/DoubleBuffer;

    move/from16 v21, v0

    if-eqz v21, :cond_198

    move-object/from16 v8, p2

    check-cast v8, Ljava/nio/DoubleBuffer;

    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->position()I

    move-result v13

    if-eqz v4, :cond_16e

    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->limit()I

    move-result v21

    sub-int v21, v21, v13

    mul-int/lit8 p1, v21, 0x8

    :cond_16e
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v16

    const/4 v5, 0x0

    :goto_17f
    div-int/lit8 v21, p1, 0x8

    move/from16 v0, v21

    if-ge v5, v0, :cond_193

    invoke-virtual {v8}, Ljava/nio/DoubleBuffer;->get()D

    move-result-wide v22

    move-object/from16 v0, v16

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_17f

    :cond_193
    invoke-virtual {v8, v13}, Ljava/nio/DoubleBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3e

    :cond_198
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/nio/LongBuffer;

    move/from16 v21, v0

    if-eqz v21, :cond_1dc

    move-object/from16 v11, p2

    check-cast v11, Ljava/nio/LongBuffer;

    invoke-virtual {v11}, Ljava/nio/LongBuffer;->position()I

    move-result v13

    if-eqz v4, :cond_1b2

    invoke-virtual {v11}, Ljava/nio/LongBuffer;->limit()I

    move-result v21

    sub-int v21, v21, v13

    mul-int/lit8 p1, v21, 0x8

    :cond_1b2
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual {v11}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v19

    const/4 v5, 0x0

    :goto_1c3
    div-int/lit8 v21, p1, 0x8

    move/from16 v0, v21

    if-ge v5, v0, :cond_1d7

    invoke-virtual {v11}, Ljava/nio/LongBuffer;->get()J

    move-result-wide v22

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c3

    :cond_1d7
    invoke-virtual {v11, v13}, Ljava/nio/LongBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_3e

    :cond_1dc
    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Unimplemented Buffer subclass."

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private toCharIndices(IILjava/nio/Buffer;)[C
    .registers 12

    new-array v6, p1, [C

    packed-switch p2, :pswitch_data_42

    :cond_5
    :goto_5
    :pswitch_5
    return-object v6

    :pswitch_6
    invoke-direct {p0, p1, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    const/4 v3, 0x0

    :goto_13
    if-ge v3, p1, :cond_5

    add-int v7, v4, v3

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    aput-char v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :pswitch_21
    instance-of v7, p3, Ljava/nio/CharBuffer;

    if-eqz v7, :cond_37

    move-object v2, p3

    check-cast v2, Ljava/nio/CharBuffer;

    :goto_28
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v6}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5

    :cond_37
    mul-int/lit8 v7, p1, 0x2

    invoke-direct {p0, v7, p3}, Landroid/opengl/GLLogWrapper;->toByteBuffer(ILjava/nio/Buffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    goto :goto_28

    :pswitch_data_42
    .packed-switch 0x1401
        :pswitch_6
        :pswitch_5
        :pswitch_21
    .end packed-switch
.end method

.method private toString(IILjava/nio/IntBuffer;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_2e

    const-string/jumbo v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_2e
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(II[II)Ljava/lang/String;
    .registers 11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p3

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_3a

    add-int v3, p4, v2

    const-string/jumbo v4, " ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_26

    if-lt v3, v0, :cond_34

    :cond_26
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_34
    aget v4, p3, v3

    invoke-direct {p0, v1, v4, p2}, Landroid/opengl/GLLogWrapper;->formattedAppend(Ljava/lang/StringBuilder;II)V

    goto :goto_2c

    :cond_3a
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(ILjava/nio/FloatBuffer;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_30

    const-string/jumbo v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_30
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(ILjava/nio/ShortBuffer;)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p1, :cond_30

    const-string/jumbo v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_30
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString(I[FI)Ljava/lang/String;
    .registers 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_3a

    add-int v3, p3, v2

    const-string/jumbo v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_26

    if-lt v3, v0, :cond_34

    :cond_26
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_34
    aget v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_3a
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private toString(I[SI)Ljava/lang/String;
    .registers 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    const/4 v2, 0x0

    :goto_d
    if-ge v2, p1, :cond_3a

    add-int v3, p3, v2

    const-string/jumbo v4, " ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v3, :cond_26

    if-lt v3, v0, :cond_34

    :cond_26
    const-string/jumbo v4, "out of bounds"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_34
    aget-short v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_3a
    const-string/jumbo v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private unbindArrays()V
    .registers 2

    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_9
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_12
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_1b
    iget-boolean v0, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    invoke-virtual {v0}, Landroid/opengl/GLLogWrapper$PointerInfo;->unbindByteBuffer()V

    :cond_24
    return-void
.end method


# virtual methods
.method public glActiveTexture(I)V
    .registers 3

    const-string/jumbo v0, "glActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFunc(IF)V
    .registers 4

    const-string/jumbo v0, "glAlphaFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glAlphaFuncx(II)V
    .registers 4

    const-string/jumbo v0, "glAlphaFuncx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindBuffer(II)V
    .registers 4

    const-string/jumbo v0, "glBindBuffer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "buffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindFramebufferOES(II)V
    .registers 4

    const-string/jumbo v0, "glBindFramebufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "framebuffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindRenderbufferOES(II)V
    .registers 4

    const-string/jumbo v0, "glBindRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBindTexture(II)V
    .registers 5

    const-string/jumbo v0, "glBindTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquation(I)V
    .registers 3

    const-string/jumbo v0, "glBlendEquation"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquation(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendEquationSeparate(II)V
    .registers 4

    const-string/jumbo v0, "glBlendEquationSeparate"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "modeRGB"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "modeAlpha"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendEquationSeparate(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendFunc(II)V
    .registers 5

    const-string/jumbo v0, "glBlendFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "sfactor"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "dfactor"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getFactor(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBlendFuncSeparate(IIII)V
    .registers 6

    const-string/jumbo v0, "glBlendFuncSeparate"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "srcRGB"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "dstRGB"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "srcAlpha"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "dstAlpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBlendFuncSeparate(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .registers 7

    const-string/jumbo v0, "glBufferData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "data"

    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "usage"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .registers 7

    const-string/jumbo v0, "glBufferSubData"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "data"

    invoke-virtual {p4}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferSubData(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCheckFramebufferStatusOES(I)I
    .registers 4

    const-string/jumbo v1, "glCheckFramebufferStatusOES"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glClear(I)V
    .registers 4

    const-string/jumbo v0, "glClear"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mask"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClearBufferMask(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColor(FFFF)V
    .registers 6

    const-string/jumbo v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearColorx(IIII)V
    .registers 6

    const-string/jumbo v0, "glClearColor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthf(F)V
    .registers 3

    const-string/jumbo v0, "glClearDepthf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearDepthx(I)V
    .registers 3

    const-string/jumbo v0, "glClearDepthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "depth"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClearStencil(I)V
    .registers 3

    const-string/jumbo v0, "glClearStencil"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClientActiveTexture(I)V
    .registers 3

    const-string/jumbo v0, "glClientActiveTexture"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .registers 5

    const-string/jumbo v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanef(I[FI)V
    .registers 6

    const-string/jumbo v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glClipPlanex(I[II)V
    .registers 6

    const-string/jumbo v0, "glClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "plane"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "equation"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4f(FFFF)V
    .registers 6

    const-string/jumbo v0, "glColor4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4ub(BBBB)V
    .registers 6

    const-string/jumbo v0, "glColor4ub"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4ub(BBBB)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColor4x(IIII)V
    .registers 6

    const-string/jumbo v0, "glColor4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorMask(ZZZZ)V
    .registers 6

    const-string/jumbo v0, "glColorMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "red"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string/jumbo v0, "green"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string/jumbo v0, "blue"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    const-string/jumbo v0, "alpha"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIII)V
    .registers 6

    const-string/jumbo v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .registers 11

    const-string/jumbo v0, "glColorPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mColorPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .registers 19

    const-string/jumbo v1, "glCompressedTexImage2D"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "level"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "internalformat"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "border"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "imageSize"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "data"

    invoke-virtual/range {p8 .. p8}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 21

    const-string/jumbo v1, "glCompressedTexSubImage2D"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "level"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "imageSize"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "data"

    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .registers 19

    const-string/jumbo v1, "glCopyTexImage2D"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "level"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "internalformat"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "x"

    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "border"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .registers 19

    const-string/jumbo v1, "glCopyTexSubImage2D"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "level"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "x"

    invoke-direct {p0, v1, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "y"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCullFace(I)V
    .registers 3

    const-string/jumbo v0, "glCullFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .registers 3

    const-string/jumbo v0, "glCurrentPaletteMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "matrixpaletteindex"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "buffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteBuffers(I[II)V
    .registers 6

    const-string/jumbo v0, "glDeleteBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glDeleteFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "framebuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteFramebuffersOES(I[II)V
    .registers 6

    const-string/jumbo v0, "glDeleteFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "framebuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glDeleteRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteRenderbuffersOES(I[II)V
    .registers 6

    const-string/jumbo v0, "glDeleteRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteRenderbuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .registers 4

    const-string/jumbo v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDeleteTextures(I[II)V
    .registers 5

    const-string/jumbo v0, "glDeleteTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthFunc(I)V
    .registers 3

    const-string/jumbo v0, "glDepthFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthMask(Z)V
    .registers 3

    const-string/jumbo v0, "glDepthMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "flag"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangef(FF)V
    .registers 4

    const-string/jumbo v0, "glDepthRangef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDepthRangex(II)V
    .registers 4

    const-string/jumbo v0, "glDepthRangex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "far"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisable(I)V
    .registers 4

    const-string/jumbo v0, "glDisable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDisableClientState(I)V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "glDisableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    packed-switch p1, :pswitch_data_2c

    :goto_17
    :pswitch_17
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void

    :pswitch_20
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_17

    :pswitch_23
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_17

    :pswitch_26
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_17

    :pswitch_29
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_17

    :pswitch_data_2c
    .packed-switch 0x8074
        :pswitch_29
        :pswitch_23
        :pswitch_20
        :pswitch_17
        :pswitch_26
    .end packed-switch
.end method

.method public glDrawArrays(III)V
    .registers 7

    const-string/jumbo v1, "glDrawArrays"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "mode"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "first"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "count"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p3, :cond_28

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    invoke-direct {p0, v1, v0, v2}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIII)V
    .registers 6

    const-string/jumbo v0, "glDrawElements"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "count"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .registers 10

    const-string/jumbo v3, "glDrawElements"

    invoke-direct {p0, v3}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v3, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getBeginMode(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "count"

    invoke-direct {p0, v3, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v3, "type"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getIndexType(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->toCharIndices(IILjava/nio/Buffer;)[C

    move-result-object v1

    array-length v2, v1

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->startLogIndices()V

    const/4 v0, 0x0

    :goto_29
    if-ge v0, v2, :cond_35

    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mStringBuilder:Ljava/lang/StringBuilder;

    aget-char v4, v1, v0

    invoke-direct {p0, v3, v0, v4}, Landroid/opengl/GLLogWrapper;->doElement(Ljava/lang/StringBuilder;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_35
    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->endLogIndices()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v3, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v3, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .registers 12

    const-string/jumbo v0, "glDrawTexfOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .registers 4

    const-string/jumbo v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .registers 5

    const-string/jumbo v0, "glDrawTexfvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .registers 12

    const-string/jumbo v0, "glDrawTexiOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .registers 4

    const-string/jumbo v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexivOES([II)V
    .registers 5

    const-string/jumbo v0, "glDrawTexivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .registers 12

    const-string/jumbo v0, "glDrawTexsOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .registers 4

    const-string/jumbo v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/ShortBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .registers 5

    const-string/jumbo v0, "glDrawTexsvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[SI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .registers 12

    const-string/jumbo v0, "glDrawTexxOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .registers 4

    const-string/jumbo v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glDrawTexxvOES([II)V
    .registers 5

    const-string/jumbo v0, "glDrawTexxvOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coords"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnable(I)V
    .registers 4

    const-string/jumbo v0, "glEnable"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "cap"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getCap(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glEnableClientState(I)V
    .registers 5

    const/4 v2, 0x1

    const-string/jumbo v0, "glEnableClientState"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "array"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getClientState(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    packed-switch p1, :pswitch_data_2c

    :goto_17
    :pswitch_17
    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void

    :pswitch_20
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mColorArrayEnabled:Z

    goto :goto_17

    :pswitch_23
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mNormalArrayEnabled:Z

    goto :goto_17

    :pswitch_26
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mTextureCoordArrayEnabled:Z

    goto :goto_17

    :pswitch_29
    iput-boolean v2, p0, Landroid/opengl/GLLogWrapper;->mVertexArrayEnabled:Z

    goto :goto_17

    :pswitch_data_2c
    .packed-switch 0x8074
        :pswitch_29
        :pswitch_23
        :pswitch_20
        :pswitch_17
        :pswitch_26
    .end packed-switch
.end method

.method public glFinish()V
    .registers 2

    const-string/jumbo v0, "glFinish"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFlush()V
    .registers 2

    const-string/jumbo v0, "glFlush"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogf(IF)V
    .registers 4

    const-string/jumbo v0, "glFogf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .registers 5

    const-string/jumbo v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogfv(I[FI)V
    .registers 6

    const-string/jumbo v0, "glFogfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogx(II)V
    .registers 5

    const-string/jumbo v0, "glFogx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFogxv(I[II)V
    .registers 6

    const-string/jumbo v0, "glFogxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFogParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferRenderbufferOES(IIII)V
    .registers 6

    const-string/jumbo v0, "glFramebufferRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffertarget"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFramebufferTexture2DOES(IIIII)V
    .registers 12

    const-string/jumbo v0, "glFramebufferTexture2DOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textarget"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "texture"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "level"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrontFace(I)V
    .registers 3

    const-string/jumbo v0, "glFrontFace"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .registers 14

    const-string/jumbo v0, "glFrustumf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glFrustumx(IIIIII)V
    .registers 14

    const-string/jumbo v0, "glFrustumx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "buffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenBuffers(I[II)V
    .registers 6

    const-string/jumbo v0, "glGenBuffers"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "buffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGenFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "framebuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenFramebuffersOES(I[II)V
    .registers 6

    const-string/jumbo v0, "glGenFramebuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "framebuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGenRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenRenderbuffersOES(I[II)V
    .registers 6

    const-string/jumbo v0, "glGenRenderbuffersOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "renderbuffers"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenTextures(I[II)V
    .registers 6

    const-string/jumbo v0, "glGenTextures"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "n"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "textures"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGenerateMipmapOES(I)V
    .registers 3

    const-string/jumbo v0, "glGenerateMipmapOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenerateMipmapOES(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBooleanv(I[ZI)V
    .registers 6

    const-string/jumbo v0, "glGetBooleanv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBooleanv(I[ZI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetBufferParameteriv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetBufferParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetBufferParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "eqn"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanef(I[FI)V
    .registers 6

    const-string/jumbo v0, "glGetClipPlanef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanef(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "eqn"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetClipPlanex(I[II)V
    .registers 6

    const-string/jumbo v0, "glGetClipPlanex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "eqn"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetClipPlanex(I[II)V

    return-void
.end method

.method public glGetError()I
    .registers 3

    const-string/jumbo v1, "glGetError"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(I)V

    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFixedv(I[II)V
    .registers 6

    const-string/jumbo v0, "glGetFixedv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFixedv(I[II)V

    return-void
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFloatv(I[FI)V
    .registers 6

    const-string/jumbo v0, "glGetFloatv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetFloatv(I[FI)V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V
    .registers 7

    const-string/jumbo v0, "glGetFramebufferAttachmentParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p4}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(IIILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetFramebufferAttachmentParameterivOES(III[II)V
    .registers 12

    const-string/jumbo v0, "glGetFramebufferAttachmentParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "attachment"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetFramebufferAttachmentParameterivOES(III[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetIntegerv(I[II)V
    .registers 6

    const-string/jumbo v0, "glGetIntegerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateSize(I)I

    move-result v0

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getIntegerStateFormat(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glGetLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetLightxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glGetMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetMaterialxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .registers 5

    const-string/jumbo v0, "glGetPointerv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glGetPointerv(I[Ljava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetRenderbufferParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetRenderbufferParameterivOES(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetRenderbufferParameterivOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetRenderbufferParameterivOES(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .registers 4

    const-string/jumbo v1, "glGetString"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "name"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnviv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexEnvxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "env"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glGetTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGeniv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGeniv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexGenxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGetTexGenxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glGetTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameteriv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glGetTexParameterxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glGetTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glGetTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glHint(II)V
    .registers 5

    const-string/jumbo v0, "glHint"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getHintTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getHintMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glIsBuffer(I)Z
    .registers 4

    const-string/jumbo v1, "glIsBuffer"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "buffer"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsBuffer(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glIsEnabled(I)Z
    .registers 4

    const-string/jumbo v1, "glIsEnabled"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "cap"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsEnabled(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glIsFramebufferOES(I)Z
    .registers 4

    const-string/jumbo v1, "glIsFramebufferOES"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "framebuffer"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsFramebufferOES(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glIsRenderbufferOES(I)Z
    .registers 3

    const-string/jumbo v0, "glIsRenderbufferOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "renderbuffer"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glIsRenderbufferOES(I)Z

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    const/4 v0, 0x0

    return v0
.end method

.method public glIsTexture(I)Z
    .registers 4

    const-string/jumbo v1, "glIsTexture"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "texture"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glIsTexture(I)Z

    move-result v0

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glLightModelf(IF)V
    .registers 5

    const-string/jumbo v0, "glLightModelf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .registers 5

    const-string/jumbo v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelfv(I[FI)V
    .registers 6

    const-string/jumbo v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelx(II)V
    .registers 5

    const-string/jumbo v0, "glLightModelx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glLightModelfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightModelxv(I[II)V
    .registers 6

    const-string/jumbo v0, "glLightModelxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightModelParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightf(IIF)V
    .registers 6

    const-string/jumbo v0, "glLightf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glLightfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightx(III)V
    .registers 6

    const-string/jumbo v0, "glLightx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLightxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glLightxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "light"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getLightName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getLightParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidth(F)V
    .registers 3

    const-string/jumbo v0, "glLineWidth"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLineWidthx(I)V
    .registers 3

    const-string/jumbo v0, "glLineWidthx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadIdentity()V
    .registers 2

    const-string/jumbo v0, "glLoadIdentity"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .registers 4

    const-string/jumbo v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixf([FI)V
    .registers 5

    const-string/jumbo v0, "glLoadMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .registers 4

    const-string/jumbo v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadMatrixx([II)V
    .registers 5

    const-string/jumbo v0, "glLoadMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .registers 2

    const-string/jumbo v0, "glLoadPaletteFromModelViewMatrixOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glLogicOp(I)V
    .registers 3

    const-string/jumbo v0, "glLogicOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "opcode"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialf(IIF)V
    .registers 6

    const-string/jumbo v0, "glMaterialf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glMaterialfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialx(III)V
    .registers 6

    const-string/jumbo v0, "glMaterialx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMaterialxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glMaterialxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "face"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getFaceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getMaterialParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .registers 6

    const-string/jumbo v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .registers 6

    const-string/jumbo v0, "glMatrixIndexPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMatrixMode(I)V
    .registers 4

    const-string/jumbo v0, "glMatrixMode"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getMatrixMode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .registers 4

    const-string/jumbo v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixf([FI)V
    .registers 5

    const-string/jumbo v0, "glMultMatrixf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .registers 4

    const-string/jumbo v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultMatrixx([II)V
    .registers 5

    const-string/jumbo v0, "glMultMatrixx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "m"

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .registers 12

    const-string/jumbo v0, "glMultiTexCoord4f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .registers 12

    const-string/jumbo v0, "glMultiTexCoord4x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "s"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "t"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "r"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "q"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3f(FFF)V
    .registers 5

    const-string/jumbo v0, "glNormal3f"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormal3x(III)V
    .registers 5

    const-string/jumbo v0, "glNormal3x"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "nx"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ny"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "nz"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glNormalPointer(III)V
    .registers 5

    const-string/jumbo v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .registers 10

    const-string/jumbo v0, "glNormalPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pointer"

    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    const/4 v2, 0x3

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mNormalPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthof(FFFFFF)V
    .registers 14

    const-string/jumbo v0, "glOrthof"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glOrthox(IIIIII)V
    .registers 14

    const-string/jumbo v0, "glOrthox"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "left"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "right"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "bottom"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "top"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "near"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "far"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPixelStorei(II)V
    .registers 4

    const-string/jumbo v0, "glPixelStorei"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterf(IF)V
    .registers 4

    const-string/jumbo v0, "glPointParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterf(IF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .registers 5

    const-string/jumbo v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterfv(I[FI)V
    .registers 6

    const-string/jumbo v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterfv(I[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterx(II)V
    .registers 4

    const-string/jumbo v0, "glPointParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .registers 5

    const-string/jumbo v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointParameterxv(I[II)V
    .registers 6

    const-string/jumbo v0, "glPointParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointParameterxv(I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSize(F)V
    .registers 3

    const-string/jumbo v0, "glPointSize"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .registers 6

    const-string/jumbo v0, "glPointSizePointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glPointSizePointerOES(IILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPointSizex(I)V
    .registers 3

    const-string/jumbo v0, "glPointSizex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffset(FF)V
    .registers 4

    const-string/jumbo v0, "glPolygonOffset"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPolygonOffsetx(II)V
    .registers 4

    const-string/jumbo v0, "glPolygonOffsetx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "factor"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "units"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPopMatrix()V
    .registers 2

    const-string/jumbo v0, "glPopMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glPushMatrix()V
    .registers 2

    const-string/jumbo v0, "glPushMatrix"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .registers 7

    const/16 v3, 0x10

    const-string/jumbo v1, "glQueryMatrixxOES"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "mantissa"

    invoke-virtual {p1}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "exponent"

    invoke-virtual {p2}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v3, v1, p1}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, p2}, Landroid/opengl/GLLogWrapper;->toString(IILjava/nio/IntBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .registers 9

    const/16 v3, 0x10

    const-string/jumbo v1, "glQueryMatrixxOES"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "mantissa"

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "exponent"

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, v3, v1, p1, p2}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v3, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->toString(II[II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->returns(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .registers 16

    const-string/jumbo v0, "glReadPixels"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "format"

    invoke-direct {p0, v0, p5}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p6}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pixels"

    invoke-virtual {p7}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRenderbufferStorageOES(IIII)V
    .registers 6

    const-string/jumbo v0, "glRenderbufferStorageOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "internalformat"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatef(FFFF)V
    .registers 6

    const-string/jumbo v0, "glRotatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glRotatex(IIII)V
    .registers 6

    const-string/jumbo v0, "glRotatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "angle"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoverage(FZ)V
    .registers 4

    const-string/jumbo v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .registers 4

    const-string/jumbo v0, "glSampleCoveragex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "invert"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalef(FFF)V
    .registers 5

    const-string/jumbo v0, "glScalef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScalex(III)V
    .registers 5

    const-string/jumbo v0, "glScalex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glScissor(IIII)V
    .registers 6

    const-string/jumbo v0, "glScissor"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glShadeModel(I)V
    .registers 4

    const-string/jumbo v0, "glShadeModel"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getShadeModel(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilFunc(III)V
    .registers 5

    const-string/jumbo v0, "glStencilFunc"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "func"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "ref"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "mask"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilMask(I)V
    .registers 3

    const-string/jumbo v0, "glStencilMask"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "mask"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glStencilOp(III)V
    .registers 5

    const-string/jumbo v0, "glStencilOp"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "fail"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "zfail"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "zpass"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .registers 6

    const-string/jumbo v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .registers 11

    const-string/jumbo v0, "glTexCoordPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mTexCoordPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvf(IIF)V
    .registers 6

    const-string/jumbo v0, "glTexEnvf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glTexEnvfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[FI)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvi(III)V
    .registers 5

    const-string/jumbo v0, "glTexEnvi"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvi(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnviv(II[II)V
    .registers 7

    const-string/jumbo v0, "glTexEnviv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnviv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvx(III)V
    .registers 6

    const-string/jumbo v0, "glTexEnvx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexEnvxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glTexEnvxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureEnvTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvPName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTextureEnvParamCount(I)I

    move-result v1

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenf(IIF)V
    .registers 5

    const-string/jumbo v0, "glTexGenf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glTexGenfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeni(III)V
    .registers 5

    const-string/jumbo v0, "glTexGeni"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeni(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGeniv(II[II)V
    .registers 7

    const-string/jumbo v0, "glTexGeniv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGeniv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenx(III)V
    .registers 5

    const-string/jumbo v0, "glTexGenx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexGenxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glTexGenxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "coord"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11ExtensionPack:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glTexGenxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 21

    const-string/jumbo v1, "glTexImage2D"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct {p0, v1, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "level"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "internalformat"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "border"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterf(IIF)V
    .registers 6

    const-string/jumbo v0, "glTexParameterf"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, p3}, Landroid/opengl/GLLogWrapper;->getTextureParamName(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/FloatBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(IILjava/nio/FloatBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterfv(II[FI)V
    .registers 7

    const-string/jumbo v0, "glTexParameterfv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteri(III)V
    .registers 5

    const-string/jumbo v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;ILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameteriv(II[II)V
    .registers 7

    const-string/jumbo v0, "glTexParameteriv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterx(III)V
    .registers 6

    const-string/jumbo v0, "glTexParameterx"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, p2}, Landroid/opengl/GLLogWrapper;->getTexturePName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "param"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .registers 6

    const-string/jumbo v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/nio/IntBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(IILjava/nio/IntBuffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexParameterxv(II[II)V
    .registers 7

    const-string/jumbo v0, "glTexParameterxv"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "target"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "pname"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "params"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterxv(II[II)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .registers 21

    const-string/jumbo v1, "glTexSubImage2D"

    invoke-direct {p0, v1}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v1, "target"

    invoke-direct {p0, p1}, Landroid/opengl/GLLogWrapper;->getTextureTarget(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "level"

    invoke-direct {p0, v1, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "xoffset"

    invoke-direct {p0, v1, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "yoffset"

    invoke-direct {p0, v1, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "width"

    move/from16 v0, p5

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    move/from16 v0, p6

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "format"

    move/from16 v0, p7

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    move/from16 v0, p8

    invoke-direct {p0, v1, v0}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v1, "pixels"

    invoke-virtual/range {p9 .. p9}, Ljava/nio/Buffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v1, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatef(FFF)V
    .registers 5

    const-string/jumbo v0, "glTranslatef"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;F)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glTranslatex(III)V
    .registers 5

    const-string/jumbo v0, "glTranslatex"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "z"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glVertexPointer(IIII)V
    .registers 6

    const-string/jumbo v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .registers 11

    const-string/jumbo v0, "glVertexPointer"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    new-instance v0, Landroid/opengl/GLLogWrapper$PointerInfo;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/opengl/GLLogWrapper$PointerInfo;-><init>(Landroid/opengl/GLLogWrapper;IIILjava/nio/Buffer;)V

    iput-object v0, p0, Landroid/opengl/GLLogWrapper;->mVertexPointer:Landroid/opengl/GLLogWrapper$PointerInfo;

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glViewport(IIII)V
    .registers 6

    const-string/jumbo v0, "glViewport"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "y"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "width"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "height"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .registers 6

    const-string/jumbo v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    const-string/jumbo v0, "size"

    invoke-direct {p0, v0, p1}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "type"

    invoke-direct {p0, v0, p2}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "stride"

    invoke-direct {p0, v0, p3}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    const-string/jumbo v0, "offset"

    invoke-direct {p0, v0, p4}, Landroid/opengl/GLLogWrapper;->arg(Ljava/lang/String;I)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .registers 6

    const-string/jumbo v0, "glWeightPointerOES"

    invoke-direct {p0, v0}, Landroid/opengl/GLLogWrapper;->begin(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/opengl/GLLogWrapper;->argPointer(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->end()V

    iget-object v0, p0, Landroid/opengl/GLLogWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIILjava/nio/Buffer;)V

    invoke-direct {p0}, Landroid/opengl/GLLogWrapper;->checkError()V

    return-void
.end method
