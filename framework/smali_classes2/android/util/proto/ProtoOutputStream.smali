.class public final Landroid/util/proto/ProtoOutputStream;
.super Ljava/lang/Object;
.source "ProtoOutputStream.java"


# static fields
.field public static final FIELD_COUNT_MASK:J = 0xf0000000000L

.field public static final FIELD_COUNT_PACKED:J = 0x50000000000L

.field public static final FIELD_COUNT_REPEATED:J = 0x20000000000L

.field public static final FIELD_COUNT_SHIFT:I = 0x28

.field public static final FIELD_COUNT_SINGLE:J = 0x10000000000L

.field public static final FIELD_COUNT_UNKNOWN:J = 0x0L

.field public static final FIELD_ID_MASK:I = -0x8

.field public static final FIELD_ID_SHIFT:I = 0x3

.field public static final FIELD_TYPE_BOOL:J = 0xd00000000L

.field public static final FIELD_TYPE_BYTES:J = 0xf00000000L

.field public static final FIELD_TYPE_DOUBLE:J = 0x100000000L

.field public static final FIELD_TYPE_ENUM:J = 0x1000000000L

.field public static final FIELD_TYPE_FIXED32:J = 0x900000000L

.field public static final FIELD_TYPE_FIXED64:J = 0xa00000000L

.field public static final FIELD_TYPE_FLOAT:J = 0x200000000L

.field public static final FIELD_TYPE_INT32:J = 0x300000000L

.field public static final FIELD_TYPE_INT64:J = 0x400000000L

.field public static final FIELD_TYPE_MASK:J = 0xff00000000L

.field private static final FIELD_TYPE_NAMES:[Ljava/lang/String;

.field public static final FIELD_TYPE_OBJECT:J = 0x1100000000L

.field public static final FIELD_TYPE_SFIXED32:J = 0xb00000000L

.field public static final FIELD_TYPE_SFIXED64:J = 0xc00000000L

.field public static final FIELD_TYPE_SHIFT:I = 0x20

.field public static final FIELD_TYPE_SINT32:J = 0x700000000L

.field public static final FIELD_TYPE_SINT64:J = 0x800000000L

.field public static final FIELD_TYPE_STRING:J = 0xe00000000L

.field public static final FIELD_TYPE_UINT32:J = 0x500000000L

.field public static final FIELD_TYPE_UINT64:J = 0x600000000L

.field public static final FIELD_TYPE_UNKNOWN:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "ProtoOutputStream"

.field public static final WIRE_TYPE_END_GROUP:I = 0x4

.field public static final WIRE_TYPE_FIXED32:I = 0x5

.field public static final WIRE_TYPE_FIXED64:I = 0x1

.field public static final WIRE_TYPE_LENGTH_DELIMITED:I = 0x2

.field public static final WIRE_TYPE_MASK:I = 0x7

.field public static final WIRE_TYPE_START_GROUP:I = 0x3

.field public static final WIRE_TYPE_VARINT:I


# instance fields
.field private mBuffer:Landroid/util/proto/EncodedBuffer;

.field private mCompacted:Z

.field private mCopyBegin:I

.field private mDepth:I

.field private mExpectedObjectToken:J

.field private mNextObjectId:I

.field private mStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Double"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Float"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Int32"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Int64"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "UInt32"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "UInt64"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "SInt32"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "SInt64"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Fixed32"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Fixed64"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "SFixed32"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "SFixed64"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bool"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "String"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Bytes"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Enum"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Object"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    new-instance v0, Landroid/util/proto/EncodedBuffer;

    invoke-direct {v0, p1}, Landroid/util/proto/EncodedBuffer;-><init>(I)V

    iput-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    iput-object p1, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    return-void
.end method

.method private assertNotCompacted()V
    .registers 3

    iget-boolean v0, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "write called after compact"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method public static checkFieldId(JJ)I
    .registers 18

    const-wide v12, 0xf0000000000L

    and-long v6, p0, v12

    const-wide v12, 0xff00000000L

    and-long v8, p0, v12

    const-wide v12, 0xf0000000000L

    and-long v2, p2, v12

    const-wide v12, 0xff00000000L

    and-long v4, p2, v12

    long-to-int v11, p0

    if-nez v11, :cond_49

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid proto field "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    long-to-int v13, p0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " fieldId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_49
    cmp-long v11, v8, v4

    if-nez v11, :cond_63

    cmp-long v11, v6, v2

    if-eqz v11, :cond_134

    const-wide v12, 0x50000000000L

    cmp-long v11, v6, v12

    if-nez v11, :cond_63

    const-wide v12, 0x20000000000L

    cmp-long v11, v2, v12

    if-eqz v11, :cond_134

    :cond_63
    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_e5

    if-eqz v0, :cond_e5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v12, 0x1100000000L

    cmp-long v11, v4, v12

    if-nez v11, :cond_d7

    const-string/jumbo v11, "start"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_83
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, " called for field "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v11, p0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v11, " which should be used with "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, 0x1100000000L

    cmp-long v11, v8, v12

    if-nez v11, :cond_de

    const-string/jumbo v11, "start"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v12, 0x50000000000L

    cmp-long v11, v6, v12

    if-nez v11, :cond_c8

    const-string/jumbo v11, " or writeRepeated"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c8
    const/16 v11, 0x2e

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_d7
    const-string/jumbo v11, "write"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_83

    :cond_de
    const-string/jumbo v11, "write"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b0

    :cond_e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v12, 0x1100000000L

    cmp-long v11, v4, v12

    if-nez v11, :cond_12d

    const-string/jumbo v11, "start"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f9
    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, " called with an invalid fieldId: 0x"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, ". The proto field ID might be "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v11, p0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x2e

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_12d
    const-string/jumbo v11, "write"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    :cond_134
    long-to-int v11, p0

    return v11
.end method

.method private compactIfNecessary()V
    .registers 5

    iget-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-nez v1, :cond_58

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to compact with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " missing calls to endObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2b
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->rewindRead()V

    invoke-direct {p0, v0}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    iget v1, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ge v1, v0, :cond_50

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    :cond_50
    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->startEditing()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    :cond_58
    return-void
.end method

.method private compactSizes(I)V
    .registers 13

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v3

    add-int v2, v3, p1

    :cond_8
    :goto_8
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v5

    if-ge v5, v2, :cond_c0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v4

    and-int/lit8 v6, v4, 0x7

    packed-switch v6, :pswitch_data_c2

    new-instance v7, Landroid/util/proto/ProtoParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "compactSizes Bad tag tag=0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " wireType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v7

    :goto_53
    :pswitch_53
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_8

    goto :goto_53

    :pswitch_5e
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_8

    :pswitch_66
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget v8, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v9

    iget v10, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/proto/EncodedBuffer;->writeFromThisBuffer(II)V

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v1

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v0

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v0}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    iput v7, p0, Landroid/util/proto/ProtoOutputStream;->mCopyBegin:I

    if-ltz v1, :cond_98

    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v7, v0}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_8

    :cond_98
    neg-int v7, v1

    invoke-direct {p0, v7}, Landroid/util/proto/ProtoOutputStream;->compactSizes(I)V

    goto/16 :goto_8

    :pswitch_9e
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "groups not supported at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_b8
    iget-object v7, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_8

    :cond_c0
    return-void

    nop

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_53
        :pswitch_5e
        :pswitch_66
        :pswitch_9e
        :pswitch_9e
        :pswitch_b8
    .end packed-switch
