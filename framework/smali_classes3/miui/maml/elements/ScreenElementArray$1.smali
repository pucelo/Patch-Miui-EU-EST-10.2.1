.class Lmiui/maml/elements/ScreenElementArray$1;
.super Ljava/lang/Object;
.source "ScreenElementArray.java"

# interfaces
.implements Lmiui/maml/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/ScreenElementArray;

.field final synthetic val$_root:Lmiui/maml/ScreenElementRoot;

.field final synthetic val$count:I

.field final synthetic val$indexVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method constructor <init>(Lmiui/maml/elements/ScreenElementArray;ILmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V
    .registers 5

    iput-object p1, p0, Lmiui/maml/elements/ScreenElementArray$1;->this$0:Lmiui/maml/elements/ScreenElementArray;

    iput p2, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$count:I

    iput-object p3, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$_root:Lmiui/maml/ScreenElementRoot;

    iput-object p4, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$indexVar:Lmiui/maml/data/IndexedVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$count:I

    if-ge v2, v3, :cond_2a

    iget-object v3, p0, Lmiui/maml/elements/ScreenElementArray$1;->this$0:Lmiui/maml/elements/ScreenElementArray;

    invoke-static {v3, p1}, Lmiui/maml/elements/ScreenElementArray;->-wrap0(Lmiui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    if-eqz v1, :cond_27

    if-nez v0, :cond_24

    iget-object v3, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$_root:Lmiui/maml/ScreenElementRoot;

    iget-object v4, p0, Lmiui/maml/elements/ScreenElementArray$1;->val$indexVar:Lmiui/maml/data/IndexedVariable;

    invoke-static {v3, v4}, Lmiui/maml/elements/ElementGroup;->createArrayGroup(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)Lmiui/maml/elements/ElementGroup;

    move-result-object v0

    invoke-virtual {v1}, Lmiui/maml/elements/ScreenElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiui/maml/elements/ElementGroup;->setName(Ljava/lang/String;)V

    iget-object v3, p0, Lmiui/maml/elements/ScreenElementArray$1;->this$0:Lmiui/maml/elements/ScreenElementArray;

    invoke-virtual {v3, v0}, Lmiui/maml/elements/ScreenElementArray;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_24
    invoke-virtual {v0, v1}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2a
    return-void
.end method
