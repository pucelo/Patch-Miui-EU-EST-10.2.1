.class public Lcom/xiaomi/mistatistic/sdk/controller/r;
.super Ljava/lang/Object;
.source "ViewTraverser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    instance-of v2, v0, Landroid/widget/GridView;

    if-nez v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mistatistic/sdk/data/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-ge v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/xiaomi/mistatistic/sdk/controller/r;->b(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/r;->a(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-direct {v5, p1}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Landroid/view/View;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/r;->a:Ljava/util/List;

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/data/a;

    invoke-direct {v5, p1}, Lcom/xiaomi/mistatistic/sdk/data/a;-><init>(Landroid/view/View;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
