.class Lmiui/maml/ActionCommand$IntentCommand;
.super Lmiui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I = null

.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lmiui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lmiui/maml/util/IntentInfo;

.field private mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method private static synthetic -getmiui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand;->-miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/ActionCommand$IntentCommand;->-miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->values()[Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v1}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/ActionCommand$IntentCommand;->-miui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .registers 12

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lmiui/maml/ActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;)V

    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v6, Lmiui/maml/util/IntentInfo;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    invoke-direct {v6, p2, v7}, Lmiui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    const-string/jumbo v6, "broadcast"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v6, "type"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_30

    const-string/jumbo v6, "broadcast"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    :cond_30
    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    :cond_34
    :goto_34
    const-string/jumbo v6, "flags"

    const/4 v7, -0x1

    invoke-static {p2, v6, v7}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    const-string/jumbo v6, "activityOption"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a1

    :goto_4b
    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    const-string/jumbo v5, "Fallback"

    invoke-static {p2, v5}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    if-eqz v4, :cond_5d

    new-instance v5, Lmiui/maml/CommandTrigger;

    invoke-direct {v5, v4, p1}, Lmiui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    :cond_5d
    return-void

    :cond_5e
    const-string/jumbo v6, "service"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_34

    :cond_6c
    const-string/jumbo v6, "activity"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    goto :goto_34

    :cond_7a
    const-string/jumbo v6, "var"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    sget-object v6, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    const-string/jumbo v6, "intentVar"

    invoke-interface {p2, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_34

    new-instance v6, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v3, v7, v8}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v6, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_34

    :cond_a1
    new-instance v5, Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Lmiui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;)V

    goto :goto_4b
.end method


# virtual methods
.method protected doPerform()V
    .registers 8

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    :try_start_b
    invoke-static {}, Lmiui/maml/ActionCommand$IntentCommand;->-getmiui-maml-ActionCommand$IntentCommand$IntentTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v5}, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_c8

    :cond_1a
    :goto_1a
    return-void

    :pswitch_1b
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lmiui/maml/ActionCommand$ObjVar;

    invoke-virtual {v4}, Lmiui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_27
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v6, 0x10000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5f

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_49

    goto :goto_1a

    :catch_49
    move-exception v1

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v4, :cond_bb

    const-string/jumbo v4, "ActionCommand"

    const-string/jumbo v5, "fail to send Intent, fallback..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v4}, Lmiui/maml/CommandTrigger;->perform()V

    goto :goto_1a

    :cond_5d
    const/4 v0, 0x0

    goto :goto_27

    :cond_5f
    const/4 v3, 0x0

    :try_start_60
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7c

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    :goto_72
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-static {v4, v3, v5, v0}, Lmiui/maml/util/PreloadAppPolicyHelper;->installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z

    goto :goto_1a

    :cond_7c
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_97

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_72

    :cond_97
    return-void

    :pswitch_98
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1a

    :pswitch_a3
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1a

    :pswitch_ae
    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentVar:Lmiui/maml/data/IndexedVariable;

    iget-object v5, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_b9} :catch_49

    goto/16 :goto_1a

    :cond_bb
    const-string/jumbo v4, "ActionCommand"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_98
        :pswitch_a3
        :pswitch_ae
    .end packed-switch
.end method

.method public finish()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->finish()V

    :cond_9
    return-void
.end method

.method public init()V
    .registers 4

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$IntentCommand;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v2}, Lmiui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/maml/util/Task;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1, v0}, Lmiui/maml/util/IntentInfo;->set(Lmiui/maml/util/Task;)V

    :cond_1f
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    return-void

    :cond_2c
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lmiui/maml/util/IntentInfo;

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lmiui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    iget v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_50

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    iget v2, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFlags:I

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_46
    :goto_46
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v1}, Lmiui/maml/CommandTrigger;->init()V

    :cond_4f
    return-void

    :cond_50
    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntentType:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    sget-object v2, Lmiui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lmiui/maml/ActionCommand$IntentCommand$IntentType;

    if-ne v1, v2, :cond_46

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_46
.end method

.method public pause()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->pause()V

    :cond_9
    return-void
.end method

.method public resume()V
    .registers 2

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lmiui/maml/CommandTrigger;

    invoke-virtual {v0}, Lmiui/maml/CommandTrigger;->resume()V

    :cond_9
    return-void
.end method
