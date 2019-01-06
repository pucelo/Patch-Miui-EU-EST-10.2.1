.class public Lmiui/maml/util/IntentInfo;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/IntentInfo$Extra;,
        Lmiui/maml/util/IntentInfo$Type;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-util-IntentInfo$TypeSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "TaskVariable"


# instance fields
.field private mClassNameExp:Lmiui/maml/data/Expression;

.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/util/IntentInfo$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNameExp:Lmiui/maml/data/Expression;

.field private mTask:Lmiui/maml/util/Task;

.field private mUri:Ljava/lang/String;

.field private mUriExp:Lmiui/maml/data/Expression;

.field private mVariables:Lmiui/maml/data/Variables;


# direct methods
.method static synthetic -get0(Lmiui/maml/util/IntentInfo;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/util/IntentInfo;)Lmiui/maml/data/Variables;
    .registers 2

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-util-IntentInfo$TypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/util/IntentInfo;->-miui-maml-util-IntentInfo$TypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/util/IntentInfo;->-miui-maml-util-IntentInfo$TypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/util/IntentInfo$Type;->values()[Lmiui/maml/util/IntentInfo$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->BOOLEAN:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_51

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_4f

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->FLOAT:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_4d

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->INT:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_4b

    :goto_32
    :try_start_32
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->LONG:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_49

    :goto_3b
    :try_start_3b
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->STRING:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_44} :catch_47

    :goto_44
    sput-object v0, Lmiui/maml/util/IntentInfo;->-miui-maml-util-IntentInfo$TypeSwitchesValues:[I

    return-object v0

    :catch_47
    move-exception v1

    goto :goto_44

    :catch_49
    move-exception v1

    goto :goto_3b

    :catch_4b
    move-exception v1

    goto :goto_32

    :catch_4d
    move-exception v1

    goto :goto_29

    :catch_4f
    move-exception v1

    goto :goto_20

    :catch_51
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-nez p1, :cond_d

    return-void

    :cond_d
    invoke-static {p1}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iput-object p2, p0, Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;

    const-string/jumbo v0, "packageExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "classExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    const-string/jumbo v0, "uri"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    const-string/jumbo v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    invoke-direct {p0, p1}, Lmiui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .registers 4

    const-string/jumbo v0, "Extra"

    new-instance v1, Lmiui/maml/util/IntentInfo$1;

    invoke-direct {v1, p0}, Lmiui/maml/util/IntentInfo$1;-><init>(Lmiui/maml/util/IntentInfo;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v0, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    :cond_9
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v1, :cond_9

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v0, v0, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    :cond_9
    return-object v0
.end method

.method public set(Lmiui/maml/util/Task;)V
    .registers 2

    iput-object p1, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .registers 16

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v8, :cond_be

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v0, v8, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v8, :cond_c1

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v6, v8, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    :goto_19
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_22

    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_22
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v8, :cond_c4

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v8, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    :goto_2a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_33

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_33
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v8, :cond_c7

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v5, v8, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    :goto_3b
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_45

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    :cond_45
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v8, :cond_ca

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v8, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    :goto_4d
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_57

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    :cond_57
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_66

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_cc

    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_66
    :goto_66
    iget-object v7, p0, Lmiui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_72

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v7

    :cond_72
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7f

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_7f
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-eqz v8, :cond_11b

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_89
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/util/IntentInfo$Extra;

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->isConditionTrue()Z

    move-result v8

    if-eqz v8, :cond_112

    invoke-static {}, Lmiui/maml/util/IntentInfo;->-getmiui-maml-util-IntentInfo$TypeSwitchesValues()[I

    move-result-object v8

    iget-object v9, v3, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v9}, Lmiui/maml/util/IntentInfo$Type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_11c

    goto :goto_89

    :pswitch_ab
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v8, v10, v12

    if-lez v8, :cond_110

    const/4 v8, 0x1

    :goto_ba
    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_89

    :cond_be
    const/4 v0, 0x0

    goto/16 :goto_8

    :cond_c1
    const/4 v6, 0x0

    goto/16 :goto_19

    :cond_c4
    const/4 v1, 0x0

    goto/16 :goto_2a

    :cond_c7
    const/4 v5, 0x0

    goto/16 :goto_3b

    :cond_ca
    const/4 v2, 0x0

    goto :goto_4d

    :cond_cc
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_66

    :pswitch_d0
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_89

    :pswitch_dc
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_89

    :pswitch_e9
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    double-to-long v10, v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_89

    :pswitch_f6
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_89

    :pswitch_103
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto/16 :goto_89

    :cond_110
    const/4 v8, 0x0

    goto :goto_ba

    :cond_112
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_89

    :cond_11b
    return-void

    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_103
        :pswitch_f6
        :pswitch_dc
        :pswitch_e9
        :pswitch_d0
    .end packed-switch
.end method
