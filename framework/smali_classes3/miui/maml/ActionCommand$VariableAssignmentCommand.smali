.class Lmiui/maml/ActionCommand$VariableAssignmentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableAssignmentCommand"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-VariableTypeSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "VariableCommand"


# instance fields
.field private mArrayValues:[Lmiui/maml/data/Expression;

.field private mExpression:Lmiui/maml/data/Expression;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mName:Ljava/lang/String;

.field private mPersist:Z

.field private mRequestUpdate:Z

.field private mType:Lmiui/maml/data/VariableType;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-data-VariableTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-miui-maml-data-VariableTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-miui-maml-data-VariableTypeSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_bf

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/data/VariableType;->BYTE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_bc

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/data/VariableType;->CHAR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_b9

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/data/VariableType;->DOUBLE_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_b6

    :goto_33
    :try_start_33
    sget-object v1, Lmiui/maml/data/VariableType;->FLOAT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_b4

    :goto_3d
    :try_start_3d
    sget-object v1, Lmiui/maml/data/VariableType;->INT_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_b2

    :goto_47
    :try_start_47
    sget-object v1, Lmiui/maml/data/VariableType;->INVALID:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_b0

    :goto_51
    :try_start_51
    sget-object v1, Lmiui/maml/data/VariableType;->LONG_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5b} :catch_ae

    :goto_5b
    :try_start_5b
    sget-object v1, Lmiui/maml/data/VariableType;->NUM:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_64} :catch_ac

    :goto_64
    :try_start_64
    sget-object v1, Lmiui/maml/data/VariableType;->NUM_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6d} :catch_aa

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_94} :catch_a2

    :goto_94
    :try_start_94
    sget-object v1, Lmiui/maml/data/VariableType;->STR_ARR:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9d} :catch_a0

    :goto_9d
    sput-object v0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-miui-maml-data-VariableTypeSwitchesValues:[I

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

    goto :goto_64

    :catch_ae
    move-exception v1

    goto :goto_5b

    :catch_b0
    move-exception v1

    goto :goto_51

    :catch_b2
    move-exception v1

    goto :goto_47

    :catch_b4
    move-exception v1

    goto :goto_3d

    :catch_b6
    move-exception v1

    goto/16 :goto_33

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

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 8

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    const-string/jumbo v1, "name"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    const-string/jumbo v1, "persist"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    const-string/jumbo v1, "requestUpdate"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    const-string/jumbo v1, "type"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/data/VariableType;->parseType(Ljava/lang/String;)Lmiui/maml/data/VariableType;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_82

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v4}, Lmiui/maml/data/VariableType;->isNumber()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    :goto_4e
    invoke-virtual {p1}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "expression"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v1}, Lmiui/maml/data/VariableType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_81

    const-string/jumbo v1, "index"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    const-string/jumbo v1, "values"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    :cond_81
    return-void

    :cond_82
    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "empty name in VariableAssignmentCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method


# virtual methods
.method protected doPerform()V
    .registers 15

    const/4 v13, 0x2

    const/4 v11, 0x0

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v5

    invoke-static {}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->-getmiui-maml-data-VariableTypeSwitchesValues()[I

    move-result-object v10

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mType:Lmiui/maml/data/VariableType;

    invoke-virtual {v12}, Lmiui/maml/data/VariableType;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_108

    const/4 v4, 0x0

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_f7

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    :goto_20
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_34

    invoke-virtual {v7, v3}, Lmiui/maml/data/Variables;->existsObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_34

    invoke-virtual {v7, v3}, Lmiui/maml/data/Variables;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    :cond_34
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v10, :cond_fa

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_3d
    :goto_3d
    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mRequestUpdate:Z

    if-eqz v10, :cond_44

    invoke-virtual {v5}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    :cond_44
    return-void

    :pswitch_45
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v10, :cond_3d

    invoke-virtual {v5, v13}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v10

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_3d

    :pswitch_68
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_83

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_83

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    invoke-virtual {v10, v11, v12, v13}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    goto :goto_3d

    :cond_83
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v10

    const/4 v2, 0x0

    :goto_8b
    if-ge v2, v0, :cond_3d

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v10, v2

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_9d

    const-wide/16 v10, 0x0

    :goto_97
    invoke-virtual {v12, v2, v10, v11}, Lmiui/maml/data/IndexedVariable;->setArr(ID)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8b

    :cond_9d
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    goto :goto_97

    :pswitch_a2
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v10}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v10, v6}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-boolean v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mPersist:Z

    if-eqz v10, :cond_3d

    invoke-virtual {v5, v13}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v10

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mName:Ljava/lang/String;

    invoke-virtual {v5, v10, v6}, Lmiui/maml/ScreenElementRoot;->saveVar(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :pswitch_bd
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_d9

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    if-eqz v10, :cond_d9

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v12}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_3d

    :cond_d9
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    if-eqz v10, :cond_3d

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    array-length v0, v10

    const/4 v2, 0x0

    :goto_e1
    if-ge v2, v0, :cond_3d

    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mArrayValues:[Lmiui/maml/data/Expression;

    aget-object v1, v10, v2

    iget-object v12, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    if-nez v1, :cond_f2

    move-object v10, v11

    :goto_ec
    invoke-virtual {v12, v2, v10}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e1

    :cond_f2
    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v10

    goto :goto_ec

    :cond_f7
    const/4 v3, 0x0

    goto/16 :goto_20

    :cond_fa
    iget-object v10, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v11, p0, Lmiui/maml/ActionCommand$VariableAssignmentCommand;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v11}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v12

    double-to-int v11, v12

    invoke-virtual {v10, v11, v4}, Lmiui/maml/data/IndexedVariable;->setArr(ILjava/lang/Object;)Z

    goto/16 :goto_3d

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_45
        :pswitch_68
        :pswitch_a2
        :pswitch_bd
    .end packed-switch
.end method
