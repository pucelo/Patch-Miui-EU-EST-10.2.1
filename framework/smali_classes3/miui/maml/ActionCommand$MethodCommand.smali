.class Lmiui/maml/ActionCommand$MethodCommand;
.super Lmiui/maml/ActionCommand$BaseMethodCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodCommand"
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I = null

.field public static final TAG_NAME:Ljava/lang/String; = "MethodCommand"


# instance fields
.field private mCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/reflect/Method;

.field private mMethodName:Ljava/lang/String;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$MethodCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$MethodCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lmiui/maml/ActionCommand$MethodCommand;->-miui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues:[I

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
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$BaseMethodCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    const-string/jumbo v0, "method"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MethodCommand, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected doPerform()V
    .registers 11

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->prepareParams()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_5
    invoke-static {}, Lmiui/maml/ActionCommand$MethodCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v6}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_b0

    :goto_14
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mReturnVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_53
    .catchall {:try_start_5 .. :try_end_1d} :catchall_a4

    :cond_1d
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v2

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_27
    :goto_27
    return-void

    :pswitch_28
    :try_start_28
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2f

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->loadMethod()V

    :cond_2f
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_41

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->getTarget()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_14

    :cond_41
    const/4 v2, -0x1

    goto :goto_14

    :pswitch_43
    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    if-eqz v5, :cond_51

    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamValues:[Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4e} :catch_53
    .catchall {:try_start_28 .. :try_end_4e} :catchall_a4

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_14

    :cond_51
    const/4 v2, -0x1

    goto :goto_14

    :catch_53
    move-exception v1

    :try_start_54
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string/jumbo v6, "ActionCommand"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_a0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\n cause: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_88
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catchall {:try_start_54 .. :try_end_93} :catchall_a4

    const/4 v2, -0x2

    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v5, :cond_27

    iget-object v5, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_27

    :cond_a0
    :try_start_a0
    const-string/jumbo v5, ""
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_88

    :catchall_a4
    move-exception v5

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v6, :cond_af

    iget-object v6, p0, Lmiui/maml/ActionCommand$MethodCommand;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v2

    invoke-virtual {v6, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_af
    throw v5

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_43
        :pswitch_28
        :pswitch_28
    .end packed-switch
.end method

.method public init()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Lmiui/maml/ActionCommand$BaseMethodCommand;->init()V

    invoke-static {}, Lmiui/maml/ActionCommand$MethodCommand;->-getmiui-maml-ActionCommand$TargetCommand$TargetTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v2}, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    :cond_13
    :goto_13
    return-void

    :pswitch_14
    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_13

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->loadMethod()V

    goto :goto_13

    :pswitch_1c
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v1

    if-nez v1, :cond_2a

    iput-object v3, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    goto :goto_13

    :cond_2a
    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_13

    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v1, :cond_63

    :try_start_32
    iget-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamTypes:[Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/ActionCommand$MethodCommand;->mCtor:Ljava/lang/reflect/Constructor;
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_3c} :catch_3d

    goto :goto_13

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "init, fail to find method. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_63
    const-string/jumbo v1, "ActionCommand"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "init, class is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method protected loadMethod()V
    .registers 6

    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$MethodCommand;->getTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    :cond_10
    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    if-eqz v2, :cond_6d

    :try_start_14
    iget-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mTargetClass:Ljava/lang/Class;

    iget-object v3, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethodName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mParamTypes:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_20} :catch_47

    :goto_20
    const-string/jumbo v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "loadMethod(), successful.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_46
    return-void

    :catch_47
    move-exception v0

    const-string/jumbo v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "loadMethod(). "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_6d
    const-string/jumbo v2, "ActionCommand"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lmiui/maml/ActionCommand$MethodCommand;->mLogStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "loadMethod(), class is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46
.end method