.end method

.method public static convertObjectIdToOrdinal(I)I
    .registers 2

    const v0, 0x7ffff

    sub-int/2addr v0, p0

    return v0
.end method

.method private editEncodedSize(I)I
    .registers 14

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v5

    add-int v4, v5, p1

    const/4 v3, 0x0

    :cond_9
    :goto_9
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v7

    if-ge v7, v4, :cond_f4

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->readRawTag()I

    move-result v6

    invoke-static {v6}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v3, v9

    and-int/lit8 v8, v6, 0x7

    packed-switch v8, :pswitch_data_f6

    new-instance v9, Landroid/util/proto/ProtoParseException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "editEncodedSize Bad tag tag=0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " wireType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " -- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v11}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/proto/ProtoParseException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_59
    add-int/lit8 v3, v3, 0x1

    :goto_5b
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->readRawByte()B

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_9

    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    :pswitch_68
    add-int/lit8 v3, v3, 0x8

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto :goto_9

    :pswitch_72
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v2

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v1

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9}, Landroid/util/proto/EncodedBuffer;->readRawFixed32()I

    move-result v0

    if-ltz v2, :cond_c5

    if-eq v0, v2, :cond_b8

    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Pre-computed size where the precomputed size and the raw size in the buffer don\'t match! childRawSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " childEncodedSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " childEncodedSizePos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_b8
    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v2}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    :goto_bd
    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v9

    add-int/2addr v9, v0

    add-int/2addr v3, v9

    goto/16 :goto_9

    :cond_c5
    neg-int v9, v2

    invoke-direct {p0, v9}, Landroid/util/proto/ProtoOutputStream;->editEncodedSize(I)I

    move-result v0

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v9, v1, v0}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_bd

    :pswitch_d0
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "groups not supported at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_ea
    add-int/lit8 v3, v3, 0x4

    iget-object v9, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/util/proto/EncodedBuffer;->skipRead(I)V

    goto/16 :goto_9

    :cond_f4
    return v3

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_59
        :pswitch_68
        :pswitch_72
        :pswitch_d0
        :pswitch_d0
        :pswitch_ea
    .end packed-switch
.end method

.method private endObjectImpl(JZ)V
    .registers 15

    const/4 v10, 0x0

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v1

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v2

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v3

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v0, v4, -0x8

    if-eq p3, v2, :cond_2c

    if-eqz p3, :cond_23

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "endRepeatedObject called where endObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_23
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "endObject called where endRepeatedObject should have been"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2c
    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    and-int/lit16 v4, v4, 0x1ff

    if-ne v4, v1, :cond_38

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    cmp-long v4, v4, p1

    if-eqz v4, :cond_74

    :cond_38
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Mismatched startObject/endObject calls. Current depth "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " expectedToken="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    invoke-static {v6, v7}, Landroid/util/proto/ProtoOutputStream;->token2String(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_74
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v3}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    iget-object v6, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v7, v3, 0x4

    invoke-virtual {v6, v7}, Landroid/util/proto/EncodedBuffer;->getRawFixed32At(I)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-lez v0, :cond_a7

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    neg-int v5, v0

    invoke-virtual {v4, v3, v5}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v3, 0x4

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    :goto_a6
    return-void

    :cond_a7
    if-eqz p3, :cond_b6

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v4, v3, v10}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, v5, v10}, Landroid/util/proto/EncodedBuffer;->editRawFixed32(II)V

    goto :goto_a6

    :cond_b6
    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->rewindWriteTo(I)V

    goto :goto_a6
.end method

