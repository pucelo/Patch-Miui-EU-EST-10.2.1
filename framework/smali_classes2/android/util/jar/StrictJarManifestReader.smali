.class Landroid/util/jar/StrictJarManifestReader;
.super Ljava/lang/Object;
.source "StrictJarManifestReader.java"


# instance fields
.field private final attributeNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation
.end field

.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private final endOfMainSection:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>([BLjava/util/jar/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    iput-object p1, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    :goto_18
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_26
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iput v0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return-void
.end method

.method private readHeader()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-le v2, v0, :cond_9

    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    return v1

    :cond_9
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readName()V

    iput v1, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readValue()V

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lez v2, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15
.end method

.method private readName()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :cond_2
    iget v3, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_6e

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_2

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_46

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid value for attribute \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_46
    :try_start_46
    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/jar/Attributes$Name;

    iput-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    if-nez v3, :cond_62

    new-instance v3, Ljava/util/jar/Attributes$Name;

    invoke-direct {v3, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->attributeNameCache:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_62} :catch_63

    :cond_62
    return-void

    :catch_63
    move-exception v0

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6e
    return-void
.end method

.method private readValue()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_b
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    iget-object v5, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_29

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    iget v5, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    aget-byte v3, v4, v5

    sparse-switch v3, :sswitch_data_74

    :cond_1f
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-lt v4, v7, :cond_70

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :cond_29
    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    return-void

    :sswitch_41
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_4a
    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    goto :goto_b

    :cond_4e
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_b

    :sswitch_55
    const/4 v1, 0x1

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_b

    :sswitch_5d
    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    if-ne v4, v7, :cond_1f

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->valueBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Landroid/util/jar/StrictJarManifestReader;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    const/4 v4, 0x0

    iput v4, p0, Landroid/util/jar/StrictJarManifestReader;->consecutiveLineBreaks:I

    goto :goto_b

    :cond_70
    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    goto :goto_b

    nop

    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_41
        0xa -> :sswitch_4a
        0xd -> :sswitch_55
        0x20 -> :sswitch_5d
    .end sparse-switch
.end method


# virtual methods
.method public getEndOfMainSection()I
    .registers 2

    iget v0, p0, Landroid/util/jar/StrictJarManifestReader;->endOfMainSection:I

    return v0
.end method

.method public readEntries(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :goto_2
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_5b

    sget-object v3, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Entry is not named"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1b
    iget-object v1, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    if-nez v0, :cond_2c

    new-instance v0, Ljava/util/jar/Attributes;

    const/16 v3, 0xc

    invoke-direct {v0, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    :cond_2c
    :goto_2c
    invoke-direct {p0}, Landroid/util/jar/StrictJarManifestReader;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid/util/jar/StrictJarManifestReader;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Landroid/util/jar/StrictJarManifestReader;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_3a
    if-eqz p2, :cond_57

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4b
    new-instance v3, Landroid/util/jar/StrictJarManifest$Chunk;

    iget v4, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    invoke-direct {v3, v2, v4}, Landroid/util/jar/StrictJarManifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Landroid/util/jar/StrictJarManifestReader;->pos:I

    :cond_57
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5b
    return-void
.end method
