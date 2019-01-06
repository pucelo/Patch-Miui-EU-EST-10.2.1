.class public final Landroid/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field mEnterAction:Ljava/lang/Runnable;

.field mExitAction:Ljava/lang/Runnable;

.field private mLayout:Landroid/view/View;

.field private mLayoutId:I

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    iput-object p3, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iput p2, p0, Landroid/transition/Scene;->mLayoutId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/transition/Scene;->mLayoutId:I

    iput-object p1, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    return-void
.end method

.method static getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;
    .registers 2

    const v0, 0x1020211

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    return-object v0
.end method

.method public static getSceneForLayout(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroid/transition/Scene;
    .registers 6

    const v2, 0x10203c4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_13

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->setTagInternal(ILjava/lang/Object;)V

    :cond_13
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Scene;

    if-eqz v0, :cond_1c

    return-object v0

    :cond_1c
    new-instance v0, Landroid/transition/Scene;

    invoke-direct {v0, p0, p1, p2}, Landroid/transition/Scene;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method static setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V
    .registers 3

    const v0, 0x1020211

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-gtz v0, :cond_8

    iget-object v0, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    if-eqz v0, :cond_20

    :cond_8
    invoke-virtual {p0}, Landroid/transition/Scene;->getSceneRoot()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v0, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v0, :cond_2f

    iget-object v0, p0, Landroid/transition/Scene;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    iget-object v2, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_20
    :goto_20
    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_29
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroid/transition/Scene;->setCurrentScene(Landroid/view/View;Landroid/transition/Scene;)V

    return-void

    :cond_2f
    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/transition/Scene;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_20
.end method

.method public exit()V
    .registers 2

    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/Scene;->getCurrentScene(Landroid/view/View;)Landroid/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_11

    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method

.method public getSceneRoot()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Landroid/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method isCreatedFromLayoutResource()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/transition/Scene;->mLayoutId:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public setEnterAction(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/transition/Scene;->mEnterAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setExitAction(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Landroid/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    return-void
.end method
