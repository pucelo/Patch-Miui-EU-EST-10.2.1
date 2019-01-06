.class public Lmiui/maml/elements/ListScreenElement$Column;
.super Ljava/lang/Object;
.source "ListScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/ListScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field public mList:Lmiui/maml/elements/ListScreenElement;

.field public mName:Ljava/lang/String;

.field public mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

.field public mRoot:Lmiui/maml/ScreenElementRoot;

.field public mTarget:Ljava/lang/String;

.field public mTargetElement:Lmiui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;Lmiui/maml/elements/ListScreenElement;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mRoot:Lmiui/maml/ScreenElementRoot;

    iput-object p3, p0, Lmiui/maml/elements/ListScreenElement$Column;->mList:Lmiui/maml/elements/ListScreenElement;

    if-eqz p1, :cond_c

    invoke-direct {p0, p1}, Lmiui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V

    :cond_c
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 3

    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    const-string/jumbo v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    new-instance v0, Lmiui/maml/elements/ListScreenElement$Column$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/ListScreenElement$Column$1;-><init>(Lmiui/maml/elements/ListScreenElement$Column;)V

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 4

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/maml/elements/VariableArrayElement;->registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V

    :cond_c
    return-void
.end method

.method public init()V
    .registers 5

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    if-nez v1, :cond_14

    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    instance-of v1, v0, Lmiui/maml/elements/VariableArrayElement;

    if-eqz v1, :cond_1d

    check-cast v0, Lmiui/maml/elements/VariableArrayElement;

    iput-object v0, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    :cond_14
    iget-object v1, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTargetElement:Lmiui/maml/elements/VariableArrayElement;

    iget-object v2, p0, Lmiui/maml/elements/ListScreenElement$Column;->mObserver:Lmiui/maml/elements/VariableArrayElement$VarObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lmiui/maml/elements/VariableArrayElement;->registerVarObserver(Lmiui/maml/elements/VariableArrayElement$VarObserver;Z)V

    return-void

    :cond_1d
    const-string/jumbo v1, "ListScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t find VarArray:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
