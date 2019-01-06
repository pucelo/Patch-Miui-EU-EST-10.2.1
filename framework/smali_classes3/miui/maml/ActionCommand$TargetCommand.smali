.class abstract Lmiui/maml/ActionCommand$TargetCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TargetCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$TargetCommand$TargetType;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I


# instance fields
.field protected mLogStr:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;

.field protected mTargetIndex:Lmiui/maml/data/Expression;

.field protected mTargetName:Ljava/lang/String;

.field protected mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->values()[Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/ActionCommand$TargetCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 6

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    const-string/jumbo v1, "target"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    :cond_17
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const-string/jumbo v2, "targetIndex"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    const-string/jumbo v1, "targetType"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string/jumbo v1, "element"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    :cond_40
    :goto_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mLogStr:Ljava/lang/String;

    return-void

    :cond_6a
    const-string/jumbo v1, "var"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_40

    :cond_78
    const-string/jumbo v1, "ctor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    goto :goto_40
.end method


# virtual methods
.method protected getTarget()Ljava/lang/Object;
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_7a

    return-object v4

    :pswitch_11
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_29

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v1, Lmiui/maml/elements/ElementGroup;

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v2}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/ElementGroup;->getChild(I)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    return-object v1

    :cond_29
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    return-object v1

    :pswitch_2c
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-eqz v1, :cond_78

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_79

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    invoke-virtual {v1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_5a
    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target with index is not an Array variable, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    :cond_78
    return-object v4

    :cond_79
    return-object v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2c
    .end packed-switch
.end method

.method public init()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lmiui/maml/ActionCommand;->init()V

    invoke-static {}, Lmiui/maml/ActionCommand$TargetCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8c

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    if-nez v0, :cond_43

    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "could not find ScreenElement target, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_43
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    if-eqz v1, :cond_13

    invoke-static {v0}, Lmiui/maml/elements/ElementGroup;->isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target with index is not an ArrayGroup, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetIndex:Lmiui/maml/data/Expression;

    goto :goto_13

    :pswitch_6c
    iget-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    if-eqz v1, :cond_81

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$TargetCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$TargetCommand;->mTarget:Ljava/lang/Object;

    goto :goto_13

    :cond_81
    const-string/jumbo v1, "ActionCommand"

    const-string/jumbo v2, "MethodCommand, type=var, empty target name"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_14
        :pswitch_6c
    .end packed-switch
.end method
