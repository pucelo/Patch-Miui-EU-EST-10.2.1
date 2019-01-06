.class public abstract Lmiui/maml/data/Expression;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$ArrayVariableExpression;,
        Lmiui/maml/data/Expression$BinaryExpression;,
        Lmiui/maml/data/Expression$FunctionExpression;,
        Lmiui/maml/data/Expression$FunctionImpl;,
        Lmiui/maml/data/Expression$NumberArrayVariableExpression;,
        Lmiui/maml/data/Expression$NumberExpression;,
        Lmiui/maml/data/Expression$NumberVariableExpression;,
        Lmiui/maml/data/Expression$Ope;,
        Lmiui/maml/data/Expression$OpeInfo;,
        Lmiui/maml/data/Expression$StringArrayVariableExpression;,
        Lmiui/maml/data/Expression$StringExpression;,
        Lmiui/maml/data/Expression$StringVariableExpression;,
        Lmiui/maml/data/Expression$Tokenizer;,
        Lmiui/maml/data/Expression$UnaryExpression;,
        Lmiui/maml/data/Expression$VariableExpression;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I = null

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# direct methods
.method private static synthetic -getmiui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/Expression;->-miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/Expression;->-miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->values()[Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_74

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_72

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_70

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_6e

    :goto_33
    :try_start_33
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_6c

    :goto_3c
    :try_start_3c
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_6a

    :goto_45
    :try_start_45
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_68

    :goto_4e
    :try_start_4e
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_66

    :goto_57
    :try_start_57
    sget-object v1, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_64

    :goto_61
    sput-object v0, Lmiui/maml/data/Expression;->-miui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues:[I

    return-object v0

    :catch_64
    move-exception v1

    goto :goto_61

    :catch_66
    move-exception v1

    goto :goto_57

    :catch_68
    move-exception v1

    goto :goto_4e

    :catch_6a
    move-exception v1

    goto :goto_45

    :catch_6c
    move-exception v1

    goto :goto_3c

    :catch_6e
    move-exception v1

    goto :goto_33

    :catch_70
    move-exception v1

    goto :goto_29

    :catch_72
    move-exception v1

    goto :goto_20

    :catch_74
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharRest(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isDigitCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharRest(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(C)Z
    .registers 2

    invoke-static {p0}, Lmiui/maml/data/Expression;->isVariableChar(C)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    new-instance v1, Lmiui/maml/data/RootExpression;

    invoke-direct {v1, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    goto :goto_7
.end method

.method private static buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/maml/data/Variables;",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            "Ljava/util/Stack",
            "<",
            "Lmiui/maml/data/Expression$Tokenizer$Token;",
            ">;)",
            "Lmiui/maml/data/Expression;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-static {p0, v2}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/Expression;->checkParams([Lmiui/maml/data/Expression;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid expressions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_2a
    :try_start_2a
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4a

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    sget-object v3, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    if-ne v2, v3, :cond_4a

    new-instance v3, Lmiui/maml/data/Expression$FunctionExpression;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression$Tokenizer$Token;

    iget-object v2, v2, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-direct {v3, p0, v1, v2}, Lmiui/maml/data/Expression$FunctionExpression;-><init>(Lmiui/maml/data/Variables;[Lmiui/maml/data/Expression;Ljava/lang/String;)V

    return-object v3

    :cond_4a
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_60

    const/4 v2, 0x0

    aget-object v2, v1, v2
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_51} :catch_52

    return-object v2

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "Expression"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    const-string/jumbo v2, "Expression"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fail to buid: multiple expressions in brackets, but seems no function presents:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private static buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;
    .registers 21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    return-object v16

    :cond_d
    new-instance v13, Lmiui/maml/data/Expression$Tokenizer;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lmiui/maml/data/Expression$Tokenizer;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    const/4 v12, 0x0

    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    :goto_20
    invoke-virtual {v13}, Lmiui/maml/data/Expression$Tokenizer;->getToken()Lmiui/maml/data/Expression$Tokenizer$Token;

    move-result-object v14

    if-eqz v14, :cond_294

    invoke-static {}, Lmiui/maml/data/Expression;->-getmiui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues()[I

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_2ee

    :goto_37
    move-object v12, v14

    goto :goto_20

    :pswitch_39
    const/4 v9, 0x0

    invoke-static {}, Lmiui/maml/data/Expression;->-getmiui-maml-data-Expression$Tokenizer$TokenTypeSwitchesValues()[I

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$Tokenizer$TokenType;->ordinal()I

    move-result v17

    aget v16, v16, v17

    packed-switch v16, :pswitch_data_302

    :cond_4b
    :goto_4b
    :pswitch_4b
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_1c7

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1c7

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1c7

    new-instance v10, Lmiui/maml/data/Expression$UnaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v10, v9, v0}, Lmiui/maml/data/Expression$UnaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object v9, v10

    goto :goto_4b

    :pswitch_88
    new-instance v9, Lmiui/maml/data/Expression$NumberVariableExpression;

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$NumberVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_96
    new-instance v9, Lmiui/maml/data/Expression$StringVariableExpression;

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lmiui/maml/data/Expression$StringVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    goto :goto_4b

    :pswitch_a4
    invoke-virtual {v11}, Ljava/util/Stack;->empty()Z

    move-result v16

    if-nez v16, :cond_fa

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_fa

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v8, v0, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    :goto_ce
    new-instance v9, Lmiui/maml/data/Expression$NumberExpression;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_fc

    const-string/jumbo v16, "-"

    :goto_da
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_4b

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_4b

    :cond_fa
    const/4 v8, 0x0

    goto :goto_ce

    :cond_fc
    const-string/jumbo v16, ""

    goto :goto_da

    :pswitch_100
    new-instance v9, Lmiui/maml/data/Expression$StringExpression;

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Lmiui/maml/data/Expression$StringExpression;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4b

    :pswitch_10d
    move-object/from16 v0, p0

    invoke-static {v0, v14, v11}, Lmiui/maml/data/Expression;->buildBracket(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression$Tokenizer$Token;Ljava/util/Stack;)Lmiui/maml/data/Expression;

    move-result-object v9

    if-nez v9, :cond_4b

    const/16 v16, 0x0

    return-object v16

    :pswitch_118
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_145

    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: no array name before []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_145
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/maml/data/Expression;

    instance-of v0, v7, Lmiui/maml/data/Expression$VariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_1a8

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->token:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    if-nez v6, :cond_180

    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: no index expression in []:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_180
    move-object/from16 v16, v7

    check-cast v16, Lmiui/maml/data/Expression$VariableExpression;

    invoke-virtual/range {v16 .. v16}, Lmiui/maml/data/Expression$VariableExpression;->getName()Ljava/lang/String;

    move-result-object v15

    instance-of v0, v7, Lmiui/maml/data/Expression$NumberVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_19a

    new-instance v9, Lmiui/maml/data/Expression$NumberArrayVariableExpression;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$NumberArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    :cond_195
    :goto_195
    if-nez v9, :cond_4b

    const/16 v16, 0x0

    return-object v16

    :cond_19a
    instance-of v0, v7, Lmiui/maml/data/Expression$StringVariableExpression;

    move/from16 v16, v0

    if-eqz v16, :cond_195

    new-instance v9, Lmiui/maml/data/Expression$StringArrayVariableExpression;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v6}, Lmiui/maml/data/Expression$StringArrayVariableExpression;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V

    goto :goto_195

    :cond_1a8
    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: the expression before [] is not a variable:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_195

    :cond_1c7
    invoke-virtual {v5, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_37

    :pswitch_1cc
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->participants:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_223

    if-eqz v12, :cond_1ec

    iget-object v0, v12, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_223

    :cond_1ec
    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lmiui/maml/data/Expression$OpeInfo;->unary:Z

    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_37

    :cond_1fd
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    new-instance v17, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_223
    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v16

    if-lez v16, :cond_28a

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->type:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v16, v0

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_28a

    invoke-virtual {v11}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v16, v0

    iget-object v0, v14, Lmiui/maml/data/Expression$Tokenizer$Token;->info:Lmiui/maml/data/Expression$OpeInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmiui/maml/data/Expression$OpeInfo;->priority:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    if-gtz v16, :cond_28a

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1fd

    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: invalid operator position:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_28a
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_37

    :pswitch_28f
    invoke-virtual {v11, v14}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_37

    :cond_294
    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v16

    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2c5

    const-string/jumbo v16, "Expression"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "fail to buid: invalid expression:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    return-object v16

    :cond_2c5
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/Expression;

    :goto_2cb
    invoke-virtual {v11}, Ljava/util/Stack;->size()I

    move-result v16

    if-lez v16, :cond_2ec

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/Expression;

    new-instance v4, Lmiui/maml/data/Expression$BinaryExpression;

    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, v16

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer$Token;->op:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v4, v2, v3, v0}, Lmiui/maml/data/Expression$BinaryExpression;-><init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V

    move-object v3, v4

    goto :goto_2cb

    :cond_2ec
    return-object v3

    nop

    :pswitch_data_2ee
    .packed-switch 0x1
        :pswitch_39
        :pswitch_39
        :pswitch_28f
        :pswitch_39
        :pswitch_1cc
        :pswitch_39
        :pswitch_39
        :pswitch_39
    .end packed-switch

    :pswitch_data_302
    .packed-switch 0x1
        :pswitch_10d
        :pswitch_118
        :pswitch_4b
        :pswitch_a4
        :pswitch_4b
        :pswitch_100
        :pswitch_88
        :pswitch_96
    .end packed-switch
.end method

.method public static buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .registers 8

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    return-object v5

    :cond_8
    invoke-static {p0, p1}, Lmiui/maml/data/Expression;->buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    array-length v4, v1

    new-array v3, v4, [Lmiui/maml/data/Expression;

    const/4 v2, 0x0

    :goto_10
    array-length v4, v1

    if-ge v2, v4, :cond_2c

    aget-object v0, v1, v2

    if-eqz v0, :cond_1f

    instance-of v4, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-nez v4, :cond_1f

    instance-of v4, v0, Lmiui/maml/data/Expression$StringExpression;

    if-eqz v4, :cond_24

    :cond_1f
    aput-object v0, v3, v2

    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    new-instance v4, Lmiui/maml/data/RootExpression;

    invoke-direct {v4, p0, v0}, Lmiui/maml/data/RootExpression;-><init>(Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;)V

    aput-object v4, v3, v2

    goto :goto_21

    :cond_2c
    return-object v3
.end method

.method private static buildMultipleInner(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;
    .registers 10

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_3f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v4, :cond_28

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_31

    if-nez v0, :cond_31

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v3, 0x1

    :cond_28
    :goto_28
    const/16 v7, 0x27

    if-ne v1, v7, :cond_2e

    xor-int/lit8 v4, v4, 0x1

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_31
    const/16 v7, 0x28

    if-ne v1, v7, :cond_38

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_38
    const/16 v7, 0x29

    if-ne v1, v7, :cond_28

    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    :cond_3f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_50

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/data/Expression;->buildInner(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/data/Expression;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/data/Expression;

    return-object v7
.end method

.method private static checkParams([Lmiui/maml/data/Expression;)Z
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_d

    aget-object v1, p0, v0

    if-nez v1, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v1, 0x1

    return v1
.end method

.method private static isDigitCharRest(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x61

    if-lt p0, v1, :cond_12

    const/16 v1, 0x66

    if-le p0, v1, :cond_9

    :cond_12
    const/16 v1, 0x41

    if-lt p0, v1, :cond_1a

    const/16 v1, 0x46

    if-le p0, v1, :cond_9

    :cond_1a
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isDigitCharStart(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x2e

    if-eq p0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isFunctionCharRest(C)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lmiui/maml/data/Expression;->isFunctionCharStart(C)Z

    move-result v2

    if-nez v2, :cond_c

    const/16 v2, 0x5f

    if-ne p0, v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    const/16 v2, 0x30

    if-lt p0, v2, :cond_15

    const/16 v2, 0x39

    if-le p0, v2, :cond_c

    :cond_15
    move v0, v1

    goto :goto_c
.end method

.method private static isFunctionCharStart(C)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x61

    if-lt p0, v2, :cond_b

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x41

    if-lt p0, v2, :cond_13

    const/16 v2, 0x5a

    if-le p0, v2, :cond_a

    :cond_13
    move v0, v1

    goto :goto_a
.end method

.method private static isVariableChar(C)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x61

    if-lt p0, v2, :cond_b

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x41

    if-lt p0, v2, :cond_13

    const/16 v2, 0x5a

    if-le p0, v2, :cond_a

    :cond_13
    const/16 v2, 0x5f

    if-eq p0, v2, :cond_a

    const/16 v2, 0x2e

    if-eq p0, v2, :cond_a

    const/16 v2, 0x30

    if-lt p0, v2, :cond_23

    const/16 v2, 0x39

    if-le p0, v2, :cond_a

    :cond_23
    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .registers 2

    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    return-void
.end method

.method public abstract evaluate()D
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .registers 5

    invoke-virtual {p0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    :try_start_4
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method
