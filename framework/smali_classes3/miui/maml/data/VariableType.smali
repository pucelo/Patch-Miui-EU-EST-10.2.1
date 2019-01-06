.class public final enum Lmiui/maml/data/VariableType;
.super Ljava/lang/Enum;
.source "VariableType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/VariableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/VariableType;

.field public static final enum BOOLEAN_ARR:Lmiui/maml/data/VariableType;

.field public static final enum BYTE_ARR:Lmiui/maml/data/VariableType;

.field public static final enum CHAR_ARR:Lmiui/maml/data/VariableType;

.field public static final enum DOUBLE_ARR:Lmiui/maml/data/VariableType;

.field public static final enum FLOAT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum INT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum INVALID:Lmiui/maml/data/VariableType;

.field public static final enum LONG_ARR:Lmiui/maml/data/VariableType;

.field public static final enum NUM:Lmiui/maml/data/VariableType;

.field public static final enum NUM_ARR:Lmiui/maml/data/VariableType;

.field public static final enum OBJ:Lmiui/maml/data/VariableType;

.field public static final enum OBJ_ARR:Lmiui/maml/data/VariableType;

.field public static final enum SHORT_ARR:Lmiui/maml/data/VariableType;

.field public static final enum STR:Lmiui/maml/data/VariableType;

.field public static final enum STR_ARR:Lmiui/maml/data/VariableType;


# instance fields
.field public final mTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "NUM"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v5, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "STR"

    const-class v2, Ljava/lang/String;

    invoke-direct {v0, v1, v6, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "OBJ"

    const-class v2, Ljava/lang/Object;

    invoke-direct {v0, v1, v7, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "NUM_ARR"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v8, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "DOUBLE_ARR"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "FLOAT_ARR"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "INT_ARR"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "SHORT_ARR"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "BYTE_ARR"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "LONG_ARR"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "BOOLEAN_ARR"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "CHAR_ARR"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "STR_ARR"

    const-class v2, Ljava/lang/String;

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    new-instance v0, Lmiui/maml/data/VariableType;

    const-string/jumbo v1, "OBJ_ARR"

    const-class v2, Ljava/lang/Object;

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3, v2}, Lmiui/maml/data/VariableType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    const/16 v0, 0xf

    new-array v0, v0, [Lmiui/maml/data/VariableType;

    sget-object v1, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    aput-object v1, v0, v8

    sget-object v1, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    return-void
.end method

.method public static parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .registers 2

    const-string/jumbo v0, "number"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_c
    const-string/jumbo v0, "string"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_18
    const-string/jumbo v0, "object"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_24
    const-string/jumbo v0, "number[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_30
    const-string/jumbo v0, "double[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_3c
    const-string/jumbo v0, "float[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    sget-object v0, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_48
    const-string/jumbo v0, "int[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object v0, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_54
    const-string/jumbo v0, "short[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_60
    const-string/jumbo v0, "byte[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    sget-object v0, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_6c
    const-string/jumbo v0, "long[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_78

    sget-object v0, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_78
    const-string/jumbo v0, "boolean[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    sget-object v0, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_84
    const-string/jumbo v0, "char[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_90
    const-string/jumbo v0, "string[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    sget-object v0, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_9c
    const-string/jumbo v0, "object[]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a8

    sget-object v0, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    return-object v0

    :cond_a8
    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/VariableType;
    .registers 2

    const-class v0, Lmiui/maml/data/VariableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/VariableType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/VariableType;
    .registers 1

    sget-object v0, Lmiui/maml/data/VariableType;->$VALUES:[Lmiui/maml/data/VariableType;

    return-object v0
.end method


# virtual methods
.method public isArray()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    sget-object v2, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_1a

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    sget-object v2, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method public isNumber()Z
    .registers 2

    sget-object v0, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isNumberArray()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    sget-object v2, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v2

    if-lt v1, v2, :cond_1a

    invoke-virtual {p0}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    sget-object v2, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v2}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method
