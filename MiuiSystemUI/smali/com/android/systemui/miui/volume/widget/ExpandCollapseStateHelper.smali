.class Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;
.super Ljava/lang/Object;
.source "ExpandCollapseStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;
    }
.end annotation


# instance fields
.field private mExpanded:Z

.field private mListener:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;

.field private mTransitionCollapse:Landroid/transition/Transition;

.field private mTransitionExpand:Landroid/transition/Transition;

.field private mTransitionRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mExpanded:Z

    iput-object p1, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mTransitionRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object p2, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mListener:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;

    sget-object v2, Lcom/android/systemui/miui/volume/R$styleable;->ExpandCollapseLayout:[I

    invoke-virtual {v1, p3, v2, p4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v2, Lcom/android/systemui/miui/volume/R$styleable;->ExpandCollapseLayout_expandingTransition:I

    new-instance v3, Landroid/transition/AutoTransition;

    invoke-direct {v3}, Landroid/transition/AutoTransition;-><init>()V

    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->getTransition(Landroid/content/Context;Landroid/content/res/TypedArray;ILandroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mTransitionExpand:Landroid/transition/Transition;

    sget v2, Lcom/android/systemui/miui/volume/R$styleable;->ExpandCollapseLayout_collapsingTransition:I

    new-instance v3, Landroid/transition/AutoTransition;

    invoke-direct {v3}, Landroid/transition/AutoTransition;-><init>()V

    invoke-static {v1, v0, v2, v3}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->getTransition(Landroid/content/Context;Landroid/content/res/TypedArray;ILandroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mTransitionCollapse:Landroid/transition/Transition;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static getTransition(Landroid/content/Context;Landroid/content/res/TypedArray;ILandroid/transition/Transition;)Landroid/transition/Transition;
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p3
.end method


# virtual methods
.method public beginDelayedTransition()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mTransitionRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mTransitionRoot:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mTransitionExpand:Landroid/transition/Transition;

    :goto_0
    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mTransitionCollapse:Landroid/transition/Transition;

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mExpanded:Z

    return v0
.end method

.method public final updateExpanded(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mExpanded:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->beginDelayedTransition()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mListener:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper;->mListener:Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/volume/widget/ExpandCollapseStateHelper$OnExpandStateUpdatedListener;->onExpandStateUpdated(Z)V

    :cond_1
    return-void
.end method
