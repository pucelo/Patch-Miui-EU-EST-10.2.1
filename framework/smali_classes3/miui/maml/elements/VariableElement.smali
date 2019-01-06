.class public Lmiui/maml/elements/VariableElement;
.super Lmiui/maml/elements/ScreenElement;
.source "VariableElement.java"


# static fields
.field private static final synthetic -miui-maml-data-VariableTypeSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "VariableElement"

.field private static final OLD_VALUE:Ljava/lang/String; = "old_value"

.field public static final TAG_NAME:Ljava/lang/String; = "Var"


# instance fields
.field private mAnimation:Lmiui/maml/animation/VariableAnimation;

.field private mArraySize:I

.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mConst:Z

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mInited:Z

.field private mOldValue:D

.field private mOldVar:Lmiui/maml/data/IndexedVariable;

.field private mThreshold:D

.field private mTrigger:Lmiui/maml/CommandTrigger;

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-data-VariableTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/elements/VariableElement;->-miui-maml-data-VariableTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/elements/VariableElement;->-miui-maml-data-VariableTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/data/VariableType;->values()[Lmiui/maml/data/VariableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/data/VariableType;->BOOLEAN_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_bf

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_bc

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_b9

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_b6

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3c} :catch_b4

    :goto_3c
    :try_start_3c
    sget-object v1, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_b2

    :goto_46
    :try_start_46
    sget-object v1, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_50} :catch_b0

    :goto_50
    :try_start_50
    sget-object v1, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_ae

    :goto_5a
    :try_start_5a
    sget-object v1, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_ac

    :goto_63
    :try_start_63
    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_aa

    :goto_6d
    :try_start_6d
    sget-object v1, Lmiui/maml/data/VariableType;->OBJ:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_a8

    :goto_77
    :try_start_77
    sget-object v1, Lmiui/maml/data/VariableType;->OBJ_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_a6

    :goto_81
    :try_start_81
    sget-object v1, Lmiui/maml/data/VariableType;->SHORT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_a4

    :goto_8b
    :try_start_8b
    sget-object v1, Lmiui/maml/data/VariableType;->STR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_94} :catch_a2

    :goto_94
    :try_start_94
    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9d} :catch_a0

    :goto_9d
    sput-object v0, Lmiui/maml/elements/VariableElement;->-miui-maml-data-VariableTypeSwitchesValues:[I

    return-object v0

    :catch_a0
    move-exception v1

    goto :goto_9d

    :catch_a2
    move-exception v1

    goto :goto_94

    :catch_a4
    move-exception v1

    goto :goto_8b

    :catch_a6
    move-exception v1

    goto :goto_81

    :catch_a8
    move-exception v1

    goto :goto_77

    :catch_aa
    move-exception v1

    goto :goto_6d

    :catch_ac
    move-exception v1

    goto :goto_63

    :catch_ae
    move-exception v1

    goto :goto_5a

    :catch_b0
    move-exception v1

    goto :goto_50

    :catch_b2
    move-exception v1

    goto :goto_46

    :catch_b4
    move-exception v1

    goto :goto_3c

    :catch_b6
    move-exception v1

    goto/16 :goto_32

    :catch_b9
    move-exception v1

    goto/16 :goto_29

    :catch_bc
    move-exception v1

    goto/16 :goto_20

    :catch_bf
    move-exception v1

    goto/16 :goto_17
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 10

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    if-eqz p1, :cond_ea

    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v4, "expression"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v4, "index"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v3, "threshold"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p1, v3, v4}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v4, v3

    iput-wide v4, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    const-string/jumbo v3, "type"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    const-string/jumbo v3, "const"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    const-string/jumbo v3, "size"

    invoke-static {p1, v3, v6}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    invoke-virtual {p0}, Lmiui/maml/elements/VariableElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    new-instance v3, Lmiui/maml/data/IndexedVariable;

    iget-object v4, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    new-instance v3, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "old_value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v5}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-static {p1, p2}, Lmiui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)Lmiui/maml/CommandTrigger;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v3}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v3

    if-eqz v3, :cond_ea

    const-string/jumbo v3, "values"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v3, v3

    iput v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    :cond_bc
    iget v3, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    if-lez v3, :cond_eb

    iget-object v3, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    iget v4, p0, Lmiui/maml/elements/VariableElement;->mArraySize:I

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    iget-object v5, v5, Lmiui/maml/data/VariableType;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4, v5}, Lmiui/maml/data/Variables;->createArray(Ljava/lang/String;ILjava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_ea

    const-string/jumbo v3, "VariableElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "fail to create array:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ea
    :goto_ea
    return-void

    :cond_eb
    const-string/jumbo v3, "VariableElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "array size is 0:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/elements/VariableElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea
.end method

.method private getDouble(ZI)D
    .registers 5

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    invoke-virtual {v0}, Lmiui/maml/animation/VariableAnimation;->getValue()D

    move-result-wide v0

    return-wide v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    return-wide v0

    :cond_16
    if-eqz p1, :cond_1f

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p2}, Lmiui/maml/data/IndexedVariable;->getArrDouble(I)D

    move-result-wide v0

    :goto_1e
    return-wide v0

    :cond_1f
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v0

    goto :goto_1e
