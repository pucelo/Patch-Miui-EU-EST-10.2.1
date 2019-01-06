.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# static fields
.field private static final INSERT_AT_END_INDEX:I = -0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/view/View;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-object p1
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/RemoteViews$ViewTree;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private addViewChild(Landroid/view/View;)V
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-eqz v5, :cond_3b

    new-instance v3, Landroid/widget/RemoteViews$ViewTree;

    invoke-direct {v3, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    iget-object v5, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    :goto_18
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3d

    iget-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v5, :cond_3d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2f
    if-ge v1, v0, :cond_3d

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3b
    move-object v2, p0

    goto :goto_18

    :cond_3d
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    return-void
.end method

.method public addChild(Landroid/widget/RemoteViews$ViewTree;I)V
    .registers 4

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    :cond_b
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_17

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_17
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public createTree()V
    .registers 5

    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    return-void

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_27

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1b
    if-ge v1, v0, :cond_27

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_27
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_c

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_c
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    if-nez v0, :cond_13

    :goto_12
    return-object v1

    :cond_13
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    goto :goto_12
.end method

.method public findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_a

    return-object p0

    :cond_a
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v3, :cond_f

    return-object v4

    :cond_f
    iget-object v3, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v1, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    if-eqz v0, :cond_15

    return-object v0

    :cond_28
    return-object v4
.end method

.method public replaceView(Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    return-void
.end method
