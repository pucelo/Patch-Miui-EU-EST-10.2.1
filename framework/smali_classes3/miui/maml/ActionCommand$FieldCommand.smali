.class Lmiui/maml/ActionCommand$FieldCommand;
.super Lmiui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldCommand"
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "FieldCommand"


# instance fields
.field private mField:Ljava/lang/reflect/Field;

.field private mFieldName:Ljava/lang/String;

.field private mIsSet:Z


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$FieldCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$FieldCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

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
    sput-object v0, Lmiui/maml/ActionCommand$FieldCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

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

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$BaseMethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string/jumbo v1, "field"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FieldCommand, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    const-string/jumbo v1, "method"

    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "get"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    const-string/jumbo v1, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    goto :goto_4b
.end method


# virtual methods
.method protected doPerform()V
    .registers 9

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_7

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    :cond_7
    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_1a

    :try_start_b
    invoke-static {}, Lmiui/maml/ActionCommand$FieldCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_8e

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    iget-boolean v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mIsSet:Z

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->prepareParams()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$FieldCommand;->mParamValues:[Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_3a} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_3a} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_3a} :catch_67

    goto :goto_1a

    :catch_3b
    move-exception v1

    const-string/jumbo v4, "ActionCommand"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_47
    :try_start_47
    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v4, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_5a} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_5a} :catch_67

    goto :goto_1a

    :catch_5b
    move-exception v0

    const-string/jumbo v4, "ActionCommand"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :catch_67
    move-exception v2

    const-string/jumbo v4, "ActionCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Field target is null. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1b
    .end packed-switch
.end method

.method public init()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->init()V

    invoke-static {}, Lmiui/maml/ActionCommand$FieldCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->loadField()V

    goto :goto_12

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method protected loadField()V
    .registers 6

    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$FieldCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    :cond_10
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v2, :cond_3e

    :try_start_14
    iget-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v3, p0, Lmiui/maml/ActionCommand$FieldCommand;->mFieldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$FieldCommand;->mField:Ljava/lang/reflect/Field;
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    const-string/jumbo v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_3e
    const-string/jumbo v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$FieldCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "class is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method
