.class public Lmiui/maml/elements/ScreenElementArray;
.super Lmiui/maml/elements/ElementGroup;
.source "ScreenElementArray.java"


# static fields
.field private static final DEF_INDEX_VAR_NAME:Ljava/lang/String; = "__i"

.field public static final TAG_NAME:Ljava/lang/String; = "Array"


# direct methods
.method static synthetic -wrap0(Lmiui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 3

    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 9

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    const-string/jumbo v4, "count"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v1

    move-object v0, p2

    const-string/jumbo v4, "indexName"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string/jumbo v3, "__i"

    :cond_1c
    new-instance v2, Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElementArray;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    new-instance v4, Lmiui/maml/elements/ScreenElementArray$1;

    invoke-direct {v4, p0, v1, p2, v2}, Lmiui/maml/elements/ScreenElementArray$1;-><init>(Lmiui/maml/elements/ScreenElementArray;ILmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V

    const/4 v5, 0x0

    invoke-static {p1, v5, v4}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method
