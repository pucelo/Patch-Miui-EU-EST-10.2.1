.class public final enum Lmiui/maml/data/Expression$Tokenizer$TokenType;
.super Ljava/lang/Enum;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/maml/data/Expression$Tokenizer$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

.field public static final enum VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "VAR_NUM"

    invoke-direct {v0, v1, v4}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "VAR_STR"

    invoke-direct {v0, v1, v5}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "NUM"

    invoke-direct {v0, v1, v6}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "STR"

    invoke-direct {v0, v1, v7}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "OPE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "FUN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "BRACKET_ROUND"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    new-instance v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const-string/jumbo v1, "BRACKET_SQUARE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const/16 v0, 0x9

    new-array v0, v0, [Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    aput-object v1, v0, v7

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .registers 2

    const-class v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method

.method public static values()[Lmiui/maml/data/Expression$Tokenizer$TokenType;
    .registers 1

    sget-object v0, Lmiui/maml/data/Expression$Tokenizer$TokenType;->$VALUES:[Lmiui/maml/data/Expression$Tokenizer$TokenType;

    return-object v0
.end method
