.class public Lmiui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/ConfigFile$Gadget;,
        Lmiui/maml/util/ConfigFile$OnLoadElementListener;,
        Lmiui/maml/util/ConfigFile$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ConfigFile"

.field public static final TAG_APP_PICKER:Ljava/lang/String; = "AppPicker"

.field public static final TAG_CHECK_BOX:Ljava/lang/String; = "CheckBox"

.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field public static final TAG_GROUP:Ljava/lang/String; = "Group"

.field public static final TAG_IMAGE_PICKER:Ljava/lang/String; = "ImagePicker"

.field public static final TAG_NUMBER_CHOICE:Ljava/lang/String; = "NumberChoice"

.field public static final TAG_NUMBER_INPUT:Ljava/lang/String; = "NumberInput"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field public static final TAG_STRING_CHOICE:Ljava/lang/String; = "StringChoice"

.field public static final TAG_STRING_INPUT:Ljava/lang/String; = "StringInput"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"


# instance fields
.field private mDirty:Z

.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lmiui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-void
.end method

.method private createNewFile(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_18
    return-void
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .registers 5

    const-string/jumbo v0, "Gadgets"

    const-string/jumbo v1, "Gadget"

    new-instance v2, Lmiui/maml/util/ConfigFile$3;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$3;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V
    .registers 11

    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_c
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move-object v2, v3

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {p4, v2}, Lmiui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_30
    return-void
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .registers 5

    const-string/jumbo v0, "Tasks"

    const-string/jumbo v1, "Intent"

    new-instance v2, Lmiui/maml/util/ConfigFile$2;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$2;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 5

    const-string/jumbo v0, "Variables"

    const-string/jumbo v1, "Variable"

    new-instance v2, Lmiui/maml/util/ConfigFile$1;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$1;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return-void

    :cond_d
    const-string/jumbo v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    return-void

    :cond_22
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    if-nez v0, :cond_38

    new-instance v0, Lmiui/maml/util/ConfigFile$Variable;

    invoke-direct {v0}, Lmiui/maml/util/ConfigFile$Variable;-><init>()V

    iput-object p1, v0, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    iput-object p3, v0, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    iput-object p2, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    return-void
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    return-void

    :cond_d
    const-string/jumbo v4, "Gadgets"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "path"

    aput-object v4, v2, v5

    const-string/jumbo v4, "x"

    aput-object v4, v2, v6

    const-string/jumbo v4, "y"

    aput-object v4, v2, v7

    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Gadget;

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lmiui/maml/util/ConfigFile$Gadget;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lmiui/maml/util/ConfigFile$Gadget;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "Gadget"

    invoke-static {p1, v4, v2, v3, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_2a

    :cond_53
    const-string/jumbo v4, "Gadgets"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .registers 4

    const-string/jumbo v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_e

    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ">\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .registers 7

    const-string/jumbo v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_37

    if-eqz p4, :cond_1a

    aget-object v1, p3, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :goto_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    const-string/jumbo v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "=\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_37
    const-string/jumbo v1, "/>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .registers 13

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    const-string/jumbo v4, "Tasks"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    sget-object v4, Lmiui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v4, v2, v6

    sget-object v4, Lmiui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    aput-object v4, v2, v7

    sget-object v4, Lmiui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    aput-object v4, v2, v8

    sget-object v4, Lmiui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    aput-object v4, v2, v9

    sget-object v4, Lmiui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    aput-object v4, v2, v10

    sget-object v4, Lmiui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v4, v2, v5

    sget-object v4, Lmiui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v4, v2, v5

    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/Task;

    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/String;

    iget-object v4, v0, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v0, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, v0, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, v0, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    aput-object v4, v3, v10

    iget-object v4, v0, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-object v4, v0, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    const-string/jumbo v4, "Intent"

    invoke-static {p1, v4, v2, v3, v7}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_3f

    :cond_73
    const-string/jumbo v4, "Tasks"

    invoke-static {p1, v4, v7}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_d

    return-void

    :cond_d
    const-string/jumbo v4, "Variables"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    new-array v2, v8, [Ljava/lang/String;

    const-string/jumbo v4, "name"

    aput-object v4, v2, v5

    const-string/jumbo v4, "type"

    aput-object v4, v2, v6

    const-string/jumbo v4, "value"

    aput-object v4, v2, v7

    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v4, v3, v7

    const-string/jumbo v4, "Variable"

    invoke-static {p1, v4, v2, v3}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2e

    :cond_4f
    const-string/jumbo v4, "Variables"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .registers 3

    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/Task;

    return-object v0
.end method

.method public getTasks()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    if-nez v0, :cond_c

    :goto_b
    return-object v1

    :cond_c
    iget-object v1, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_b
.end method

.method public getVariables()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .registers 16

    const/4 v13, 0x0

    iput-object p1, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    iget-object v11, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    iget-object v11, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v8, 0x0

    :try_start_13
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_85
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_13 .. :try_end_18} :catch_79
    .catch Lorg/xml/sax/SAXException; {:try_start_13 .. :try_end_18} :catch_6d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_61
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_55
    .catchall {:try_start_13 .. :try_end_18} :catchall_8e

    :try_start_18
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_23} :catch_9a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_23} :catch_9d
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_23} :catch_a0
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_23} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_23} :catch_a6
    .catchall {:try_start_18 .. :try_end_23} :catchall_97

    move-result-object v10

    if-nez v10, :cond_2e

    if-eqz v9, :cond_2b

    :try_start_28
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    :cond_2b
    :goto_2b
    return v13

    :catch_2c
    move-exception v4

    goto :goto_2b

    :cond_2e
    :try_start_2e
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Config"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_38} :catch_9a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2e .. :try_end_38} :catch_9d
    .catch Lorg/xml/sax/SAXException; {:try_start_2e .. :try_end_38} :catch_a0
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_a6
    .catchall {:try_start_2e .. :try_end_38} :catchall_97

    move-result v11

    if-nez v11, :cond_43

    if-eqz v9, :cond_40

    :try_start_3d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    :cond_40
    :goto_40
    return v13

    :catch_41
    move-exception v4

    goto :goto_40

    :cond_43
    :try_start_43
    invoke-direct {p0, v10}, Lmiui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v10}, Lmiui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    invoke-direct {p0, v10}, Lmiui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_4c
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_4c} :catch_9a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_43 .. :try_end_4c} :catch_9d
    .catch Lorg/xml/sax/SAXException; {:try_start_43 .. :try_end_4c} :catch_a0
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_4c} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_a6
    .catchall {:try_start_43 .. :try_end_4c} :catchall_97

    const/4 v11, 0x1

    if-eqz v9, :cond_52

    :try_start_4f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    :cond_52
    :goto_52
    return v11

    :catch_53
    move-exception v4

    goto :goto_52

    :catch_55
    move-exception v5

    :goto_56
    :try_start_56
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_8e

    if-eqz v8, :cond_5e

    :try_start_5b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    :cond_5e
    :goto_5e
    return v13

    :catch_5f
    move-exception v4

    goto :goto_5e

    :catch_61
    move-exception v4

    :goto_62
    :try_start_62
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_8e

    if-eqz v8, :cond_5e

    :try_start_67
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_5e

    :catch_6b
    move-exception v4

    goto :goto_5e

    :catch_6d
    move-exception v7

    :goto_6e
    :try_start_6e
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_8e

    if-eqz v8, :cond_5e

    :try_start_73
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_5e

    :catch_77
    move-exception v4

    goto :goto_5e

    :catch_79
    move-exception v6

    :goto_7a
    :try_start_7a
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8e

    if-eqz v8, :cond_5e

    :try_start_7f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_5e

    :catch_83
    move-exception v4

    goto :goto_5e

    :catch_85
    move-exception v3

    :goto_86
    if-eqz v8, :cond_5e

    :try_start_88
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_5e

    :catch_8c
    move-exception v4

    goto :goto_5e

    :catchall_8e
    move-exception v11

    :goto_8f
    if-eqz v8, :cond_94

    :try_start_91
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95

    :cond_94
    :goto_94
    throw v11

    :catch_95
    move-exception v4

    goto :goto_94

    :catchall_97
    move-exception v11

    move-object v8, v9

    goto :goto_8f

    :catch_9a
    move-exception v3

    move-object v8, v9

    goto :goto_86

    :catch_9d
    move-exception v6

    move-object v8, v9

    goto :goto_7a

    :catch_a0
    move-exception v7

    move-object v8, v9

    goto :goto_6e

    :catch_a3
    move-exception v4

    move-object v8, v9

    goto :goto_62

    :catch_a6
    move-exception v5

    move-object v8, v9

    goto :goto_56
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .registers 4

    if-eqz p1, :cond_11

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_12

    :cond_11
    return-void

    :cond_12
    const-string/jumbo v0, "Group"

    new-instance v1, Lmiui/maml/util/ConfigFile$4;

    invoke-direct {v1, p0}, Lmiui/maml/util/ConfigFile$4;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method

