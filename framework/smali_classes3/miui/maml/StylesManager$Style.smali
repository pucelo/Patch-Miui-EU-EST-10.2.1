.class public Lmiui/maml/StylesManager$Style;
.super Ljava/lang/Object;
.source "StylesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/StylesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Style"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Style"


# instance fields
.field private base:Lmiui/maml/StylesManager$Style;

.field private mAttrs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/StylesManager;


# direct methods
.method public constructor <init>(Lmiui/maml/StylesManager;Lorg/w3c/dom/Element;)V
    .registers 9

    iput-object p1, p0, Lmiui/maml/StylesManager$Style;->this$0:Lmiui/maml/StylesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lmiui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v0, 0x0

    :goto_11
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_4d

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    iput-object v4, p0, Lmiui/maml/StylesManager$Style;->name:Ljava/lang/String;

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_31
    const-string/jumbo v5, "base"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-static {p1}, Lmiui/maml/StylesManager;->-get0(Lmiui/maml/StylesManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/maml/StylesManager$Style;

    iput-object v5, p0, Lmiui/maml/StylesManager$Style;->base:Lmiui/maml/StylesManager$Style;

    goto :goto_2e

    :cond_47
    iget-object v5, p0, Lmiui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    :cond_4d
    return-void
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lmiui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    iget-object v1, p0, Lmiui/maml/StylesManager$Style;->base:Lmiui/maml/StylesManager$Style;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmiui/maml/StylesManager$Style;->base:Lmiui/maml/StylesManager$Style;

    invoke-virtual {v1, p1}, Lmiui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_17
    return-object v2
.end method
