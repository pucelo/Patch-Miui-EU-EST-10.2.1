.class public Lmiui/maml/data/BaseFunctions;
.super Lmiui/maml/data/Expression$FunctionImpl;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/BaseFunctions$Fun;,
        Lmiui/maml/data/BaseFunctions$NullObjFunction;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-BaseFunctions$FunSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "Expression"


# instance fields
.field private fun:Lmiui/maml/data/BaseFunctions$Fun;

.field private mEvalExp:Lmiui/maml/data/Expression;

.field private mEvalExpStr:Ljava/lang/String;


# direct methods
.method private static synthetic -getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/BaseFunctions;->-miui-maml-data-BaseFunctions$FunSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/BaseFunctions;->-miui-maml-data-BaseFunctions$FunSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/BaseFunctions$Fun;->values()[Lmiui/maml/data/BaseFunctions$Fun;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_1ea

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_1e7

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_1e4

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_1e1

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_1de

    :goto_3b
    :try_start_3b
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_1db

    :goto_44
    :try_start_44
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4d} :catch_1d8

    :goto_4d
    :try_start_4d
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_57} :catch_1d5

    :goto_57
    :try_start_57
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_1d2

    :goto_61
    :try_start_61
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_1cf

    :goto_6b
    :try_start_6b
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_1cc

    :goto_75
    :try_start_75
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_1c9

    :goto_7f
    :try_start_7f
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_1c6

    :goto_89
    :try_start_89
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_1c3

    :goto_93
    :try_start_93
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_1c0

    :goto_9d
    :try_start_9d
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_1bd

    :goto_a7
    :try_start_a7
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->INVALID:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_1ba

    :goto_b1
    :try_start_b1
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_1b7

    :goto_bb
    :try_start_bb
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_1b4

    :goto_c5
    :try_start_c5
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_1b1

    :goto_cf
    :try_start_cf
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_1ae

    :goto_d9
    :try_start_d9
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_e3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d9 .. :try_end_e3} :catch_1ab

    :goto_e3
    :try_start_e3
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e3 .. :try_end_ed} :catch_1a8

    :goto_ed
    :try_start_ed
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_1a5

    :goto_f7
    :try_start_f7
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_1a2

    :goto_101
    :try_start_101
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_10b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10b} :catch_19f

    :goto_10b
    :try_start_10b
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_115
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10b .. :try_end_115} :catch_19c

    :goto_115
    :try_start_115
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_11f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_115 .. :try_end_11f} :catch_19a

    :goto_11f
    :try_start_11f
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_129
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11f .. :try_end_129} :catch_198

    :goto_129
    :try_start_129
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_133
    .catch Ljava/lang/NoSuchFieldError; {:try_start_129 .. :try_end_133} :catch_196

    :goto_133
    :try_start_133
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_13d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_133 .. :try_end_13d} :catch_194

    :goto_13d
    :try_start_13d
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_147
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13d .. :try_end_147} :catch_192

    :goto_147
    :try_start_147
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_151
    .catch Ljava/lang/NoSuchFieldError; {:try_start_147 .. :try_end_151} :catch_190

    :goto_151
    :try_start_151
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_15b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_151 .. :try_end_15b} :catch_18e

    :goto_15b
    :try_start_15b
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_165
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15b .. :try_end_165} :catch_18c

    :goto_165
    :try_start_165
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_16f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_165 .. :try_end_16f} :catch_18a

    :goto_16f
    :try_start_16f
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_179
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16f .. :try_end_179} :catch_188

    :goto_179
    :try_start_179
    sget-object v1, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v1}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_183
    .catch Ljava/lang/NoSuchFieldError; {:try_start_179 .. :try_end_183} :catch_186

    :goto_183
    sput-object v0, Lmiui/maml/data/BaseFunctions;->-miui-maml-data-BaseFunctions$FunSwitchesValues:[I

    return-object v0

    :catch_186
    move-exception v1

    goto :goto_183

    :catch_188
    move-exception v1

    goto :goto_179

    :catch_18a
    move-exception v1

    goto :goto_16f

    :catch_18c
    move-exception v1

    goto :goto_165

    :catch_18e
    move-exception v1

    goto :goto_15b

    :catch_190
    move-exception v1

    goto :goto_151

    :catch_192
    move-exception v1

    goto :goto_147

    :catch_194
    move-exception v1

    goto :goto_13d

    :catch_196
    move-exception v1

    goto :goto_133

    :catch_198
    move-exception v1

    goto :goto_129

    :catch_19a
    move-exception v1

    goto :goto_11f

    :catch_19c
    move-exception v1

    goto/16 :goto_115

    :catch_19f
    move-exception v1

    goto/16 :goto_10b

    :catch_1a2
    move-exception v1

    goto/16 :goto_101

    :catch_1a5
    move-exception v1

    goto/16 :goto_f7

    :catch_1a8
    move-exception v1

    goto/16 :goto_ed

    :catch_1ab
    move-exception v1

    goto/16 :goto_e3

    :catch_1ae
    move-exception v1

    goto/16 :goto_d9

    :catch_1b1
    move-exception v1

    goto/16 :goto_cf

    :catch_1b4
    move-exception v1

    goto/16 :goto_c5

    :catch_1b7
    move-exception v1

    goto/16 :goto_bb

    :catch_1ba
    move-exception v1

    goto/16 :goto_b1

    :catch_1bd
    move-exception v1

    goto/16 :goto_a7

    :catch_1c0
    move-exception v1

    goto/16 :goto_9d

    :catch_1c3
    move-exception v1

    goto/16 :goto_93

    :catch_1c6
    move-exception v1

    goto/16 :goto_89

    :catch_1c9
    move-exception v1

    goto/16 :goto_7f

    :catch_1cc
    move-exception v1

    goto/16 :goto_75

    :catch_1cf
    move-exception v1

    goto/16 :goto_6b

    :catch_1d2
    move-exception v1

    goto/16 :goto_61

    :catch_1d5
    move-exception v1

    goto/16 :goto_57

    :catch_1d8
    move-exception v1

    goto/16 :goto_4d

    :catch_1db
    move-exception v1

    goto/16 :goto_44

    :catch_1de
    move-exception v1

    goto/16 :goto_3b

    :catch_1e1
    move-exception v1

    goto/16 :goto_32

    :catch_1e4
    move-exception v1

    goto/16 :goto_29

    :catch_1e7
    move-exception v1

    goto/16 :goto_20

    :catch_1ea
    move-exception v1

    goto/16 :goto_17
.end method

.method private constructor <init>(Lmiui/maml/data/BaseFunctions$Fun;I)V
    .registers 3

    invoke-direct {p0, p2}, Lmiui/maml/data/Expression$FunctionImpl;-><init>(I)V

    iput-object p1, p0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    return-void
.end method

.method private digit(II)I
    .registers 7

    const/4 v1, -0x1

    const/4 v3, 0x0

    if-gtz p2, :cond_5

    return v1

    :cond_5
    if-nez p1, :cond_b

    const/4 v2, 0x1

    if-ne p2, v2, :cond_b

    return v3

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-lez p1, :cond_17

    add-int/lit8 v2, p2, -0x1

    if-ge v0, v2, :cond_17

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_17
    if-lez p1, :cond_1b

    rem-int/lit8 v1, p1, 0xa

    :cond_1b
    return v1
.end method

.method public static load()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string/jumbo v0, "rand"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->RAND:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "sin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "cos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "tan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->TAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "asin"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ASIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "acos"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ACOS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "atan"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ATAN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "sinh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SINH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "cosh"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->COSH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "sqrt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SQRT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "abs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ABS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "len"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LEN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "eval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "preciseeval"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "round"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ROUND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "int"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->INT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "num"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NUM:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "isnull"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->ISNULL:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "not"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NOT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "min"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MIN:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "max"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->MAX:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "pow"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->POW:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "log"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LOG:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "log10"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LOG10:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v4}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "digit"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->DIGIT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "eq"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQ:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "ne"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->NE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "ge"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "gt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->GT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "le"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LE:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "lt"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->LT:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "ifelse"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->IFELSE:Lmiui/maml/data/BaseFunctions$Fun;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "and"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->AND:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "or"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->OR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "eqs"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->EQS:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "substr"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->SUBSTR:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "hash"

    new-instance v1, Lmiui/maml/data/BaseFunctions;

    sget-object v2, Lmiui/maml/data/BaseFunctions$Fun;->HASH:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-direct {v1, v2, v5}, Lmiui/maml/data/BaseFunctions;-><init>(Lmiui/maml/data/BaseFunctions$Fun;I)V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    const-string/jumbo v0, "nullobj"

    new-instance v1, Lmiui/maml/data/BaseFunctions$NullObjFunction;

    invoke-direct {v1}, Lmiui/maml/data/BaseFunctions$NullObjFunction;-><init>()V

    invoke-static {v0, v1}, Lmiui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lmiui/maml/data/Expression$FunctionImpl;)V

    return-void
