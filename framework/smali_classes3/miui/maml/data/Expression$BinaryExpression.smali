.class Lmiui/maml/data/Expression$BinaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryExpression"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-Expression$OpeSwitchesValues:[I


# instance fields
.field private mExp1:Lmiui/maml/data/Expression;

.field private mExp2:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$Ope;


# direct methods
.method private static synthetic -getmiui-maml-data-Expression$OpeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/Expression$BinaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/Expression$Ope;->values()[Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/Expression$Ope;->ADD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_10d

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/Expression$Ope;->AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_10a

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_107

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_104

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_101

    :goto_3c
    :try_start_3c
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_45} :catch_fe

    :goto_45
    :try_start_45
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4e} :catch_fb

    :goto_4e
    :try_start_4e
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_XOR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_57} :catch_f8

    :goto_57
    :try_start_57
    sget-object v1, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_61} :catch_f5

    :goto_61
    :try_start_61
    sget-object v1, Lmiui/maml/data/Expression$Ope;->EQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_6b} :catch_f2

    :goto_6b
    :try_start_6b
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_75} :catch_f0

    :goto_75
    :try_start_75
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_ee

    :goto_7f
    :try_start_7f
    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_ec

    :goto_89
    :try_start_89
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_93} :catch_ea

    :goto_93
    :try_start_93
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_9d} :catch_e8

    :goto_9d
    :try_start_9d
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_a7} :catch_e6

    :goto_a7
    :try_start_a7
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_b1} :catch_e4

    :goto_b1
    :try_start_b1
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_bb} :catch_e2

    :goto_bb
    :try_start_bb
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NEQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c5} :catch_e0

    :goto_c5
    :try_start_c5
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_cf} :catch_de

    :goto_cf
    :try_start_cf
    sget-object v1, Lmiui/maml/data/Expression$Ope;->OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_dc

    :goto_d9
    sput-object v0, Lmiui/maml/data/Expression$BinaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    return-object v0

    :catch_dc
    move-exception v1

    goto :goto_d9

    :catch_de
    move-exception v1

    goto :goto_cf

    :catch_e0
    move-exception v1

    goto :goto_c5

    :catch_e2
    move-exception v1

    goto :goto_bb

    :catch_e4
    move-exception v1

    goto :goto_b1

    :catch_e6
    move-exception v1

    goto :goto_a7

    :catch_e8
    move-exception v1

    goto :goto_9d

    :catch_ea
    move-exception v1

    goto :goto_93

    :catch_ec
    move-exception v1

    goto :goto_89

    :catch_ee
    move-exception v1

    goto :goto_7f

    :catch_f0
    move-exception v1

    goto :goto_75

    :catch_f2
    move-exception v1

    goto/16 :goto_6b

    :catch_f5
    move-exception v1

    goto/16 :goto_61

    :catch_f8
    move-exception v1

    goto/16 :goto_57

    :catch_fb
    move-exception v1

    goto/16 :goto_4e

    :catch_fe
    move-exception v1

    goto/16 :goto_45

    :catch_101
    move-exception v1

    goto/16 :goto_3c

    :catch_104
    move-exception v1

    goto/16 :goto_32

    :catch_107
    move-exception v1

    goto/16 :goto_29

    :catch_10a
    move-exception v1

    goto/16 :goto_20

    :catch_10d
    move-exception v1

    goto/16 :goto_17
.end method

