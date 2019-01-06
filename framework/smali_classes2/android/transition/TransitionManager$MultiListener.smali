.class Landroid/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/transition/Transition;

.field final mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Landroid/transition/Transition;Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method private removeListeners()V
    .registers 2

    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_d
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_13
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_d
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    invoke-static {}, Landroid/transition/TransitionManager;->-get0()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    return v8

    :cond_12
    invoke-static {}, Landroid/transition/TransitionManager;->-wrap0()Landroid/util/ArrayMap;

    move-result-object v4

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_59

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    :goto_2b
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    new-instance v6, Landroid/transition/TransitionManager$MultiListener$1;

    invoke-direct {v6, p0, v4}, Landroid/transition/TransitionManager$MultiListener$1;-><init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7}, Landroid/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    if-eqz v1, :cond_65

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition;

    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_47

    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2b

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2b

    :cond_65
    iget-object v5, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    iget-object v6, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    return v8
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 7

    invoke-direct {p0}, Landroid/transition/TransitionManager$MultiListener;->removeListeners()V

    invoke-static {}, Landroid/transition/TransitionManager;->-get0()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/transition/TransitionManager;->-wrap0()Landroid/util/ArrayMap;

    move-result-object v3

    iget-object v4, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_36

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/transition/Transition;->resume(Landroid/view/View;)V

    goto :goto_24

    :cond_36
    iget-object v3, p0, Landroid/transition/TransitionManager$MultiListener;->mTransition:Landroid/transition/Transition;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/transition/Transition;->clearValues(Z)V

    return-void
.end method
