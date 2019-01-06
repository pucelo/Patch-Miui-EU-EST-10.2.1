.class public Lcom/android/framework/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TYPE_BOOL:I = 0x8

.field public static final TYPE_BYTES:I = 0xc

.field public static final TYPE_DOUBLE:I = 0x1

.field public static final TYPE_ENUM:I = 0xe

.field public static final TYPE_FIXED32:I = 0x7

.field public static final TYPE_FIXED64:I = 0x6

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_GROUP:I = 0xa

.field public static final TYPE_INT32:I = 0x5

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_MESSAGE:I = 0xb

.field public static final TYPE_SFIXED32:I = 0xf

.field public static final TYPE_SFIXED64:I = 0x10

.field public static final TYPE_SINT32:I = 0x11

.field public static final TYPE_SINT64:I = 0x12

.field public static final TYPE_STRING:I = 0x9

.field public static final TYPE_UINT32:I = 0xd

.field public static final TYPE_UINT64:I = 0x4


# instance fields
.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final repeated:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    iput-object p2, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iput p3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    iput-boolean p4, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Class;IZLcom/android/framework/protobuf/nano/Extension;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-void
.end method

.method public static createMessageTyped(ILjava/lang/Class;I)Lcom/android/framework/protobuf/nano/Extension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createPrimitiveTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    move v1, p0

    move-object v2, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method public static createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class",
            "<[TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;[TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/android/framework/protobuf/nano/Extension;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;JJJ)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    long-to-int v5, p4

    long-to-int v6, p6

    const/4 v4, 0x1

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method private getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    iget-object v5, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v5, v5

    if-eqz v5, :cond_1a

    invoke-virtual {p0, v0, v3}, Lcom/android/framework/protobuf/nano/Extension;->readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_25

    const/4 v5, 0x0

    return-object v5

    :cond_25
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    :goto_36
    if-ge v1, v4, :cond_42

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_42
    return-object v2
.end method

.method private getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_1a

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1a
    return v3
.end method

.method computeSerializedSize(Ljava/lang/Object;)I
    .registers 3

    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 8

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v3, :pswitch_data_38

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_27
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    return v3

    :pswitch_2f
    move-object v2, p1

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    return v3

    nop

    :pswitch_data_38
    .packed-switch 0xa
        :pswitch_27
        :pswitch_2f
    .end packed-switch
.end method

.method final getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method protected readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 11

    iget-boolean v6, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v6, :cond_46

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    :goto_a
    :try_start_a
    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v6, :pswitch_data_88

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_a .. :try_end_2b} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_2b} :catch_6d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_63

    :catch_2b
    move-exception v2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error creating instance of class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :cond_46
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    goto :goto_a

    :pswitch_49
    :try_start_49
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/nano/MessageNano;

    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v6}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/android/framework/protobuf/nano/MessageNano;I)V

    return-object v3

    :pswitch_59
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v4}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V
    :try_end_62
    .catch Ljava/lang/InstantiationException; {:try_start_49 .. :try_end_62} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_49 .. :try_end_62} :catch_6d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_62} :catch_63

    return-object v4

    :catch_63
    move-exception v0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Error reading extension field"

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :catch_6d
    move-exception v1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error creating instance of class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    :pswitch_data_88
    .packed-switch 0xa
        :pswitch_49
        :pswitch_59
    .end packed-switch
.end method

.method protected readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_13

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method protected writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 11

    :try_start_0
    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v5, :pswitch_data_48

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_26

    :catch_26
    move-exception v1

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :pswitch_2d
    :try_start_2d
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    move-object v3, v0

    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/4 v5, 0x4

    invoke-virtual {p2, v2, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    :goto_3e
    return-void

    :pswitch_3f
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    move-object v4, v0

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_46} :catch_26

    goto :goto_3e

    nop

    :pswitch_data_48
    .packed-switch 0xa
        :pswitch_2d
        :pswitch_3f
    .end packed-switch
.end method

.method writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_7
.end method
