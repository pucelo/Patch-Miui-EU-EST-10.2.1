.class public Lcom/android/internal/util/TypedProperties;
.super Ljava/util/HashMap;
.source "TypedProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/TypedProperties$ParseException;,
        Lcom/android/internal/util/TypedProperties$TypeException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final NULL_STRING:Ljava/lang/String;

.field public static final STRING_NOT_SET:I = -0x1

.field public static final STRING_NULL:I = 0x0

.field public static final STRING_SET:I = 0x1

.field public static final STRING_TYPE_MISMATCH:I = -0x2

.field static final TYPE_BOOLEAN:I = 0x5a

.field static final TYPE_BYTE:I = 0x149

.field static final TYPE_DOUBLE:I = 0x846

.field static final TYPE_ERROR:I = -0x1

.field static final TYPE_FLOAT:I = 0x446

.field static final TYPE_INT:I = 0x449

.field static final TYPE_LONG:I = 0x849

.field static final TYPE_SHORT:I = 0x249

.field static final TYPE_STRING:I = 0x734c

.field static final TYPE_UNSET:I = 0x78


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "<TypedProperties:NULL_STRING>"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method static initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;
    .registers 9

    const/16 v7, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/4 v3, 0x1

    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p0}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    const/16 v1, 0x30

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x41

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x61

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x5f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x24

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x2e

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x2d

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x2b

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Ljava/io/StreamTokenizer;->wordChars(II)V

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->ordinaryChar(I)V

    invoke-virtual {v0, v7, v7}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    invoke-virtual {v0, v4, v4}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    invoke-virtual {v0, v5, v5}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    invoke-virtual {v0, v6, v6}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    invoke-virtual {v0, v3}, Ljava/io/StreamTokenizer;->slashStarComments(Z)V

    invoke-virtual {v0, v3}, Ljava/io/StreamTokenizer;->slashSlashComments(Z)V

    return-object v0
.end method

.method static interpretType(Ljava/lang/String;)I
    .registers 2

    const-string/jumbo v0, "unset"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x78

    return v0

    :cond_c
    const-string/jumbo v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x5a

    return v0

    :cond_18
    const-string/jumbo v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 v0, 0x149

    return v0

    :cond_24
    const-string/jumbo v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x249

    return v0

    :cond_30
    const-string/jumbo v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const/16 v0, 0x449

    return v0

    :cond_3c
    const-string/jumbo v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/16 v0, 0x849

    return v0

    :cond_48
    const-string/jumbo v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/16 v0, 0x446

    return v0

    :cond_54
    const-string/jumbo v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/16 v0, 0x846

    return v0

    :cond_60
    const-string/jumbo v0, "String"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 v0, 0x734c

    return v0

    :cond_6c
    const/4 v0, -0x1

    return v0
.end method