.end method


# virtual methods
.method public evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D
    .registers 19

    invoke-static {}, Lmiui/maml/data/BaseFunctions;->-getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_29e

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    invoke-static {}, Lmiui/maml/data/BaseFunctions;->-getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_2a4

    :pswitch_29
    const-string/jumbo v12, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "fail to evalute FunctionExpression, invalid function: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v14}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    return-wide v12

    :pswitch_4e
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    return-wide v12

    :pswitch_53
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_58
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_5d
    invoke-static {v10, v11}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_62
    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_67
    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_6c
    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_71
    invoke-static {v10, v11}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_76
    invoke-static {v10, v11}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_7b
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_80
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_85
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_91

    const-wide/16 v12, 0x0

    return-wide v12

    :cond_91
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    int-to-double v12, v12

    return-wide v12

    :pswitch_97
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a3

    const-wide/16 v12, 0x0

    return-wide v12

    :cond_a3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_bf

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    :cond_bf
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v12, :cond_c8

    const-wide/16 v12, 0x0

    :goto_c7
    return-wide v12

    :cond_c8
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    goto :goto_c7

    :pswitch_d1
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_dd

    const-wide/16 v12, 0x0

    return-wide v12

    :cond_dd
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f9

    move-object/from16 v0, p0

    iput-object v5, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    :cond_f9
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-eqz v12, :cond_123

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v6

    :goto_107
    if-eqz v6, :cond_125

    invoke-virtual {v6}, Ljava/math/BigDecimal;->scale()I

    move-result v7

    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v8, v12

    if-lez v8, :cond_11e

    if-le v7, v8, :cond_11e

    const/4 v12, 0x4

    invoke-virtual {v6, v8, v12}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    :cond_11e
    invoke-virtual {v6}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    return-wide v12

    :cond_123
    const/4 v6, 0x0

    goto :goto_107

    :cond_125
    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    return-wide v12

    :pswitch_128
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    return-wide v12

    :pswitch_12e
    double-to-long v12, v10

    long-to-int v12, v12

    int-to-double v12, v12

    return-wide v12

    :pswitch_132
    return-wide v10

    :pswitch_133
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v12

    if-eqz v12, :cond_13f

    const/4 v12, 0x1

    :goto_13d
    int-to-double v12, v12

    return-wide v12

    :cond_13f
    const/4 v12, 0x0

    goto :goto_13d

    :pswitch_141
    const-wide/16 v12, 0x0

    cmpl-double v12, v10, v12

    if-lez v12, :cond_14a

    const/4 v12, 0x0

    :goto_148
    int-to-double v12, v12

    return-wide v12

    :cond_14a
    const/4 v12, 0x1

    goto :goto_148

    :pswitch_14c
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    return-wide v12

    :pswitch_158
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    return-wide v12

    :pswitch_164
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    return-wide v12

    :pswitch_170
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_175
    invoke-static {v10, v11}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    return-wide v12

    :pswitch_17a
    double-to-int v12, v10

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v13}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lmiui/maml/data/BaseFunctions;->digit(II)I

    move-result v12

    int-to-double v12, v12

    return-wide v12

    :pswitch_18b
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-nez v12, :cond_199

    const/4 v12, 0x1

    :goto_197
    int-to-double v12, v12

    return-wide v12

    :cond_199
    const/4 v12, 0x0

    goto :goto_197

    :pswitch_19b
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-eqz v12, :cond_1a9

    const/4 v12, 0x1

    :goto_1a7
    int-to-double v12, v12

    return-wide v12

    :cond_1a9
    const/4 v12, 0x0

    goto :goto_1a7

    :pswitch_1ab
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-ltz v12, :cond_1b9

    const/4 v12, 0x1

    :goto_1b7
    int-to-double v12, v12

    return-wide v12

    :cond_1b9
    const/4 v12, 0x0

    goto :goto_1b7

    :pswitch_1bb
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpl-double v12, v10, v12

    if-lez v12, :cond_1c9

    const/4 v12, 0x1

    :goto_1c7
    int-to-double v12, v12

    return-wide v12

    :cond_1c9
    const/4 v12, 0x0

    goto :goto_1c7

    :pswitch_1cb
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_1d9

    const/4 v12, 0x1

    :goto_1d7
    int-to-double v12, v12

    return-wide v12

    :cond_1d9
    const/4 v12, 0x0

    goto :goto_1d7

    :pswitch_1db
    const/4 v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    cmpg-double v12, v10, v12

    if-gez v12, :cond_1e9

    const/4 v12, 0x1

    :goto_1e7
    int-to-double v12, v12

    return-wide v12

    :cond_1e9
    const/4 v12, 0x0

    goto :goto_1e7

    :pswitch_1eb
    move-object/from16 v0, p1

    array-length v4, v0

    rem-int/lit8 v12, v4, 0x2

    const/4 v13, 0x1

    if-eq v12, v13, :cond_218

    const-string/jumbo v12, "Expression"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "function parameter number should be 2*n+1: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v14}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v12, 0x0

    return-wide v12

    :cond_218
    const/4 v3, 0x0

    :goto_219
    add-int/lit8 v12, v4, -0x1

    div-int/lit8 v12, v12, 0x2

    if-ge v3, v12, :cond_23b

    mul-int/lit8 v12, v3, 0x2

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_238

    mul-int/lit8 v12, v3, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    return-wide v12

    :cond_238
    add-int/lit8 v3, v3, 0x1

    goto :goto_219

    :cond_23b
    add-int/lit8 v12, v4, -0x1

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    return-wide v12

    :pswitch_244
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_248
    if-ge v3, v4, :cond_25c

    aget-object v12, p1, v3

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_259

    const-wide/16 v12, 0x0

    return-wide v12

    :cond_259
    add-int/lit8 v3, v3, 0x1

    goto :goto_248

    :cond_25c
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    return-wide v12

    :pswitch_25f
    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v3, 0x0

    :goto_263
    if-ge v3, v4, :cond_277

    aget-object v12, p1, v3

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_274

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    return-wide v12

    :cond_274
    add-int/lit8 v3, v3, 0x1

    goto :goto_263

    :cond_277
    const-wide/16 v12, 0x0

    return-wide v12

    :pswitch_27a
    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, p1, v13

    invoke-virtual {v13}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_291

    const/4 v12, 0x1

    :goto_28f
    int-to-double v12, v12

    return-wide v12

    :cond_291
    const/4 v12, 0x0

    goto :goto_28f

    :pswitch_293
    invoke-virtual/range {p0 .. p2}, Lmiui/maml/data/BaseFunctions;->evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v14, 0x0

    invoke-static {v12, v14, v15}, Lmiui/maml/util/Utils;->stringToDouble(Ljava/lang/String;D)D

    move-result-wide v12

    return-wide v12

    :pswitch_data_29e
    .packed-switch 0x1f
        :pswitch_4e
    .end packed-switch

    :pswitch_data_2a4
    .packed-switch 0x1
        :pswitch_80
        :pswitch_67
        :pswitch_244
        :pswitch_62
        :pswitch_6c
        :pswitch_58
        :pswitch_76
        :pswitch_17a
        :pswitch_18b
        :pswitch_27a
        :pswitch_97
        :pswitch_1ab
        :pswitch_1bb
        :pswitch_29
        :pswitch_1eb
        :pswitch_12e
        :pswitch_133
        :pswitch_1cb
        :pswitch_85
        :pswitch_170
        :pswitch_175
        :pswitch_1db
        :pswitch_158
        :pswitch_14c
        :pswitch_19b
        :pswitch_141
        :pswitch_132
        :pswitch_25f
        :pswitch_164
        :pswitch_d1
        :pswitch_29
        :pswitch_128
        :pswitch_53
        :pswitch_71
        :pswitch_7b
        :pswitch_293
        :pswitch_5d
    .end packed-switch
