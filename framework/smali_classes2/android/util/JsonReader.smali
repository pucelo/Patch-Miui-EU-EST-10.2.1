.class public final Landroid/util/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final synthetic -android-util-JsonScopeSwitchesValues:[I = null

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Llibcore/internal/StringPool;

.field private token:Landroid/util/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method private static synthetic -getandroid-util-JsonScopeSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/util/JsonReader;->-android-util-JsonScopeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/util/JsonReader;->-android-util-JsonScopeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/util/JsonScope;->values()[Landroid/util/JsonScope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_68

    :goto_17
    :try_start_17
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_66

    :goto_20
    :try_start_20
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_64

    :goto_29
    :try_start_29
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_62

    :goto_32
    :try_start_32
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_60

    :goto_3b
    :try_start_3b
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_5e

    :goto_44
    :try_start_44
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_5c

    :goto_4d
    :try_start_4d
    sget-object v1, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_5a

    :goto_57
    sput-object v0, Landroid/util/JsonReader;->-android-util-JsonScopeSwitchesValues:[I

    return-object v0

    :catch_5a
    move-exception v1

    goto :goto_57

    :catch_5c
    move-exception v1

    goto :goto_4d

    :catch_5e
    move-exception v1

    goto :goto_44

    :catch_60
    move-exception v1

    goto :goto_3b

    :catch_62
    move-exception v1

    goto :goto_32

    :catch_64
    move-exception v1

    goto :goto_29

    :catch_66
    move-exception v1

    goto :goto_20

    :catch_68
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iput-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    iput v1, p0, Landroid/util/JsonReader;->limit:I

    iput v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    sget-object v0, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    iput-boolean v1, p0, Landroid/util/JsonReader;->skipping:Z

    if-nez p1, :cond_35

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iput-object p1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    return-void
.end method

.method private advance()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    return-object v0
.end method

.method private checkLenient()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    if-nez v0, :cond_c

    const-string/jumbo v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    return-void
.end method

.method private decodeLiteral()Landroid/util/JsonToken;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x55

    const/16 v5, 0x45

    const/4 v4, 0x4

    const/16 v3, 0x6c

    const/16 v2, 0x4c

    iget v0, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v0

    :cond_11
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    if-ne v0, v4, :cond_6f

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x6e

    if-eq v1, v0, :cond_29

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x4e

    if-ne v1, v0, :cond_6f

    :cond_29
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-eq v1, v0, :cond_3f

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_6f

    :cond_3f
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v3, v0, :cond_53

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v2, v0, :cond_6f

    :cond_53
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v3, v0, :cond_67

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v2, v0, :cond_6f

    :cond_67
    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    return-object v0

    :cond_6f
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    if-ne v0, v4, :cond_d3

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x74

    if-eq v1, v0, :cond_87

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x54

    if-ne v1, v0, :cond_d3

    :cond_87
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x72

    if-eq v1, v0, :cond_9f

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x52

    if-ne v1, v0, :cond_d3

    :cond_9f
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    const/16 v1, 0x75

    if-eq v1, v0, :cond_b5

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_d3

    :cond_b5
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v1, v0, :cond_cb

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v5, v0, :cond_d3

    :cond_cb
    const-string/jumbo v0, "true"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    :cond_d3
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14e

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x66

    if-eq v1, v0, :cond_ec

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v0, v0, v1

    const/16 v1, 0x46

    if-ne v1, v0, :cond_14e

    :cond_ec
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x61

    if-eq v1, v0, :cond_104

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v0, v1

    const/16 v1, 0x41

    if-ne v1, v0, :cond_14e

    :cond_104
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v3, v0, :cond_118

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v2, v0, :cond_14e

    :cond_118
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x73

    if-eq v1, v0, :cond_130

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    const/16 v1, 0x53

    if-ne v1, v0, :cond_14e

    :cond_130
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    const/16 v1, 0x65

    if-eq v1, v0, :cond_146

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v5, v0, :cond_14e

    :cond_146
    const-string/jumbo v0, "false"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    :cond_14e
    iget-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    iget v2, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private decodeNumber([CII)Landroid/util/JsonToken;
    .registers 10

    const/16 v5, 0x2d

    const/16 v4, 0x39

    const/16 v3, 0x30

    move v1, p2

    aget-char v0, p1, p2

    if-ne v0, v5, :cond_f

    add-int/lit8 v1, p2, 0x1

    aget-char v0, p1, v1

    :cond_f
    if-ne v0, v3, :cond_26

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :cond_15
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_3c

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :goto_1d
    if-lt v0, v3, :cond_3c

    if-gt v0, v4, :cond_3c

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_1d

    :cond_26
    const/16 v2, 0x31

    if-lt v0, v2, :cond_39

    if-gt v0, v4, :cond_39

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :goto_30
    if-lt v0, v3, :cond_15

    if-gt v0, v4, :cond_15

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_30

    :cond_39
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    :cond_3c
    const/16 v2, 0x65

    if-eq v0, v2, :cond_44

    const/16 v2, 0x45

    if-ne v0, v2, :cond_66

    :cond_44
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_4e

    if-ne v0, v5, :cond_52

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :cond_52
    if-lt v0, v3, :cond_63

    if-gt v0, v4, :cond_63

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    :goto_5a
    if-lt v0, v3, :cond_66

    if-gt v0, v4, :cond_66

    add-int/lit8 v1, v1, 0x1

    aget-char v0, p1, v1

    goto :goto_5a

    :cond_63
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    :cond_66
    add-int v2, p2, p3

    if-ne v1, v2, :cond_6d

    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    return-object v2

    :cond_6d
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2
.end method

.method private expect(Landroid/util/JsonToken;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-eq v0, p1, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-void
.end method

.method private fillBuffer(I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v0, v2, :cond_21

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1a

    iget v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    iput v8, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1a
    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    goto :goto_17

    :cond_21
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    if-eq v2, v3, :cond_79

    iget v2, p0, Landroid/util/JsonReader;->limit:I

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/util/JsonReader;->limit:I

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->limit:I

    invoke-static {v2, v3, v4, v7, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    :goto_39
    iput v7, p0, Landroid/util/JsonReader;->pos:I

    :cond_3b
    iget-object v2, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Landroid/util/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7c

    iget v2, p0, Landroid/util/JsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/util/JsonReader;->limit:I

    iget v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    if-ne v2, v8, :cond_74

    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    if-ne v2, v8, :cond_74

    iget v2, p0, Landroid/util/JsonReader;->limit:I

    if-lez v2, :cond_74

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v7

    const v3, 0xfeff

    if-ne v2, v3, :cond_74

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    :cond_74
    iget v2, p0, Landroid/util/JsonReader;->limit:I

    if-lt v2, p1, :cond_3b

    return v8

    :cond_79
    iput v7, p0, Landroid/util/JsonReader;->limit:I

    goto :goto_39

    :cond_7c
    return v7
.end method

.method private getColumnNumber()I
    .registers 5

    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v0, v2, :cond_16

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_13

    const/4 v1, 0x1

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_16
    return v1
.end method

.method private getLineNumber()I
    .registers 5

    iget v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    add-int/lit8 v1, v1, 0x1

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_14
    return v1
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .registers 7

    const/16 v5, 0x14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v2
.end method

.method private nextInArray(Z)Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_19

    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    :goto_7
    :sswitch_7
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_52

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    :cond_19
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_60

    const-string/jumbo v0, "Unterminated array"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_28
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :sswitch_30
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    goto :goto_7

    :sswitch_34
    if-eqz p1, :cond_3e

    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    :cond_3e
    :sswitch_3e
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    nop

    :sswitch_data_52
    .sparse-switch
        0x2c -> :sswitch_3e
        0x3b -> :sswitch_3e
        0x5d -> :sswitch_34
    .end sparse-switch

    :sswitch_data_60
    .sparse-switch
        0x2c -> :sswitch_7
        0x3b -> :sswitch_30
        0x5d -> :sswitch_28
    .end sparse-switch
.end method

.method private nextInObject(Z)Landroid/util/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3e

    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v1

    packed-switch v1, :pswitch_data_6a

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    :sswitch_f
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_70

    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5f

    const-string/jumbo v1, "Expected name"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :pswitch_36
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    :cond_3e
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    const-string/jumbo v1, "Unterminated object"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :sswitch_4d
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    :sswitch_55
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :sswitch_58
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    :cond_5f
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    nop

    :pswitch_data_6a
    .packed-switch 0x7d
        :pswitch_36
    .end packed-switch

    :sswitch_data_70
    .sparse-switch
        0x22 -> :sswitch_58
        0x27 -> :sswitch_55
    .end sparse-switch

    :sswitch_data_7a
    .sparse-switch
        0x2c -> :sswitch_f
        0x3b -> :sswitch_f
        0x7d -> :sswitch_4d
    .end sparse-switch
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, -0x1

    iput v3, p0, Landroid/util/JsonReader;->valuePos:I

    iput v5, p0, Landroid/util/JsonReader;->valueLength:I

    const/4 v1, 0x0

    :cond_8
    :goto_8
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-ge v3, v4, :cond_33

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_8a

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :sswitch_1c
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :goto_1f
    :sswitch_1f
    if-eqz p1, :cond_68

    if-nez v0, :cond_68

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    iput v3, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v2, 0x0

    :goto_28
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    return-object v2

    :cond_33
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v1, v3, :cond_47

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    aput-char v5, v3, v4

    goto :goto_1f

    :cond_47
    if-nez v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4e
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1f

    :cond_68
    iget-boolean v3, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v3, :cond_70

    const-string/jumbo v2, "skipped!"

    goto :goto_28

    :cond_70
    if-nez v0, :cond_7d

    iget-object v3, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v3, v4, v5, v1}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    :cond_7d
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_28

    nop

    :sswitch_data_8a
    .sparse-switch
        0x9 -> :sswitch_1f
        0xa -> :sswitch_1f
        0xc -> :sswitch_1f
        0xd -> :sswitch_1f
        0x20 -> :sswitch_1f
        0x23 -> :sswitch_1c
        0x2c -> :sswitch_1f
        0x2f -> :sswitch_1c
        0x3a -> :sswitch_1f
        0x3b -> :sswitch_1c
        0x3d -> :sswitch_1c
        0x5b -> :sswitch_1f
        0x5c -> :sswitch_1c
        0x5d -> :sswitch_1f
        0x7b -> :sswitch_1f
        0x7d -> :sswitch_1f
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    :goto_1
    :sswitch_1
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    if-lt v2, v3, :cond_d

    invoke-direct {p0, v5}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_d
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v2, v3

    sparse-switch v0, :sswitch_data_70

    return v0

    :sswitch_1b
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    if-ne v2, v3, :cond_2a

    invoke-direct {p0, v5}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2a

    return v0

    :cond_2a
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v1, v2, v3

    sparse-switch v1, :sswitch_data_8a

    return v0

    :sswitch_37
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    const-string/jumbo v2, "*/"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    const-string/jumbo v2, "Unterminated comment"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_4e
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_1

    :sswitch_55
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    goto :goto_1

    :sswitch_5f
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    goto :goto_1

    :cond_66
    new-instance v2, Ljava/io/EOFException;

    const-string/jumbo v3, "End of input"

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_70
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_5f
        0x2f -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_8a
    .sparse-switch
        0x2a -> :sswitch_37
        0x2f -> :sswitch_55
    .end sparse-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :cond_1
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    :cond_3
    :goto_3
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-ge v3, v4, :cond_5b

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Landroid/util/JsonReader;->pos:I

    aget-char v1, v3, v4

    if-ne v1, p1, :cond_3c

    iget-boolean v3, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v3, :cond_1d

    const-string/jumbo v3, "skipped!"

    return-object v3

    :cond_1d
    if-nez v0, :cond_2d

    iget-object v3, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v2, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2d
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3c
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_47
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_3

    :cond_5b
    if-nez v0, :cond_62

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_62
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "Unterminated string"

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
.end method

.method private nextValue()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    invoke-direct {p0}, Landroid/util/JsonReader;->readLiteral()Landroid/util/JsonToken;

    move-result-object v1

    return-object v1

    :sswitch_12
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    :sswitch_1c
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    :sswitch_26
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :sswitch_29
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    nop

    :sswitch_data_36
    .sparse-switch
        0x22 -> :sswitch_29
        0x27 -> :sswitch_26
        0x5b -> :sswitch_1c
        0x7b -> :sswitch_12
    .end sparse-switch
.end method

.method private objectValue()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    :pswitch_7
    const-string/jumbo v0, "Expected \':\'"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_f
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lt v0, v1, :cond_1f

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1f
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_2f

    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    :cond_2f
    :pswitch_2f
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_3a
    .packed-switch 0x3a
        :pswitch_2f
        :pswitch_7
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method private peekStack()Landroid/util/JsonScope;
    .registers 3

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private pop()Landroid/util/JsonScope;
    .registers 3

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private push(Landroid/util/JsonScope;)V
    .registers 3

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private readEscapeCharacter()C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x4

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    if-ne v2, v3, :cond_18

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18

    const-string/jumbo v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_18
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v2, v3

    sparse-switch v0, :sswitch_data_66

    return v0

    :sswitch_26
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    if-le v2, v3, :cond_3e

    invoke-direct {p0, v5}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "Unterminated escape sequence"

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_3e
    iget-object v2, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v5}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    return v2

    :sswitch_56
    const/16 v2, 0x9

    return v2

    :sswitch_59
    const/16 v2, 0x8

    return v2

    :sswitch_5c
    const/16 v2, 0xa

    return v2

    :sswitch_5f
    const/16 v2, 0xd

    return v2

    :sswitch_62
    const/16 v2, 0xc

    return v2

    nop

    :sswitch_data_66
    .sparse-switch
        0x62 -> :sswitch_59
        0x66 -> :sswitch_62
        0x6e -> :sswitch_5c
        0x72 -> :sswitch_5f
        0x74 -> :sswitch_56
        0x75 -> :sswitch_26
    .end sparse-switch
.end method

.method private readLiteral()Landroid/util/JsonToken;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    if-nez v0, :cond_13

    const-string/jumbo v0, "Expected literal value"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_13
    invoke-direct {p0}, Landroid/util/JsonReader;->decodeLiteral()Landroid/util/JsonToken;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    :cond_22
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0
.end method

.method private replaceTop(Landroid/util/JsonScope;)V
    .registers 4

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/util/JsonReader;->limit:I

    if-le v1, v2, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_35

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_30

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_33
    const/4 v1, 0x1

    return v1

    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method private skipToEndOfLine()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    iget v2, p0, Landroid/util/JsonReader;->limit:I

    if-lt v1, v2, :cond_d

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_d
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v1, v2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_1f
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/util/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/util/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    return-void
.end method

.method public hasNext()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_11

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isLenient()Z
    .registers 2

    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_25

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a boolean but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v2, "true"

    if-ne v1, v2, :cond_31

    const/4 v0, 0x1

    :goto_2d
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public nextDouble()D
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v3, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2b

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v3, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2b

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected a double but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2b
    iget-object v2, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-wide v0
.end method

.method public nextInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v4, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v5, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2b

    iget-object v4, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v5, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v4, v5, :cond_2b

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected an int but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2b
    :try_start_2b
    iget-object v4, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_30} :catch_35

    move-result v3

    :cond_31
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return v3

    :catch_35
    move-exception v2

    iget-object v4, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-double v4, v3

    cmpl-double v4, v4, v0

    if-eqz v4, :cond_31

    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v6, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v3, v6, :cond_2b

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v6, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v3, v6, :cond_2b

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected a long but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2b
    :try_start_2b
    iget-object v3, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_30} :catch_35

    move-result-wide v4

    :cond_31
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-wide v4

    :catch_35
    move-exception v2

    iget-object v3, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v3, v6, v0

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public nextName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_27

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a name but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    iget-object v0, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-object v0
.end method

.method public nextNull()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-void
.end method

.method public nextString()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2d

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2d

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Expected a string but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    return-object v0
.end method

.method public peek()Landroid/util/JsonToken;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v3

    :cond_9
    invoke-static {}, Landroid/util/JsonReader;->-getandroid-util-JsonScopeSwitchesValues()[I

    move-result-object v3

    invoke-direct {p0}, Landroid/util/JsonReader;->peekStack()Landroid/util/JsonScope;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/JsonScope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_90

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :pswitch_20
    sget-object v3, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v1

    iget-boolean v3, p0, Landroid/util/JsonReader;->lenient:Z

    if-nez v3, :cond_55

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v4, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_55

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v4, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_55

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_55
    return-object v1

    :pswitch_56
    invoke-direct {p0, v6}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v3

    return-object v3

    :pswitch_5b
    invoke-direct {p0, v5}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v3

    return-object v3

    :pswitch_60
    invoke-direct {p0, v6}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v3

    return-object v3

    :pswitch_65
    invoke-direct {p0}, Landroid/util/JsonReader;->objectValue()Landroid/util/JsonToken;

    move-result-object v3

    return-object v3

    :pswitch_6a
    invoke-direct {p0, v5}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v3

    return-object v3

    :pswitch_6f
    :try_start_6f
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v2

    iget-boolean v3, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v3, :cond_78

    return-object v2

    :cond_78
    const-string/jumbo v3, "Expected EOF"

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    throw v3
    :try_end_80
    .catch Ljava/io/EOFException; {:try_start_6f .. :try_end_80} :catch_80

    :catch_80
    move-exception v0

    sget-object v3, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    iput-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v3

    :pswitch_86
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "JsonReader is closed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_86
        :pswitch_65
        :pswitch_56
        :pswitch_20
        :pswitch_60
        :pswitch_5b
        :pswitch_6f
        :pswitch_6a
    .end packed-switch
.end method

.method public setLenient(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/util/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/util/JsonReader;->skipping:Z

    :try_start_4
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1f

    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "No element left to skip"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v2

    iput-boolean v4, p0, Landroid/util/JsonReader;->skipping:Z

    throw v2

    :cond_1f
    const/4 v0, 0x0

    :cond_20
    :try_start_20
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_2c

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_1b

    if-ne v1, v2, :cond_33

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    :cond_2e
    :goto_2e
    if-nez v0, :cond_20

    iput-boolean v4, p0, Landroid/util/JsonReader;->skipping:Z

    return-void

    :cond_33
    :try_start_33
    sget-object v2, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_3b

    sget-object v2, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_1b

    if-ne v1, v2, :cond_2e

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/util/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