.method public moveGadget(Lmiui/maml/util/ConfigFile$Gadget;I)V
    .registers 4

    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public putGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putNumber(Ljava/lang/String;D)V
    .registers 6

    invoke-static {p2, p3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "number"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "string"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public putTask(Lmiui/maml/util/Task;)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public removeGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .registers 3

    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .registers 4

    iget-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    if-eqz v0, :cond_e

    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lmiui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public save(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    const/4 v5, 0x0

    :try_start_6
    invoke-direct {p0, p1}, Lmiui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_58
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_3c

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Config"

    invoke-static {v4, v6, v9}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    invoke-direct {p0, v4}, Lmiui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v4}, Lmiui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    invoke-direct {p0, v4}, Lmiui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    const-string/jumbo v6, "Config"

    invoke-static {v4, v6, v10}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :try_start_23
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_cb

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_35} :catch_eb

    :goto_35
    const-string/jumbo v6, "/data/system/theme/config.config"

    invoke-static {v6}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    return v10

    :catch_3c
    move-exception v1

    const-string/jumbo v6, "ConfigFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create target file or temp file failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :catch_58
    move-exception v0

    const/4 v6, 0x0

    :try_start_5a
    invoke-virtual {p2, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_a4

    if-eqz v3, :cond_84

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_84
    :goto_84
    invoke-direct {p0, v5}, Lmiui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_87} :catch_88

    goto :goto_9

    :catch_88
    move-exception v2

    const-string/jumbo v6, "ConfigFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create target file failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_a4
    :try_start_a4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "temp"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "temp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c9} :catch_88

    move-result-object v5

    goto :goto_84

    :cond_cb
    :try_start_cb
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_107

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_107

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, p1}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v5}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_e9} :catch_eb

    goto/16 :goto_35

    :catch_eb
    move-exception v1

    const-string/jumbo v6, "ConfigFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write file error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_107
    :try_start_107
    const-string/jumbo v6, "ConfigFile"

    const-string/jumbo v7, "target file and temp file are not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_110} :catch_eb

    return v9
.end method