.method static parse(Ljava/io/Reader;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/TypedProperties$ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v13, 0x78

    const/4 v12, -0x1

    const/4 v11, -0x3

    const/4 v10, 0x0

    invoke-static {p0}, Lcom/android/internal/util/TypedProperties;->initTokenizer(Ljava/io/Reader;)Ljava/io/StreamTokenizer;

    move-result-object v4

    const-string/jumbo v0, "[a-zA-Z_$][0-9a-zA-Z_$]*"

    const-string/jumbo v8, "([a-zA-Z_$][0-9a-zA-Z_$]*\\.)*[a-zA-Z_$][0-9a-zA-Z_$]*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    :cond_13
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    if-ne v5, v12, :cond_1a

    return-void

    :cond_1a
    if-eq v5, v11, :cond_25

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "type name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_25
    iget-object v8, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/TypedProperties;->interpretType(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v12, :cond_36

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "valid type name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_36
    iput-object v10, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-ne v6, v13, :cond_4b

    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    const/16 v8, 0x28

    if-eq v5, v8, :cond_4b

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "\'(\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_4b
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    if-eq v5, v11, :cond_5a

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "property name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_5a
    iget-object v2, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6f

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "valid property name"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_6f
    iput-object v10, v4, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    if-ne v6, v13, :cond_98

    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    const/16 v8, 0x29

    if-eq v5, v8, :cond_84

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "\')\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_84
    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_87
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    const/16 v8, 0x3b

    if-eq v5, v8, :cond_13

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "\';\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_98
    invoke-virtual {v4}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v5

    const/16 v8, 0x3d

    if-eq v5, v8, :cond_a9

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "\'=\'"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_a9
    invoke-static {v4, v6}, Lcom/android/internal/util/TypedProperties;->parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c6

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-eq v8, v9, :cond_c6

    new-instance v8, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v9, "(property previously declared as a different type)"

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v8

    :cond_c6
    invoke-interface {p1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_87
.end method

.method static parseValue(Ljava/io/StreamTokenizer;I)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, -0x3

    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v3

    const/16 v9, 0x5a

    if-ne p1, v9, :cond_39

    if-eq v3, v11, :cond_14

    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "boolean constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_14
    const-string/jumbo v9, "true"

    iget-object v10, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v9

    :cond_22
    const-string/jumbo v9, "false"

    iget-object v10, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v9

    :cond_30
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "boolean constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_39
    and-int/lit16 v9, p1, 0xff

    const/16 v10, 0x49

    if-ne v9, v10, :cond_f5

    if-eq v3, v11, :cond_4a

    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "integer constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_4a
    :try_start_4a
    iget-object v9, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_4a .. :try_end_53} :catch_75

    move-result-wide v6

    shr-int/lit8 v9, p1, 0x8

    and-int/lit16 v8, v9, 0xff

    packed-switch v8, :pswitch_data_19a

    :pswitch_5b
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Internal error; unexpected integer type width "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_75
    move-exception v2

    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "integer constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :pswitch_7f
    const-wide/16 v10, -0x80

    cmp-long v9, v6, v10

    if-ltz v9, :cond_8b

    const-wide/16 v10, 0x7f

    cmp-long v9, v6, v10

    if-lez v9, :cond_94

    :cond_8b
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "8-bit integer constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_94
    new-instance v9, Ljava/lang/Byte;

    long-to-int v10, v6

    int-to-byte v10, v10

    invoke-direct {v9, v10}, Ljava/lang/Byte;-><init>(B)V

    return-object v9

    :pswitch_9c
    const-wide/16 v10, -0x8000

    cmp-long v9, v6, v10

    if-ltz v9, :cond_a8

    const-wide/16 v10, 0x7fff

    cmp-long v9, v6, v10

    if-lez v9, :cond_b1

    :cond_a8
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "16-bit integer constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_b1
    new-instance v9, Ljava/lang/Short;

    long-to-int v10, v6

    int-to-short v10, v10

    invoke-direct {v9, v10}, Ljava/lang/Short;-><init>(S)V

    return-object v9

    :pswitch_b9
    const-wide/32 v10, -0x80000000

    cmp-long v9, v6, v10

    if-ltz v9, :cond_c7

    const-wide/32 v10, 0x7fffffff

    cmp-long v9, v6, v10

    if-lez v9, :cond_d0

    :cond_c7
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "32-bit integer constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_d0
    new-instance v9, Ljava/lang/Integer;

    long-to-int v10, v6

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    return-object v9

    :pswitch_d7
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v9, v6, v10

    if-ltz v9, :cond_e6

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v9, v6, v10

    if-lez v9, :cond_ef

    :cond_e6
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "64-bit integer constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_ef
    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, v6, v7}, Ljava/lang/Long;-><init>(J)V

    return-object v9

    :cond_f5
    and-int/lit16 v9, p1, 0xff

    const/16 v10, 0x46

    if-ne v9, v10, :cond_15c

    if-eq v3, v11, :cond_106

    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "float constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_106
    :try_start_106
    iget-object v9, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_10b
    .catch Ljava/lang/NumberFormatException; {:try_start_106 .. :try_end_10b} :catch_145

    move-result-wide v4

    shr-int/lit8 v9, p1, 0x8

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x4

    if-ne v9, v10, :cond_156

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/16 v10, 0x0

    cmpl-double v9, v0, v10

    if-eqz v9, :cond_14f

    invoke-static {v4, v5}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_14f

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_14f

    const-wide/high16 v10, 0x36a0000000000000L    # 1.401298464324817E-45

    cmpg-double v9, v0, v10

    if-ltz v9, :cond_13c

    const-wide v10, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v9, v0, v10

    if-lez v9, :cond_14f

    :cond_13c
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "32-bit float constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :catch_145
    move-exception v2

    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "float constant"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_14f
    new-instance v9, Ljava/lang/Float;

    double-to-float v10, v4

    invoke-direct {v9, v10}, Ljava/lang/Float;-><init>(F)V

    return-object v9

    :cond_156
    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v4, v5}, Ljava/lang/Double;-><init>(D)V

    return-object v9

    :cond_15c
    const/16 v9, 0x734c

    if-ne p1, v9, :cond_180

    const/16 v9, 0x22

    if-ne v3, v9, :cond_167

    iget-object v9, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    return-object v9

    :cond_167
    if-ne v3, v11, :cond_177

    const-string/jumbo v9, "null"

    iget-object v10, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_177

    sget-object v9, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    return-object v9

    :cond_177
    new-instance v9, Lcom/android/internal/util/TypedProperties$ParseException;

    const-string/jumbo v10, "double-quoted string or \'null\'"

    invoke-direct {v9, p0, v10}, Lcom/android/internal/util/TypedProperties$ParseException;-><init>(Ljava/io/StreamTokenizer;Ljava/lang/String;)V

    throw v9

    :cond_180
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Internal error; unknown type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_data_19a
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_9c
        :pswitch_5b
        :pswitch_b9
        :pswitch_5b
        :pswitch_5b
        :pswitch_5b
        :pswitch_d7
    .end packed-switch
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 6

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "boolean"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)B
    .registers 6

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    return v1

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "byte"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 8

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-wide p2

    :cond_7
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "double"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 6

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "float"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 6

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "int"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/TypedProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 8

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return-wide p2

    :cond_7
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "long"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getShort(Ljava/lang/String;)S
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 6

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_12

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    return v1

    :cond_12
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "short"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/TypedProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    return-object p2

    :cond_8
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_d

    return-object v2

    :cond_d
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/util/TypedProperties$TypeException;

    const-string/jumbo v2, "string"

    invoke-direct {v1, p1, v0, v2}, Lcom/android/internal/util/TypedProperties$TypeException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw v1
.end method

.method public getStringInfo(Ljava/lang/String;)I
    .registers 4

    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, -0x1

    return v1

    :cond_8
    sget-object v1, Lcom/android/internal/util/TypedProperties;->NULL_STRING:Ljava/lang/String;

    if-ne v0, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    return v1

    :cond_14
    const/4 v1, -0x2

    return v1
.end method

.method public load(Ljava/io/Reader;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/android/internal/util/TypedProperties;->parse(Ljava/io/Reader;Ljava/util/Map;)V

    return-void
.end method