.end method

.method private onValueChange(D)V
    .registers 8

    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    if-nez v0, :cond_6

    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    :cond_6
    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_26

    iget-wide v0, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mThreshold:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_26

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    iget-wide v2, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iput-wide p1, p0, Lmiui/maml/elements/VariableElement;->mOldValue:D

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->perform()V

    :cond_26
    return-void
.end method

.method private update()V
    .registers 13

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lmiui/maml/elements/VariableElement;->-getmiui-maml-data-VariableTypeSwitchesValues()[I

    move-result-object v8

    iget-object v10, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v10}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_dc

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v8}, Lmiui/maml/data/VariableType;->isNumberArray()Z

    move-result v8

    if-eqz v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_bd

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v3, v8

    const/4 v8, 0x1

    invoke-direct {p0, v8, v3}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v6

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3, v6, v7}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    :cond_31
    :goto_31
    return-void

    :pswitch_32
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v8}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_31

    :pswitch_5c
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_91

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v3, v8

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3}, Lmiui/maml/data/IndexedVariable;->getArrString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mOldVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v3, v5}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v8}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_31

    :cond_91
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v8

    const/4 v2, 0x0

    :goto_99
    if-ge v2, v0, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v8, v2

    iget-object v10, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_aa

    move-object v8, v9

    :goto_a4
    invoke-virtual {v10, v2, v8}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    :cond_aa
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v8

    goto :goto_a4

    :pswitch_af
    invoke-direct {p0, v11, v11}, Lmiui/maml/elements/VariableElement;->getDouble(ZI)D

    move-result-wide v6

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v8, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-direct {p0, v6, v7}, Lmiui/maml/elements/VariableElement;->onValueChange(D)V

    goto/16 :goto_31

    :cond_bd
    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v8, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v8

    const/4 v2, 0x0

    :goto_c5
    if-ge v2, v0, :cond_31

    iget-object v8, p0, Lmiui/maml/elements/VariableElement;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v8, v2

    iget-object v10, p0, Lmiui/maml/elements/VariableElement;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_d7

    const-wide/16 v8, 0x0

    :goto_d1
    invoke-virtual {v10, v2, v8, v9}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c5

    :cond_d7
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    goto :goto_d1

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_af
        :pswitch_32
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method protected doTick(J)V
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mConst:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public finish()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->finish()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    return-void
.end method

.method public init()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->init()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->init()V

    :cond_c
    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/VariableElement;->mInited:Z

    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .registers 4

    const-string/jumbo v0, "VariableAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lmiui/maml/animation/VariableAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/VariableAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    return-object v0

    :cond_11
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    return-object v0
.end method

.method protected onSetAnimBefore()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .registers 3

    instance-of v0, p1, Lmiui/maml/animation/VariableAnimation;

    if-eqz v0, :cond_8

    check-cast p1, Lmiui/maml/animation/VariableAnimation;

    iput-object p1, p0, Lmiui/maml/elements/VariableElement;->mAnimation:Lmiui/maml/animation/VariableAnimation;

    :cond_8
    return-void
.end method

.method public pause()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->pause()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    :cond_c
    return-void
.end method

.method protected pauseAnim(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method protected playAnim(JJJZZ)V
    .registers 10

    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public reset(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/elements/ScreenElement;->resume()V

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/VariableElement;->mTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    :cond_c
    return-void
.end method

.method protected resumeAnim(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    invoke-direct {p0}, Lmiui/maml/elements/VariableElement;->update()V

    return-void
.end method