.end method

.method public evaluateStr([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)Ljava/lang/String;
    .registers 19

    invoke-static {}, Lmiui/maml/data/BaseFunctions;->-getmiui-maml-data-BaseFunctions$FunSwitchesValues()[I

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v12}, Lmiui/maml/data/BaseFunctions$Fun;->ordinal()I

    move-result v12

    aget v11, v11, v12

    sparse-switch v11, :sswitch_data_fa

    invoke-virtual/range {p0 .. p2}, Lmiui/maml/data/BaseFunctions;->evaluate([Lmiui/maml/data/Expression;Lmiui/maml/data/Variables;)D

    move-result-wide v12

    invoke-static {v12, v13}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :sswitch_1a
    move-object/from16 v0, p1

    array-length v5, v0

    rem-int/lit8 v11, v5, 0x2

    const/4 v12, 0x1

    if-eq v11, v12, :cond_46

    const-string/jumbo v11, "Expression"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "function parameter number should be 2*n+1: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/data/BaseFunctions;->fun:Lmiui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v13}, Lmiui/maml/data/BaseFunctions$Fun;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return-object v11

    :cond_46
    const/4 v4, 0x0

    :goto_47
    add-int/lit8 v11, v5, -0x1

    div-int/lit8 v11, v11, 0x2

    if-ge v4, v11, :cond_69

    mul-int/lit8 v11, v4, 0x2

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-lez v11, :cond_66

    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_69
    add-int/lit8 v11, v5, -0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v11

    return-object v11

    :sswitch_72
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7d

    const/4 v11, 0x0

    return-object v11

    :cond_7d
    move-object/from16 v0, p1

    array-length v7, v0

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v8, v12

    const/4 v11, 0x3

    if-lt v7, v11, :cond_a1

    const/4 v11, 0x2

    :try_start_8c
    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v5, v12

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v5, v10, :cond_9a

    move v5, v10

    :cond_9a
    add-int v11, v8, v5

    invoke-virtual {v9, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :cond_a1
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_a4} :catch_a6

    move-result-object v11

    return-object v11

    :catch_a6
    move-exception v2

    const/4 v11, 0x0

    return-object v11

    :sswitch_a9
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b4

    const/4 v11, 0x0

    return-object v11

    :cond_b4
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExpStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    :cond_d0
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    if-nez v11, :cond_d8

    const/4 v11, 0x0

    :goto_d7
    return-object v11

    :cond_d8
    move-object/from16 v0, p0

    iget-object v11, v0, Lmiui/maml/data/BaseFunctions;->mEvalExp:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v11

    goto :goto_d7

    :sswitch_e1
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    aget-object v11, p1, v11

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_f3

    if-nez v6, :cond_f5

    :cond_f3
    const/4 v11, 0x0

    return-object v11

    :cond_f5
    invoke-static {v3, v6}, Lmiui/util/HashUtils;->getHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    return-object v11

    :sswitch_data_fa
    .sparse-switch
        0xb -> :sswitch_a9
        0xe -> :sswitch_e1
        0xf -> :sswitch_1a
        0x24 -> :sswitch_72
    .end sparse-switch
.end method