.method public static getDepthFromToken(J)I
    .registers 6

    const/16 v0, 0x33

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1ff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static getFieldCountString(J)Ljava/lang/String;
    .registers 4

    const-wide v0, 0x10000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const-string/jumbo v0, ""

    return-object v0

    :cond_d
    const-wide v0, 0x20000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "Repeated"

    return-object v0

    :cond_1a
    const-wide v0, 0x50000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "Packed"

    return-object v0

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFieldIdString(J)Ljava/lang/String;
    .registers 12

    const-wide v6, 0xf0000000000L

    and-long v2, p1, v6

    invoke-static {v2, v3}, Landroid/util/proto/ProtoOutputStream;->getFieldCountString(J)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fieldCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_21
    const-wide v6, 0xff00000000L

    and-long v4, p1, v6

    invoke-static {v4, v5}, Landroid/util/proto/ProtoOutputStream;->getFieldTypeString(J)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_42

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fieldType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " tag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-int v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " fieldId=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static getFieldTypeString(J)Ljava/lang/String;
    .registers 6

    const-wide v2, 0xff00000000L

    and-long/2addr v2, p0

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    add-int/lit8 v0, v1, -0x1

    if-ltz v0, :cond_18

    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    sget-object v1, Landroid/util/proto/ProtoOutputStream;->FIELD_TYPE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getObjectIdFromToken(J)I
    .registers 6

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0x7ffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getRepeatedFromToken(J)Z
    .registers 6

    const/16 v0, 0x3c

    shr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getSizePosFromToken(J)I
    .registers 4

    long-to-int v0, p0

    return v0
.end method

