.class public Lmiui/maml/data/StringFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "StringFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/StringFunctions$Fun;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-StringFunctions$FunSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private final mFun:Lmiui/maml/data/StringFunctions$Fun;


# direct methods
.method private static synthetic -getmiui-maml-data-StringFunctions$FunSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/StringFunctions;->-miui-maml-data-StringFunctions$FunSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/StringFunctions;->-miui-maml-data-StringFunctions$FunSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/StringFunctions$Fun;->values()[Lmiui/maml/data/StringFunctions$Fun;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->INVALID:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_18} :catch_b2

    :goto_18
    :try_start_18
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_21} :catch_af

    :goto_21
    :try_start_21
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2a} :catch_ac

    :goto_2a
    :try_start_2a
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_33} :catch_aa

    :goto_33
    :try_start_33
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3c} :catch_a8

    :goto_3c
    :try_start_3c
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_a6

    :goto_45
    :try_start_45
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_a4

    :goto_4e
    :try_start_4e
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_a2

    :goto_57
    :try_start_57
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_a0

    :goto_61
    :try_start_61
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_9e

    :goto_6b
    :try_start_6b
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_9c

    :goto_75
    :try_start_75
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_9a

    :goto_7f
    :try_start_7f
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_98

    :goto_89
    :try_start_89
    sget-object v1, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_96

    :goto_93
    sput-object v0, Lmiui/maml/data/StringFunctions;->-miui-maml-data-StringFunctions$FunSwitchesValues:[I

    return-object v0

    :catch_96
    move-exception v1

    goto :goto_93

    :catch_98
    move-exception v1

    goto :goto_89

    :catch_9a
    move-exception v1

    goto :goto_7f

    :catch_9c
    move-exception v1

    goto :goto_75

    :catch_9e
    move-exception v1

    goto :goto_6b

    :catch_a0
    move-exception v1

    goto :goto_61

    :catch_a2
    move-exception v1

    goto :goto_57

    :catch_a4
    move-exception v1

    goto :goto_4e

    :catch_a6
    move-exception v1

    goto :goto_45

    :catch_a8
    move-exception v1

    goto :goto_3c

    :catch_aa
    move-exception v1

    goto :goto_33

    :catch_ac
    move-exception v1

    goto/16 :goto_2a

    :catch_af
    move-exception v1

    goto/16 :goto_21

    :catch_b2
    move-exception v1

    goto/16 :goto_18
.end method

.method private constructor <init>(Lmiui/maml/data/StringFunctions$Fun;I)V
    .registers 3

    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    return-void
.end method

.method public static load()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    const-string/jumbo v0, "strToLowerCase"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOLOWER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strToUpperCase"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TOUPPER:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strTrim"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_TRIM:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strReplace"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACE:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strReplaceAll"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEALL:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strReplaceFirst"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_REPLACEFIRST:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strContains"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_CONTAINS:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strStartsWith"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_STARTWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strEndsWith"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ENDSWITH:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strIsEmpty"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_ISEMPTY:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strMatches"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_MATCHES:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strIndexOf"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_INDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "strLastIndexOf"

    new-instance v1, Lmiui/maml/data/StringFunctions;

    sget-object v2, Lmiui/maml/data/StringFunctions$Fun;->STR_LASTINDEXOF:Lmiui/maml/data/StringFunctions$Fun;

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/StringFunctions;-><init>(Lmiui/maml/data/StringFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .registers 13

    const/4 v5, -0x1

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_de

    :pswitch_14
    aget-object v6, p1, v3

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_f0

    aget-object v6, p1, v4

    invoke-virtual {v6}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v7}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_f6

    :pswitch_3e
    const-string/jumbo v3, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Lmiui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :pswitch_5f
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8, v9}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v4

    return-wide v4

    :pswitch_68
    if-eqz v1, :cond_70

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_71

    :cond_70
    move v3, v4

    :cond_71
    int-to-double v4, v3

    return-wide v4

    :pswitch_73
    if-eqz v1, :cond_7f

    if-eqz v2, :cond_7f

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7f

    :goto_7d
    int-to-double v4, v4

    return-wide v4

    :cond_7f
    move v4, v3

    goto :goto_7d

    :pswitch_81
    if-eqz v1, :cond_8d

    if-eqz v2, :cond_8d

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    :goto_8b
    int-to-double v4, v4

    return-wide v4

    :cond_8d
    move v4, v3

    goto :goto_8b

    :pswitch_8f
    if-eqz v1, :cond_9b

    if-eqz v2, :cond_9b

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    :goto_99
    int-to-double v4, v4

    return-wide v4

    :cond_9b
    move v4, v3

    goto :goto_99

    :pswitch_9d
    if-eqz v1, :cond_a9

    if-eqz v2, :cond_a9

    :try_start_a1
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_a4
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_a1 .. :try_end_a4} :catch_ab

    move-result v5

    if-eqz v5, :cond_a9

    :goto_a7
    int-to-double v4, v4

    return-wide v4

    :cond_a9
    move v4, v3

    goto :goto_a7

    :catch_ab
    move-exception v0

    const-string/jumbo v3, "Expression"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invaid pattern of matches: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v8

    :pswitch_c7
    if-eqz v1, :cond_d1

    if-eqz v2, :cond_d1

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :goto_cf
    int-to-double v4, v3

    return-wide v4

    :cond_d1
    move v3, v5

    goto :goto_cf

    :pswitch_d3
    if-eqz v1, :cond_db

    if-eqz v2, :cond_db

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    :cond_db
    int-to-double v4, v5

    return-wide v4

    nop

    :pswitch_data_de
    .packed-switch 0x7
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
        :pswitch_14
        :pswitch_5f
        :pswitch_5f
        :pswitch_5f
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x4
        :pswitch_68
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_73
        :pswitch_8f
        :pswitch_c7
        :pswitch_3e
        :pswitch_d3
        :pswitch_9d
        :pswitch_3e
        :pswitch_3e
        :pswitch_3e
        :pswitch_81
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .registers 11

    const/4 v7, 0x0

    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_cc

    :pswitch_10
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    return-object v7

    :pswitch_1a
    invoke-virtual {p0, p1, p2}, Lmiui/maml/data/StringFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v4

    invoke-static {v4, v5}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_23
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_e4

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_44

    if-nez v3, :cond_54

    :cond_44
    return-object v1

    :pswitch_45
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_4a
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_4f
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_54
    invoke-static {}, Lmiui/maml/data/StringFunctions;->-getmiui-maml-data-StringFunctions$FunSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v5}, Lmiui/maml/data/StringFunctions$Fun;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_ee

    const-string/jumbo v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fail to evaluteStr FunctionExpression, invalid function: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/data/StringFunctions;->mFun:Lmiui/maml/data/StringFunctions$Fun;

    invoke-virtual {v6}, Lmiui/maml/data/StringFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :pswitch_84
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :pswitch_89
    :try_start_89
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8c
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_89 .. :try_end_8c} :catch_8e

    move-result-object v4

    return-object v4

    :catch_8e
    move-exception v0

    const-string/jumbo v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invaid pattern of replaceAll: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :pswitch_aa
    :try_start_aa
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_ad
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_aa .. :try_end_ad} :catch_af

    move-result-object v4

    return-object v4

    :catch_af
    move-exception v0

    const-string/jumbo v4, "Expression"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invaid pattern of replaceFirst:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_1a
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0xb
        :pswitch_45
        :pswitch_4a
        :pswitch_4f
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x7
        :pswitch_84
        :pswitch_89
        :pswitch_aa
    .end packed-switch
.end method