.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V
    .registers 7

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    iput-object p1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    iput-object p2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    iput-object p3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-ne v0, v1, :cond_2d

    const-string/jumbo v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BinaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .registers 3

    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate()D
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v3}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_162

    const-string/jumbo v0, "Expression"

    const-string/jumbo v1, "fail to evalute BinaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :pswitch_1d
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0

    :pswitch_2b
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0

    :pswitch_39
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    :pswitch_47
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0

    :pswitch_55
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    rem-double/2addr v0, v2

    return-wide v0

    :pswitch_63
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    and-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    :pswitch_74
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    or-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    :pswitch_85
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    xor-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    :pswitch_96
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shl-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    :pswitch_a8
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-long v0, v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-long v2, v2

    long-to-int v2, v2

    shr-long/2addr v0, v2

    long-to-double v0, v0

    return-wide v0

    :pswitch_ba
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_cc

    :goto_ca
    int-to-double v0, v0

    return-wide v0

    :cond_cc
    move v0, v1

    goto :goto_ca

    :pswitch_ce
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_e0

    :goto_de
    int-to-double v0, v0

    return-wide v0

    :cond_e0
    move v0, v1

    goto :goto_de

    :pswitch_e2
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_f8

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_f8

    :goto_f6
    int-to-double v0, v0

    return-wide v0

    :cond_f8
    move v0, v1

    goto :goto_f6

    :pswitch_fa
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_10e

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_10f

    :cond_10e
    move v1, v0

    :cond_10f
    int-to-double v0, v1

    return-wide v0

    :pswitch_111
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_123

    :goto_121
    int-to-double v0, v0

    return-wide v0

    :cond_123
    move v0, v1

    goto :goto_121

    :pswitch_125
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_137

    :goto_135
    int-to-double v0, v0

    return-wide v0

    :cond_137
    move v0, v1

    goto :goto_135

    :pswitch_139
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_14b

    :goto_149
    int-to-double v0, v0

    return-wide v0

    :cond_14b
    move v0, v1

    goto :goto_149

    :pswitch_14d
    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v4}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_15f

    :goto_15d
    int-to-double v0, v0

    return-wide v0

    :cond_15f
    move v0, v1

    goto :goto_15d

    nop

    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_e2
        :pswitch_63
        :pswitch_96
        :pswitch_74
        :pswitch_a8
        :pswitch_85
        :pswitch_47
        :pswitch_ba
        :pswitch_125
        :pswitch_111
        :pswitch_14d
        :pswitch_139
        :pswitch_2b
        :pswitch_55
        :pswitch_39
        :pswitch_ce
        :pswitch_fa
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v3}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_44

    const-string/jumbo v2, "Expression"

    const-string/jumbo v3, "fail to evalute string BinaryExpression, invalid operator"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_26
    if-nez v0, :cond_2b

    if-nez v1, :cond_2b

    return-object v4

    :cond_2b
    if-nez v0, :cond_2e

    return-object v1

    :cond_2e
    if-nez v1, :cond_31

    return-object v0

    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch
.end method

.method public isNull()Z
    .registers 4

    const/4 v0, 0x1

    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v2}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    :pswitch_10
    return v0

    :pswitch_11
    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f

    :pswitch_22
    iget-object v1, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v0, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    :cond_30
    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_11
        :pswitch_22
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_22
        :pswitch_22
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method public preciseEvaluate()Ljava/math/BigDecimal;
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v4, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-eq v3, v4, :cond_26

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp1:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v3, p0, Lmiui/maml/data/Expression$BinaryExpression;->mExp2:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->preciseEvaluate()Ljava/math/BigDecimal;

    move-result-object v2

    if-eqz v1, :cond_26

    if-eqz v2, :cond_26

    invoke-static {}, Lmiui/maml/data/Expression$BinaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/data/Expression$BinaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v4}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v4

    aget v3, v3, v4

    sparse-switch v3, :sswitch_data_50

    :cond_26
    const-string/jumbo v3, "Expression"

    const-string/jumbo v4, "fail to PRECISE evalute BinaryExpression, invalid operator"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :sswitch_30
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    :sswitch_35
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    :sswitch_3a
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    return-object v3

    :sswitch_3f
    :try_start_3f
    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_46

    move-result-object v3

    return-object v3

    :catch_46
    move-exception v0

    return-object v5

    :sswitch_48
    :try_start_48
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_4d

    move-result-object v3

    return-object v3

    :catch_4d
    move-exception v0

    return-object v5

    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_30
        0x8 -> :sswitch_3f
        0xe -> :sswitch_35
        0xf -> :sswitch_48
        0x10 -> :sswitch_3a
    .end sparse-switch
.end method
