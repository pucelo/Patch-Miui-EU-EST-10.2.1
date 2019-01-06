.class Lmiui/maml/data/Expression$UnaryExpression;
.super Lmiui/maml/data/Expression;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnaryExpression"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-Expression$OpeSwitchesValues:[I


# instance fields
.field private mExp:Lmiui/maml/data/Expression;

.field private mOpe:Lmiui/maml/data/Expression$Ope;


# direct methods
.method private static synthetic -getmiui-maml-data-Expression$OpeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/data/Expression$UnaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/data/Expression$UnaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

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

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_10d

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/Expression$Ope;->AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_10a

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_AND:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_107

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_LSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_104

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_101

    :goto_3b
    :try_start_3b
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_45} :catch_fe

    :goto_45
    :try_start_45
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_RSHIFT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_4f} :catch_fb

    :goto_4f
    :try_start_4f
    sget-object v1, Lmiui/maml/data/Expression$Ope;->BIT_XOR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_f8

    :goto_59
    :try_start_59
    sget-object v1, Lmiui/maml/data/Expression$Ope;->DIV:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_f5

    :goto_63
    :try_start_63
    sget-object v1, Lmiui/maml/data/Expression$Ope;->EQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_f2

    :goto_6d
    :try_start_6d
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_f0

    :goto_77
    :try_start_77
    sget-object v1, Lmiui/maml/data/Expression$Ope;->GT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_ee

    :goto_81
    :try_start_81
    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_ec

    :goto_8b
    :try_start_8b
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LE:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_ea

    :goto_95
    :try_start_95
    sget-object v1, Lmiui/maml/data/Expression$Ope;->LT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_e8

    :goto_9f
    :try_start_9f
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MIN:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a8} :catch_e6

    :goto_a8
    :try_start_a8
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MOD:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b2} :catch_e4

    :goto_b2
    :try_start_b2
    sget-object v1, Lmiui/maml/data/Expression$Ope;->MUL:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_bc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_bc} :catch_e2

    :goto_bc
    :try_start_bc
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NEQ:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_c6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c6} :catch_e0

    :goto_c6
    :try_start_c6
    sget-object v1, Lmiui/maml/data/Expression$Ope;->NOT:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_cf
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c6 .. :try_end_cf} :catch_de

    :goto_cf
    :try_start_cf
    sget-object v1, Lmiui/maml/data/Expression$Ope;->OR:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_dc

    :goto_d9
    sput-object v0, Lmiui/maml/data/Expression$UnaryExpression;->-miui-maml-data-Expression$OpeSwitchesValues:[I

    return-object v0

    :catch_dc
    move-exception v1

    goto :goto_d9

    :catch_de
    move-exception v1

    goto :goto_cf

    :catch_e0
    move-exception v1

    goto :goto_c6

    :catch_e2
    move-exception v1

    goto :goto_bc

    :catch_e4
    move-exception v1

    goto :goto_b2

    :catch_e6
    move-exception v1

    goto :goto_a8

    :catch_e8
    move-exception v1

    goto :goto_9f

    :catch_ea
    move-exception v1

    goto :goto_95

    :catch_ec
    move-exception v1

    goto :goto_8b

    :catch_ee
    move-exception v1

    goto :goto_81

    :catch_f0
    move-exception v1

    goto :goto_77

    :catch_f2
    move-exception v1

    goto/16 :goto_6d

    :catch_f5
    move-exception v1

    goto/16 :goto_63

    :catch_f8
    move-exception v1

    goto/16 :goto_59

    :catch_fb
    move-exception v1

    goto/16 :goto_4f

    :catch_fe
    move-exception v1

    goto/16 :goto_45

    :catch_101
    move-exception v1

    goto/16 :goto_3b

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

.method public constructor <init>(Lmiui/maml/data/Expression;Lmiui/maml/data/Expression$Ope;)V
    .registers 6

    invoke-direct {p0}, Lmiui/maml/data/Expression;-><init>()V

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    iput-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    iput-object p1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    iput-object p2, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    sget-object v1, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    if-ne v0, v1, :cond_2b

    const-string/jumbo v0, "Expression"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UnaryExpression: invalid operator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void
.end method


# virtual methods
.method public accept(Lmiui/maml/data/ExpressionVisitor;)V
    .registers 3

    invoke-virtual {p1, p0}, Lmiui/maml/data/ExpressionVisitor;->visit(Lmiui/maml/data/Expression;)V

    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Expression;->accept(Lmiui/maml/data/ExpressionVisitor;)V

    return-void
.end method

.method public evaluate()D
    .registers 5

    const-wide/16 v2, 0x0

    invoke-static {}, Lmiui/maml/data/Expression$UnaryExpression;->-getmiui-maml-data-Expression$OpeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/data/Expression$UnaryExpression;->mOpe:Lmiui/maml/data/Expression$Ope;

    invoke-virtual {v1}, Lmiui/maml/data/Expression$Ope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    const-string/jumbo v0, "Expression"

    const-string/jumbo v1, "fail to evalute UnaryExpression, invalid operator"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0

    :pswitch_21
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    sub-double v0, v2, v0

    return-wide v0

    :pswitch_2a
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_37

    const/4 v0, 0x1

    :goto_35
    int-to-double v0, v0

    return-wide v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_35

    :pswitch_39
    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    not-int v0, v0

    int-to-double v0, v0

    return-wide v0

    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_39
        :pswitch_21
        :pswitch_2a
    .end packed-switch
.end method

.method public evaluateStr()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/data/Expression$UnaryExpression;->evaluate()D

    move-result-wide v0

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/Expression$UnaryExpression;->mExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->isNull()Z

    move-result v0

    return v0
.end method