.method private static getTagSize(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static getTagSizeFromToken(J)I
    .registers 6

    const/16 v0, 0x3d

    shr-long v0, p0, v0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static makeFieldId(IJ)J
    .registers 8

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr v0, p1

    return-wide v0
.end method

.method public static makeToken(IZIII)J
    .registers 11

    int-to-long v0, p0

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    const/16 v2, 0x3d

    shl-long v2, v0, v2

    if-eqz p1, :cond_27

    const-wide/high16 v0, 0x1000000000000000L

    :goto_c
    or-long/2addr v0, v2

    int-to-long v2, p2

    const-wide/16 v4, 0x1ff

    and-long/2addr v2, v4

    const/16 v4, 0x33

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    const-wide/32 v4, 0x7ffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0

    :cond_27
    const-wide/16 v0, 0x0

    goto :goto_c
.end method

.method private readRawTag()I
    .registers 3

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getReadPos()I

    move-result v0

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->readRawUnsigned()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private startObjectImpl(IZ)J
    .registers 10

    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getWritePos()I

    move-result v2

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v3, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-wide v0, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    invoke-static {p1}, Landroid/util/proto/ProtoOutputStream;->getTagSize(I)I

    move-result v3

    iget v4, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    iget v5, p0, Landroid/util/proto/ProtoOutputStream;->mNextObjectId:I

    invoke-static {v3, p2, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->makeToken(IZIII)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    iget-wide v4, p0, Landroid/util/proto/ProtoOutputStream;->mExpectedObjectToken:J

    return-wide v4
.end method

.method public static token2String(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "Token(0)"

    return-object v0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Token(val=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getDepthFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " object="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getObjectIdFromToken(J)I

    move-result v1

    invoke-static {v1}, Landroid/util/proto/ProtoOutputStream;->convertObjectIdToOrdinal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tagSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getTagSizeFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sizePos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Landroid/util/proto/ProtoOutputStream;->getSizePosFromToken(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private writeBoolImpl(IZ)V
    .registers 5

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    :cond_c
    return-void
.end method

.method private writeBytesImpl(I[B)V
    .registers 4

    if-eqz p2, :cond_e

    array-length v0, p2

    if-lez v0, :cond_e

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    :cond_e
    return-void
.end method

.method private writeDoubleImpl(ID)V
    .registers 8

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_13
    return-void
.end method

.method private writeEnumImpl(II)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    :cond_9
    return-void
.end method

.method private writeFixed32Impl(II)V
    .registers 4

    if-eqz p2, :cond_b

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_b
    return-void
.end method

.method private writeFixed64Impl(IJ)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_f
    return-void
.end method

.method private writeFloatImpl(IF)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_12

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_12
    return-void
.end method

.method private writeInt32Impl(II)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    :cond_9
    return-void
.end method

.method private writeInt64Impl(IJ)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :cond_f
    return-void
.end method

.method private writeKnownLengthHeader(II)V
    .registers 4

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedBoolImpl(IZ)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    if-eqz p2, :cond_9

    const/4 v0, 0x1

    :cond_9
    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    return-void
.end method

.method private writeRepeatedBytesImpl(I[B)V
    .registers 4

    if-nez p2, :cond_c

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    return-void

    :cond_c
    array-length v0, p2

    goto :goto_3
.end method

.method private writeRepeatedDoubleImpl(ID)V
    .registers 8

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private writeRepeatedEnumImpl(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    return-void
.end method

.method private writeRepeatedFixed32Impl(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedFixed64Impl(IJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private writeRepeatedFloatImpl(IF)V
    .registers 5

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedInt32Impl(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    invoke-direct {p0, p2}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    return-void
.end method

.method private writeRepeatedInt64Impl(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method

.method private writeRepeatedSFixed32Impl(II)V
    .registers 4

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    return-void
.end method

.method private writeRepeatedSFixed64Impl(IJ)V
    .registers 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    return-void
.end method

.method private writeRepeatedSInt32Impl(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    return-void
.end method

.method private writeRepeatedSInt64Impl(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    return-void
.end method

.method private writeRepeatedStringImpl(ILjava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_9
    invoke-direct {p0, p1, v1}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    :goto_c
    return-void

    :cond_d
    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    goto :goto_c
.end method

.method private writeRepeatedUInt32Impl(II)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method private writeRepeatedUInt64Impl(IJ)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    return-void
.end method

.method private writeSFixed32Impl(II)V
    .registers 4

    if-eqz p2, :cond_b

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    :cond_b
    return-void
.end method

.method private writeSFixed64Impl(IJ)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    :cond_f
    return-void
.end method

.method private writeSInt32Impl(II)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    :cond_b
    return-void
.end method

.method private writeSInt64Impl(IJ)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    :cond_f
    return-void
.end method

.method private writeStringImpl(ILjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->writeUtf8String(ILjava/lang/String;)V

    :cond_b
    return-void
.end method

.method private writeUInt32Impl(II)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p2, :cond_b

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    :cond_b
    return-void
.end method

.method private writeUInt64Impl(IJ)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeTag(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    :cond_f
    return-void
.end method

.method private writeUnsignedVarintFromSignedInt(I)V
    .registers 6

    if-ltz p1, :cond_8

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    goto :goto_7
.end method

.method private writeUtf8String(ILjava/lang/String;)V
    .registers 7

    :try_start_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-direct {p0, p1, v2}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v2, v0}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "not possible"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0}, Landroid/util/proto/EncodedBuffer;->getDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p1}, Landroid/util/proto/EncodedBuffer;->dumpBuffers(Ljava/lang/String;)V

    return-void
.end method

.method public end(J)V
    .registers 4

    invoke-static {p1, p2}, Landroid/util/proto/ProtoOutputStream;->getRepeatedFromToken(J)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public endObject(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public endRepeatedObject(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->endObjectImpl(JZ)V

    return-void
.end method

.method public flush()V
    .registers 5

    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget v2, p0, Landroid/util/proto/ProtoOutputStream;->mDepth:I

    if-eqz v2, :cond_a

    return-void

    :cond_a
    iget-boolean v2, p0, Landroid/util/proto/ProtoOutputStream;->mCompacted:Z

    if-eqz v2, :cond_f

    return-void

    :cond_f
    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v3}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    :try_start_1e
    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Landroid/util/proto/ProtoOutputStream;->mStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_29

    return-void

    :catch_29
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error flushing proto to stream"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBytes()[B
    .registers 3

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->compactIfNecessary()V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    iget-object v1, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v1}, Landroid/util/proto/EncodedBuffer;->getReadableSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->getBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public start(J)J
    .registers 12

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v2, p1

    const-wide v4, 0xff00000000L

    and-long/2addr v4, p1

    const-wide v6, 0x1100000000L

    cmp-long v3, v4, v6

    if-nez v3, :cond_41

    const-wide v4, 0xf0000000000L

    and-long v0, p1, v4

    const-wide v4, 0x10000000000L

    cmp-long v3, v0, v4

    if-nez v3, :cond_29

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v4

    return-wide v4

    :cond_29
    const-wide v4, 0x20000000000L

    cmp-long v3, v0, v4

    if-eqz v3, :cond_3b

    const-wide v4, 0x50000000000L

    cmp-long v3, v0, v4

    if-nez v3, :cond_41

    :cond_3b
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v4

    return-wide v4

    :cond_41
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attempt to call start(long) with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public startObject(J)J
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x11100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v2

    return-wide v2
.end method

.method public startRepeatedObject(J)J
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x21100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->startObjectImpl(IZ)J

    move-result-wide v2

    return-wide v2
.end method

.method public write(JD)V
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_ca

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, double) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_33
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    :goto_36
    return-void

    :sswitch_37
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_36

    :sswitch_3b
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_36

    :sswitch_40
    double-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_36

    :sswitch_45
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_36

    :sswitch_4a
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_36

    :sswitch_4f
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_36

    :sswitch_54
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_36

    :sswitch_59
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_36

    :sswitch_5e
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_36

    :sswitch_63
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_36

    :sswitch_68
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_36

    :sswitch_6d
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_36

    :sswitch_72
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_36

    :sswitch_77
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_36

    :sswitch_7c
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_36

    :sswitch_81
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_36

    :sswitch_86
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_36

    :sswitch_8b
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_90
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_95
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_36

    :sswitch_9a
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_36

    :sswitch_9f
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_a4
    double-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_a9
    cmpl-double v3, p3, v6

    if-eqz v3, :cond_b1

    :goto_ad
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_36

    :cond_b1
    move v1, v2

    goto :goto_ad

    :sswitch_b3
    cmpl-double v3, p3, v6

    if-eqz v3, :cond_bc

    :goto_b7
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_36

    :cond_bc
    move v1, v2

    goto :goto_b7

    :sswitch_be
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto/16 :goto_36

    :sswitch_c4
    double-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_36

    :sswitch_data_ca
    .sparse-switch
        0x101 -> :sswitch_33
        0x102 -> :sswitch_3b
        0x103 -> :sswitch_45
        0x104 -> :sswitch_4f
        0x105 -> :sswitch_59
        0x106 -> :sswitch_63
        0x107 -> :sswitch_6d
        0x108 -> :sswitch_77
        0x109 -> :sswitch_81
        0x10a -> :sswitch_8b
        0x10b -> :sswitch_95
        0x10c -> :sswitch_9f
        0x10d -> :sswitch_a9
        0x110 -> :sswitch_be
        0x201 -> :sswitch_37
        0x202 -> :sswitch_40
        0x203 -> :sswitch_4a
        0x204 -> :sswitch_54
        0x205 -> :sswitch_5e
        0x206 -> :sswitch_68
        0x207 -> :sswitch_72
        0x208 -> :sswitch_7c
        0x209 -> :sswitch_86
        0x20a -> :sswitch_90
        0x20b -> :sswitch_9a
        0x20c -> :sswitch_a4
        0x20d -> :sswitch_b3
        0x210 -> :sswitch_c4
        0x501 -> :sswitch_37
        0x502 -> :sswitch_40
        0x503 -> :sswitch_4a
        0x504 -> :sswitch_54
        0x505 -> :sswitch_5e
        0x506 -> :sswitch_68
        0x507 -> :sswitch_72
        0x508 -> :sswitch_7c
        0x509 -> :sswitch_86
        0x50a -> :sswitch_90
        0x50b -> :sswitch_9a
        0x50c -> :sswitch_a4
        0x50d -> :sswitch_b3
        0x510 -> :sswitch_c4
    .end sparse-switch
.end method

.method public write(JF)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_ca

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, float) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_32
    float-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    :goto_36
    return-void

    :sswitch_37
    float-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_36

    :sswitch_3c
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_36

    :sswitch_40
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_36

    :sswitch_44
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_36

    :sswitch_49
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_36

    :sswitch_4e
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_36

    :sswitch_53
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_36

    :sswitch_58
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_36

    :sswitch_5d
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_36

    :sswitch_62
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_36

    :sswitch_67
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_36

    :sswitch_6c
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_36

    :sswitch_71
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_36

    :sswitch_76
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_36

    :sswitch_7b
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_36

    :sswitch_80
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_36

    :sswitch_85
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_36

    :sswitch_8a
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_8f
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_94
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_36

    :sswitch_99
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_36

    :sswitch_9e
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_a3
    float-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_36

    :sswitch_a8
    cmpl-float v3, p3, v6

    if-eqz v3, :cond_b0

    :goto_ac
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_36

    :cond_b0
    move v1, v2

    goto :goto_ac

    :sswitch_b2
    cmpl-float v3, p3, v6

    if-eqz v3, :cond_bb

    :goto_b6
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto/16 :goto_36

    :cond_bb
    move v1, v2

    goto :goto_b6

    :sswitch_bd
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto/16 :goto_36

    :sswitch_c3
    float-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_36

    nop

    :sswitch_data_ca
    .sparse-switch
        0x101 -> :sswitch_32
        0x102 -> :sswitch_3c
        0x103 -> :sswitch_44
        0x104 -> :sswitch_4e
        0x105 -> :sswitch_58
        0x106 -> :sswitch_62
        0x107 -> :sswitch_6c
        0x108 -> :sswitch_76
        0x109 -> :sswitch_80
        0x10a -> :sswitch_8a
        0x10b -> :sswitch_94
        0x10c -> :sswitch_9e
        0x10d -> :sswitch_a8
        0x110 -> :sswitch_bd
        0x201 -> :sswitch_37
        0x202 -> :sswitch_40
        0x203 -> :sswitch_49
        0x204 -> :sswitch_53
        0x205 -> :sswitch_5d
        0x206 -> :sswitch_67
        0x207 -> :sswitch_71
        0x208 -> :sswitch_7b
        0x209 -> :sswitch_85
        0x20a -> :sswitch_8f
        0x20b -> :sswitch_99
        0x20c -> :sswitch_a3
        0x20d -> :sswitch_b2
        0x210 -> :sswitch_c3
        0x501 -> :sswitch_37
        0x502 -> :sswitch_40
        0x503 -> :sswitch_49
        0x504 -> :sswitch_53
        0x505 -> :sswitch_5d
        0x506 -> :sswitch_67
        0x507 -> :sswitch_71
        0x508 -> :sswitch_7b
        0x509 -> :sswitch_85
        0x50a -> :sswitch_8f
        0x50b -> :sswitch_99
        0x50c -> :sswitch_a3
        0x50d -> :sswitch_b2
        0x510 -> :sswitch_c3
    .end sparse-switch
.end method

.method public write(JI)V
    .registers 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_b8

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, int) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_31
    int-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    :goto_35
    return-void

    :sswitch_36
    int-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_35

    :sswitch_3b
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_35

    :sswitch_40
    int-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_35

    :sswitch_45
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_35

    :sswitch_49
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_35

    :sswitch_4d
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_35

    :sswitch_52
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_35

    :sswitch_57
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_35

    :sswitch_5b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_35

    :sswitch_5f
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_35

    :sswitch_64
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_35

    :sswitch_69
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_35

    :sswitch_6d
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_35

    :sswitch_71
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_35

    :sswitch_76
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_35

    :sswitch_7b
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_35

    :sswitch_7f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_35

    :sswitch_83
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_35

    :sswitch_88
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_35

    :sswitch_8d
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_35

    :sswitch_91
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_35

    :sswitch_95
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_35

    :sswitch_9a
    int-to-long v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_35

    :sswitch_9f
    if-eqz p3, :cond_a5

    :goto_a1
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_35

    :cond_a5
    move v1, v2

    goto :goto_a1

    :sswitch_a7
    if-eqz p3, :cond_ad

    :goto_a9
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_35

    :cond_ad
    move v1, v2

    goto :goto_a9

    :sswitch_af
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto :goto_35

    :sswitch_b3
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_35

    :sswitch_data_b8
    .sparse-switch
        0x101 -> :sswitch_31
        0x102 -> :sswitch_3b
        0x103 -> :sswitch_45
        0x104 -> :sswitch_4d
        0x105 -> :sswitch_57
        0x106 -> :sswitch_5f
        0x107 -> :sswitch_69
        0x108 -> :sswitch_71
        0x109 -> :sswitch_7b
        0x10a -> :sswitch_83
        0x10b -> :sswitch_8d
        0x10c -> :sswitch_95
        0x10d -> :sswitch_9f
        0x110 -> :sswitch_af
        0x201 -> :sswitch_36
        0x202 -> :sswitch_40
        0x203 -> :sswitch_49
        0x204 -> :sswitch_52
        0x205 -> :sswitch_5b
        0x206 -> :sswitch_64
        0x207 -> :sswitch_6d
        0x208 -> :sswitch_76
        0x209 -> :sswitch_7f
        0x20a -> :sswitch_88
        0x20b -> :sswitch_91
        0x20c -> :sswitch_9a
        0x20d -> :sswitch_a7
        0x210 -> :sswitch_b3
        0x501 -> :sswitch_36
        0x502 -> :sswitch_40
        0x503 -> :sswitch_49
        0x504 -> :sswitch_52
        0x505 -> :sswitch_5b
        0x506 -> :sswitch_64
        0x507 -> :sswitch_6d
        0x508 -> :sswitch_76
        0x509 -> :sswitch_7f
        0x50a -> :sswitch_88
        0x50b -> :sswitch_91
        0x50c -> :sswitch_9a
        0x50d -> :sswitch_a7
        0x510 -> :sswitch_b3
    .end sparse-switch
.end method

.method public write(JJ)V
    .registers 14

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v4, 0xfff00000000L

    and-long/2addr v4, p1

    const/16 v3, 0x20

    shr-long/2addr v4, v3

    long-to-int v3, v4

    sparse-switch v3, :sswitch_data_c2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, long) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_33
    long-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    :goto_37
    return-void

    :sswitch_38
    long-to-double v2, p3

    invoke-direct {p0, v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    goto :goto_37

    :sswitch_3d
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    goto :goto_37

    :sswitch_42
    long-to-float v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    goto :goto_37

    :sswitch_47
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    goto :goto_37

    :sswitch_4c
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    goto :goto_37

    :sswitch_51
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    goto :goto_37

    :sswitch_55
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    goto :goto_37

    :sswitch_59
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    goto :goto_37

    :sswitch_5e
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    goto :goto_37

    :sswitch_63
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    goto :goto_37

    :sswitch_67
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    goto :goto_37

    :sswitch_6b
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    goto :goto_37

    :sswitch_70
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    goto :goto_37

    :sswitch_75
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    goto :goto_37

    :sswitch_79
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    goto :goto_37

    :sswitch_7d
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    goto :goto_37

    :sswitch_82
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    goto :goto_37

    :sswitch_87
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    goto :goto_37

    :sswitch_8b
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    goto :goto_37

    :sswitch_8f
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    goto :goto_37

    :sswitch_94
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    goto :goto_37

    :sswitch_99
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    goto :goto_37

    :sswitch_9d
    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    goto :goto_37

    :sswitch_a1
    cmp-long v3, p3, v6

    if-eqz v3, :cond_a9

    :goto_a5
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    goto :goto_37

    :cond_a9
    move v1, v2

    goto :goto_a5

    :sswitch_ab
    cmp-long v3, p3, v6

    if-eqz v3, :cond_b3

    :goto_af
    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_37

    :cond_b3
    move v1, v2

    goto :goto_af

    :sswitch_b5
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    goto/16 :goto_37

    :sswitch_bb
    long-to-int v1, p3

    invoke-direct {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    goto/16 :goto_37

    nop

    :sswitch_data_c2
    .sparse-switch
        0x101 -> :sswitch_33
        0x102 -> :sswitch_3d
        0x103 -> :sswitch_47
        0x104 -> :sswitch_51
        0x105 -> :sswitch_59
        0x106 -> :sswitch_63
        0x107 -> :sswitch_6b
        0x108 -> :sswitch_75
        0x109 -> :sswitch_7d
        0x10a -> :sswitch_87
        0x10b -> :sswitch_8f
        0x10c -> :sswitch_99
        0x10d -> :sswitch_a1
        0x110 -> :sswitch_b5
        0x201 -> :sswitch_38
        0x202 -> :sswitch_42
        0x203 -> :sswitch_4c
        0x204 -> :sswitch_55
        0x205 -> :sswitch_5e
        0x206 -> :sswitch_67
        0x207 -> :sswitch_70
        0x208 -> :sswitch_79
        0x209 -> :sswitch_82
        0x20a -> :sswitch_8b
        0x20b -> :sswitch_94
        0x20c -> :sswitch_9d
        0x20d -> :sswitch_ab
        0x210 -> :sswitch_bb
        0x501 -> :sswitch_38
        0x502 -> :sswitch_42
        0x503 -> :sswitch_4c
        0x504 -> :sswitch_55
        0x505 -> :sswitch_5e
        0x506 -> :sswitch_67
        0x507 -> :sswitch_70
        0x508 -> :sswitch_79
        0x509 -> :sswitch_82
        0x50a -> :sswitch_8b
        0x50b -> :sswitch_94
        0x50c -> :sswitch_9d
        0x50d -> :sswitch_ab
        0x510 -> :sswitch_bb
    .end sparse-switch
.end method

.method public write(JLjava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v2, 0xfff00000000L

    and-long/2addr v2, p1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    sparse-switch v1, :sswitch_data_38

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, String) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    :goto_32
    return-void

    :sswitch_33
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    goto :goto_32

    nop

    :sswitch_data_38
    .sparse-switch
        0x10e -> :sswitch_2f
        0x20e -> :sswitch_33
        0x50e -> :sswitch_33
    .end sparse-switch
.end method

.method public write(JZ)V
    .registers 9

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v2, 0xfff00000000L

    and-long/2addr v2, p1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    sparse-switch v1, :sswitch_data_38

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, boolean) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    :goto_32
    return-void

    :sswitch_33
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    goto :goto_32

    nop

    :sswitch_data_38
    .sparse-switch
        0x10d -> :sswitch_2f
        0x20d -> :sswitch_33
        0x50d -> :sswitch_33
    .end sparse-switch
.end method

.method public write(J[B)V
    .registers 9

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    long-to-int v0, p1

    const-wide v2, 0xfff00000000L

    and-long/2addr v2, p1

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    long-to-int v1, v2

    sparse-switch v1, :sswitch_data_40

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attempt to call write(long, byte[]) with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->getFieldIdString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2f
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    :goto_32
    return-void

    :sswitch_33
    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    goto :goto_32

    :sswitch_37
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    goto :goto_32

    :sswitch_3b
    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    goto :goto_32

    nop

    :sswitch_data_40
    .sparse-switch
        0x10f -> :sswitch_2f
        0x111 -> :sswitch_37
        0x20f -> :sswitch_33
        0x211 -> :sswitch_3b
        0x50f -> :sswitch_33
        0x511 -> :sswitch_3b
    .end sparse-switch
.end method

.method public writeBool(JZ)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10d00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBoolImpl(IZ)V

    return-void
.end method

.method public writeBytes(J[B)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10f00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeBytesImpl(I[B)V

    return-void
.end method

.method public writeDouble(JD)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeDoubleImpl(ID)V

    return-void
.end method

.method public writeEnum(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x11000000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeEnumImpl(II)V

    return-void
.end method

.method public writeFixed32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10900000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFixed32Impl(II)V

    return-void
.end method

.method public writeFixed64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10a00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeFixed64Impl(IJ)V

    return-void
.end method

.method public writeFloat(JF)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10200000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeFloatImpl(IF)V

    return-void
.end method

.method public writeInt32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10300000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeInt32Impl(II)V

    return-void
.end method

.method public writeInt64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10400000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeInt64Impl(IJ)V

    return-void
.end method

.method public writeObject(J[B)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x11100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeObjectImpl(I[B)V

    return-void
.end method

.method writeObjectImpl(I[B)V
    .registers 4

    if-eqz p2, :cond_e

    array-length v0, p2

    if-eqz v0, :cond_e

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    :cond_e
    return-void
.end method

.method public writePackedBool(J[Z)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v6, 0x50d00000000L

    invoke-static {p1, p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_26

    array-length v0, p3

    :goto_10
    if-lez v0, :cond_2a

    invoke-direct {p0, v2, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_2a

    iget-object v5, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-boolean v3, p3, v1

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    :goto_1f
    int-to-byte v3, v3

    invoke-virtual {v5, v3}, Landroid/util/proto/EncodedBuffer;->writeRawByte(B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_26
    const/4 v0, 0x0

    goto :goto_10

    :cond_28
    move v3, v4

    goto :goto_1f

    :cond_2a
    return-void
.end method

.method public writePackedDouble(J[D)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50100000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_27

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_29

    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_29

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_27
    const/4 v0, 0x0

    goto :goto_f

    :cond_29
    return-void
.end method

.method public writePackedEnum(J[I)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v6, 0x51000000000L

    invoke-static {p1, p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_21

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_34

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_26

    aget v4, p3, v1

    if-ltz v4, :cond_23

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    :goto_1d
    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/4 v0, 0x0

    goto :goto_f

    :cond_23
    const/16 v5, 0xa

    goto :goto_1d

    :cond_26
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_34

    aget v5, p3, v1

    invoke-direct {p0, v5}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_34
    return-void
.end method

.method public writePackedFixed32(J[I)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50900000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_23

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_25

    mul-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_25

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    goto :goto_f

    :cond_25
    return-void
.end method

.method public writePackedFixed64(J[J)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50a00000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_23

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_25

    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_25

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    goto :goto_f

    :cond_25
    return-void
.end method

.method public writePackedFloat(J[F)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50200000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_27

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_29

    mul-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_29

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_27
    const/4 v0, 0x0

    goto :goto_f

    :cond_29
    return-void
.end method

.method public writePackedInt32(J[I)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v6, 0x50300000000L

    invoke-static {p1, p2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_21

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_34

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_26

    aget v4, p3, v1

    if-ltz v4, :cond_23

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v5

    :goto_1d
    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_21
    const/4 v0, 0x0

    goto :goto_f

    :cond_23
    const/16 v5, 0xa

    goto :goto_1d

    :cond_26
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_2a
    if-ge v1, v0, :cond_34

    aget v5, p3, v1

    invoke-direct {p0, v5}, Landroid/util/proto/ProtoOutputStream;->writeUnsignedVarintFromSignedInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_34
    return-void
.end method

.method public writePackedInt64(J[J)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50400000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_1f

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_31

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    :cond_21
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v6, p3, v1

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_31
    return-void
.end method

.method public writePackedSFixed32(J[I)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50b00000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_23

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_25

    mul-int/lit8 v3, v0, 0x4

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_25

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v4, p3, v1

    invoke-virtual {v3, v4}, Landroid/util/proto/EncodedBuffer;->writeRawFixed32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    goto :goto_f

    :cond_25
    return-void
.end method

.method public writePackedSFixed64(J[J)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50c00000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_23

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_25

    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_17
    if-ge v1, v0, :cond_25

    iget-object v3, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v4, p3, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawFixed64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_23
    const/4 v0, 0x0

    goto :goto_f

    :cond_25
    return-void
.end method

.method public writePackedSInt32(J[I)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50700000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_1f

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_31

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    aget v4, p3, v1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawZigZag32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    :cond_21
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_31
    return-void
.end method

.method public writePackedSInt64(J[J)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50800000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_1f

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_31

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawZigZag64Size(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    :cond_21
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v6, p3, v1

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeRawZigZag64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_31
    return-void
.end method

.method public writePackedUInt32(J[I)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50500000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_1f

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_31

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    aget v4, p3, v1

    invoke-static {v4}, Landroid/util/proto/EncodedBuffer;->getRawVarint32Size(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    :cond_21
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget v5, p3, v1

    invoke-virtual {v4, v5}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_31
    return-void
.end method

.method public writePackedUInt64(J[J)V
    .registers 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v4, 0x50600000000L

    invoke-static {p1, p2, v4, v5}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v2

    if-eqz p3, :cond_1f

    array-length v0, p3

    :goto_f
    if-lez v0, :cond_31

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_21

    aget-wide v4, p3, v1

    invoke-static {v4, v5}, Landroid/util/proto/EncodedBuffer;->getRawVarint64Size(J)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1f
    const/4 v0, 0x0

    goto :goto_f

    :cond_21
    invoke-direct {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    aget-wide v6, p3, v1

    invoke-virtual {v4, v6, v7}, Landroid/util/proto/EncodedBuffer;->writeRawVarint64(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_31
    return-void
.end method

.method public writeRepeatedBool(JZ)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20d00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBoolImpl(IZ)V

    return-void
.end method

.method public writeRepeatedBytes(J[B)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20f00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedBytesImpl(I[B)V

    return-void
.end method

.method public writeRepeatedDouble(JD)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedDoubleImpl(ID)V

    return-void
.end method

.method public writeRepeatedEnum(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x21000000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedEnumImpl(II)V

    return-void
.end method

.method public writeRepeatedFixed32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20900000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed32Impl(II)V

    return-void
.end method

.method public writeRepeatedFixed64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20a00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFixed64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedFloat(JF)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20200000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedFloatImpl(IF)V

    return-void
.end method

.method public writeRepeatedInt32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20300000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt32Impl(II)V

    return-void
.end method

.method public writeRepeatedInt64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20400000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedInt64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedObject(J[B)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x21100000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedObjectImpl(I[B)V

    return-void
.end method

.method writeRepeatedObjectImpl(I[B)V
    .registers 4

    if-nez p2, :cond_c

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, p1, v0}, Landroid/util/proto/ProtoOutputStream;->writeKnownLengthHeader(II)V

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    invoke-virtual {v0, p2}, Landroid/util/proto/EncodedBuffer;->writeRawBuffer([B)V

    return-void

    :cond_c
    array-length v0, p2

    goto :goto_3
.end method

.method public writeRepeatedSFixed32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20b00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed32Impl(II)V

    return-void
.end method

.method public writeRepeatedSFixed64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20c00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSFixed64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedSInt32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20700000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt32Impl(II)V

    return-void
.end method

.method public writeRepeatedSInt64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20800000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedSInt64Impl(IJ)V

    return-void
.end method

.method public writeRepeatedString(JLjava/lang/String;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20e00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedStringImpl(ILjava/lang/String;)V

    return-void
.end method

.method public writeRepeatedUInt32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20500000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt32Impl(II)V

    return-void
.end method

.method public writeRepeatedUInt64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x20600000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeRepeatedUInt64Impl(IJ)V

    return-void
.end method

.method public writeSFixed32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10b00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSFixed32Impl(II)V

    return-void
.end method

.method public writeSFixed64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10c00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSFixed64Impl(IJ)V

    return-void
.end method

.method public writeSInt32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10700000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeSInt32Impl(II)V

    return-void
.end method

.method public writeSInt64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10800000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeSInt64Impl(IJ)V

    return-void
.end method

.method public writeString(JLjava/lang/String;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10e00000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeStringImpl(ILjava/lang/String;)V

    return-void
.end method

.method public writeTag(II)V
    .registers 5

    iget-object v0, p0, Landroid/util/proto/ProtoOutputStream;->mBuffer:Landroid/util/proto/EncodedBuffer;

    shl-int/lit8 v1, p1, 0x3

    or-int/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/util/proto/EncodedBuffer;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt32(JI)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10500000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3}, Landroid/util/proto/ProtoOutputStream;->writeUInt32Impl(II)V

    return-void
.end method

.method public writeUInt64(JJ)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/util/proto/ProtoOutputStream;->assertNotCompacted()V

    const-wide v2, 0x10600000000L

    invoke-static {p1, p2, v2, v3}, Landroid/util/proto/ProtoOutputStream;->checkFieldId(JJ)I

    move-result v0

    invoke-direct {p0, v0, p3, p4}, Landroid/util/proto/ProtoOutputStream;->writeUInt64Impl(IJ)V

    return-void
.end method
