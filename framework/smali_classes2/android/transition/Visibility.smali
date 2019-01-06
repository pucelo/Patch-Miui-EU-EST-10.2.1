.class public abstract Landroid/transition/Visibility;
.super Landroid/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Visibility$DisappearListener;,
        Landroid/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field public static final MODE_IN:I = 0x1

.field public static final MODE_OUT:I = 0x2

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_SCREEN_LOCATION:Ljava/lang/String; = "android:visibility:screenLocation"

.field static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mMode:I

.field private mSuppressLayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android:visibility:visibility"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android:visibility:parent"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x3

    iput v2, p0, Landroid/transition/Visibility;->mMode:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    sget-object v2, Lcom/android/internal/R$styleable;->VisibilityTransition:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_1c

    invoke-virtual {p0, v1}, Landroid/transition/Visibility;->setMode(I)V

    :cond_1c
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .registers 7

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:visibility"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:parent"

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v0, v2, [I

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:visibility:screenLocation"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;
    .registers 9

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/transition/Visibility$VisibilityInfo;

    invoke-direct {v0, v3}, Landroid/transition/Visibility$VisibilityInfo;-><init>(Landroid/transition/Visibility$VisibilityInfo;)V

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz p0, :cond_74

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    :goto_38
    if-eqz p1, :cond_79

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibility:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    :goto_63
    if-eqz p0, :cond_ae

    if-eqz p1, :cond_ae

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-ne v1, v2, :cond_7e

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_7e

    return-object v0

    :cond_74
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    goto :goto_38

    :cond_79
    iput v6, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    iput-object v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    goto :goto_63

    :cond_7e
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-eq v1, v2, :cond_96

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_8d

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    :cond_8c
    :goto_8c
    return-object v0

    :cond_8d
    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_8c

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_8c

    :cond_96
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    iget-object v2, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_8c

    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_a5

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_8c

    :cond_a5
    iget-object v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v1, :cond_8c

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_8c

    :cond_ae
    if-nez p0, :cond_b9

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v1, :cond_b9

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_8c

    :cond_b9
    if-nez p1, :cond_8c

    iget v1, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-nez v1, :cond_8c

    iput-boolean v4, v0, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    iput-boolean v5, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    goto :goto_8c
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/transition/Visibility;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 11

    const/4 v1, 0x0

    invoke-static {p2, p3}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v6

    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v0, :cond_2f

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->startParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_11

    iget-object v0, v6, Landroid/transition/Visibility$VisibilityInfo;->endParent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2f

    :cond_11
    iget-boolean v0, v6, Landroid/transition/Visibility$VisibilityInfo;->fadeIn:Z

    if-eqz v0, :cond_22

    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_22
    iget v3, v6, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    iget v5, v6, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_2f
    return-object v1
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/transition/Visibility;->mMode:I

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    return v2

    :cond_7
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    iget-object v3, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:visibility:visibility"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eq v3, v4, :cond_20

    return v2

    :cond_20
    invoke-static {p1, p2}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v0

    iget-boolean v3, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v3, :cond_33

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->startVisibility:I

    if-eqz v3, :cond_30

    iget v3, v0, Landroid/transition/Visibility$VisibilityInfo;->endVisibility:I

    if-nez v3, :cond_31

    :cond_30
    :goto_30
    return v1

    :cond_31
    move v1, v2

    goto :goto_30

    :cond_33
    move v1, v2

    goto :goto_30
.end method

.method public isVisible(Landroid/transition/TransitionValues;)Z
    .registers 7

    const/4 v3, 0x0

    if-nez p1, :cond_4

    return v3

    :cond_4
    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:visibility"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:parent"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v1, :cond_24

    if-eqz v0, :cond_24

    const/4 v2, 0x1

    :goto_23
    return v2

    :cond_24
    move v2, v3

    goto :goto_23
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 14

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget v4, p0, Landroid/transition/Visibility;->mMode:I

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    if-nez p4, :cond_c

    :cond_b
    return-object v6

    :cond_c
    if-nez p2, :cond_28

    const/4 v2, 0x0

    iget-object v4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v3

    invoke-virtual {p0, v0, v7}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v2

    iget-boolean v4, v2, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    if-eqz v4, :cond_28

    return-object v6

    :cond_28
    iget-object v4, p4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v4, p2, p4}, Landroid/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v4

    return-object v4
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;ILandroid/transition/TransitionValues;I)Landroid/animation/Animator;
    .registers 32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/transition/Visibility;->mMode:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x2

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    const/16 v24, 0x0

    return-object v24

    :cond_13
    if-eqz p2, :cond_9a

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v22, v0

    :goto_1b
    if-eqz p4, :cond_9e

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_21
    const/4 v15, 0x0

    const/16 v23, 0x0

    if-eqz v8, :cond_2c

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_113

    :cond_2c
    if-eqz v8, :cond_a0

    move-object v15, v8

    :cond_2f
    :goto_2f
    move/from16 v11, p5

    move-object/from16 v10, p1

    if-eqz v15, :cond_140

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v24, v0

    const-string/jumbo v25, "android:visibility:screenLocation"

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    const/16 v24, 0x0

    aget v18, v17, v24

    const/16 v24, 0x1

    aget v19, v17, v24

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v13, v0, [I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/16 v24, 0x0

    aget v24, v13, v24

    sub-int v24, v18, v24

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    const/16 v24, 0x1

    aget v24, v13, v24

    sub-int v24, v19, v24

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v25

    sub-int v24, v24, v25

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    if-nez v5, :cond_12b

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    :goto_99
    return-object v5

    :cond_9a
    const/16 v22, 0x0

    goto/16 :goto_1b

    :cond_9e
    const/4 v8, 0x0

    goto :goto_21

    :cond_a0
    if-eqz v22, :cond_2f

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_ab

    move-object/from16 v15, v22

    goto :goto_2f

    :cond_ab
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/view/View;

    move/from16 v24, v0

    if-eqz v24, :cond_2f

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v21

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/transition/Visibility;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-static {v0, v7}, Landroid/transition/Visibility;->getVisibilityChangeInfo(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/transition/Visibility$VisibilityInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/transition/Visibility$VisibilityInfo;->visibilityChange:Z

    move/from16 v24, v0

    if-nez v24, :cond_ef

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/transition/TransitionUtils;->copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v15

    goto/16 :goto_2f

    :cond_ef
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-nez v24, :cond_2f

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getId()I

    move-result v12

    const/16 v24, -0x1

    move/from16 v0, v24

    if-eq v12, v0, :cond_2f

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v24

    if-eqz v24, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/Visibility;->mCanRemoveViews:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2f

    move-object/from16 v15, v22

    goto/16 :goto_2f

    :cond_113
    const/16 v24, 0x4

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_11f

    move-object/from16 v23, v8

    goto/16 :goto_2f

    :cond_11f
    move-object/from16 v0, v22

    if-ne v0, v8, :cond_127

    move-object/from16 v23, v8

    goto/16 :goto_2f

    :cond_127
    move-object/from16 v15, v22

    goto/16 :goto_2f

    :cond_12b
    move-object v9, v15

    new-instance v24, Landroid/transition/Visibility$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v9}, Landroid/transition/Visibility$1;-><init>(Landroid/transition/Visibility;Landroid/view/ViewGroup;Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_99

    :cond_140
    if-eqz v23, :cond_17e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setTransitionVisibility(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_178

    new-instance v6, Landroid/transition/Visibility$DisappearListener;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/transition/Visibility;->mSuppressLayout:Z

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, p5

    move/from16 v2, v24

    invoke-direct {v6, v0, v1, v2}, Landroid/transition/Visibility$DisappearListener;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/transition/Visibility;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :goto_177
    return-object v5

    :cond_178
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/view/View;->setTransitionVisibility(I)V

    goto :goto_177

    :cond_17e
    const/16 v24, 0x0

    return-object v24
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6

    const/4 v0, 0x0

    return-object v0
.end method

.method public setMode(I)V
    .registers 4

    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/transition/Visibility;->mMode:I

    return-void
.end method

.method public setSuppressLayout(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/transition/Visibility;->mSuppressLayout:Z

    return-void
.end method
