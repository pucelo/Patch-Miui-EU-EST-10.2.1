.class public Lmiui/maml/util/Task;
.super Ljava/lang/Object;
.source "Task.java"


# static fields
.field public static TAG_ACTION:Ljava/lang/String;

.field public static TAG_CATEGORY:Ljava/lang/String;

.field public static TAG_CLASS:Ljava/lang/String;

.field public static TAG_ID:Ljava/lang/String;

.field public static TAG_NAME:Ljava/lang/String;

.field public static TAG_PACKAGE:Ljava/lang/String;

.field public static TAG_TYPE:Ljava/lang/String;


# instance fields
.field public action:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "id"

    sput-object v0, Lmiui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    const-string/jumbo v0, "action"

    sput-object v0, Lmiui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    const-string/jumbo v0, "type"

    sput-object v0, Lmiui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "category"

    sput-object v0, Lmiui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    const-string/jumbo v0, "package"

    sput-object v0, Lmiui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    const-string/jumbo v0, "class"

    sput-object v0, Lmiui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    const-string/jumbo v0, "name"

    sput-object v0, Lmiui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Lmiui/maml/util/Task;

    invoke-direct {v0}, Lmiui/maml/util/Task;-><init>()V

    const-string/jumbo v1, "id"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    const-string/jumbo v1, "action"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    const-string/jumbo v1, "type"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    const-string/jumbo v1, "category"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    const-string/jumbo v1, "package"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "class"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    const-string/jumbo v1, "name"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    return-object v0
.end method
