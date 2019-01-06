.class public abstract Landroid/widget/AdapterViewAnimator;
.super Landroid/widget/AdapterView;
.source "AdapterViewAnimator.java"

# interfaces
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
.implements Landroid/widget/Advanceable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AdapterViewAnimator$CheckForTap;,
        Landroid/widget/AdapterViewAnimator$SavedState;,
        Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
        "Landroid/widget/Advanceable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RemoteViewAnimator"

.field static final TOUCH_MODE_DOWN_IN_CURRENT_VIEW:I = 0x1

.field static final TOUCH_MODE_HANDLED:I = 0x2

.field static final TOUCH_MODE_NONE:I


# instance fields
.field mActiveOffset:I

.field mAdapter:Landroid/widget/Adapter;

.field mAnimateFirstTime:Z

.field mCurrentWindowEnd:I

.field mCurrentWindowStart:I

.field mCurrentWindowStartUnbounded:I

.field mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/Adapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDeferNotifyDataSetChanged:Z

.field mFirstTime:Z

.field mInAnimation:Landroid/animation/ObjectAnimator;

.field mLoopViews:Z

.field mMaxNumActiveViews:I

.field mOutAnimation:Landroid/animation/ObjectAnimator;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field mPreviousViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceChildHeight:I

.field mReferenceChildWidth:I

.field mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

.field private mRestoreWhichChild:I

.field private mTouchMode:I

.field mViewsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/widget/AdapterViewAnimator$ViewAndMetaData;",
            ">;"
        }
    .end annotation
.end field

.field mWhichChild:I


# direct methods
.method static synthetic -get0(Landroid/widget/AdapterViewAnimator;)I
    .registers 2

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AdapterViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    iput v5, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    iput-boolean v4, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mFirstTime:Z

    iput-boolean v5, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iput v6, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iput v4, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    sget-object v3, Lcom/android/internal/R$styleable;->AdapterViewAnimator:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_57

    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/content/Context;I)V

    :goto_38
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_5f

    invoke-virtual {p0, p1, v2}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/content/Context;I)V

    :goto_41
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->setAnimateFirstView(Z)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->initViewAnimator()V

    return-void

    :cond_57
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultInAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_38

    :cond_5f
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getDefaultOutAnimation()Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    goto :goto_41
.end method

.method private addChild(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v2, v1}, Landroid/widget/AdapterViewAnimator;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v1, v2, :cond_11

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-ne v1, v2, :cond_24

    :cond_11
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    :cond_24
    return-void
.end method

.method private getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;
    .registers 5

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v2, v0, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    if-ne v2, p1, :cond_a

    return-object v0

    :cond_1b
    const/4 v2, 0x0

    return-object v2
.end method

.method private initViewAnimator()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    return-void
.end method

.method private measureChildren()V
    .registers 9

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    sub-int v2, v5, v6

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    sub-int v1, v5, v6

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_31

    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_31
    return-void
.end method

.method private setDisplayedChild(IZ)V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v2, :cond_25

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    if-lt p1, v2, :cond_2d

    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_26

    :goto_11
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    :cond_13
    :goto_13
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3c

    const/4 v0, 0x1

    :goto_1a
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v1, p2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    if-eqz v0, :cond_25

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->requestFocus(I)Z

    :cond_25
    return-void

    :cond_26
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_2d
    if-gez p1, :cond_13

    iget-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v2, :cond_39

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :cond_39
    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    goto :goto_13

    :cond_3c
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public advance()V
    .registers 1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->showNext()V

    return-void
.end method

.method applyTransformForChildAtIndex(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method cancelHandleClick()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    :cond_9
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    return-void
.end method

.method checkForAndHandleDataChanged()V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    if-eqz v0, :cond_c

    new-instance v1, Landroid/widget/AdapterViewAnimator$2;

    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$2;-><init>(Landroid/widget/AdapterViewAnimator;)V

    invoke-virtual {p0, v1}, Landroid/widget/AdapterViewAnimator;->post(Ljava/lang/Runnable;)Z

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mDataChanged:Z

    return-void
.end method

.method configureViewAnimator(II)V
    .registers 4

    add-int/lit8 v0, p1, -0x1

    iput p1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    iput p2, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->removeAllViewsInLayout()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    return-void
.end method

.method createOrReuseLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v1
.end method

.method public deferNotifyDataSetChanged()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public fyiWillBeAdvancedByHostKThx()V
    .registers 1

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .registers 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Landroid/widget/AdapterView;->getBaseline()I

    move-result v0

    goto :goto_e
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 2

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getDefaultInAnimation()Landroid/animation/ObjectAnimator;
    .registers 5

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_14

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    :array_14
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getDefaultOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 5

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_14

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    :array_14
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getDisplayedChild()I
    .registers 2

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    return v0
.end method

.method getFrameForChild()Landroid/widget/FrameLayout;
    .registers 3

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getInAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method getNumActiveViews()I
    .registers 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_11
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    return v0
.end method

.method public getOutAnimation()Landroid/animation/ObjectAnimator;
    .registers 2

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .registers 2

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->getViewAtRelativeIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewAtRelativeIndex(I)Landroid/view/View;
    .registers 6

    const/4 v3, 0x0

    if-ltz p1, :cond_35

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_35

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_35

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    return-object v1

    :cond_35
    return-object v3
.end method

.method getWindowSize()I
    .registers 3

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v1

    if-gt v0, v1, :cond_16

    iget-boolean v1, p0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v1, :cond_16

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mMaxNumActiveViews:I

    mul-int/2addr v1, v0

    return v1

    :cond_16
    return v0

    :cond_17
    const/4 v1, 0x0

    return v1
.end method

.method hideTapFeedback(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method modulo(II)I
    .registers 4

    const/4 v0, 0x0

    if-lez p2, :cond_8

    rem-int v0, p1, p2

    add-int/2addr v0, p2

    rem-int/2addr v0, p2

    return v0

    :cond_8
    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_28

    invoke-virtual {p0, v4}, Landroid/widget/AdapterViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int v3, v5, v6

    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int v1, v5, v6

    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    invoke-virtual {v0, v5, v6, v3, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_28
    return-void
.end method

.method protected onMeasure(II)V
    .registers 14

    const/high16 v10, 0x1000000

    const/4 v8, -0x1

    const/high16 v9, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    if-eq v7, v8, :cond_3f

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    if-eq v7, v8, :cond_3f

    const/4 v0, 0x1

    :goto_1e
    if-nez v2, :cond_43

    if-eqz v0, :cond_41

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int v3, v7, v8

    :cond_2b
    :goto_2b
    if-nez v5, :cond_58

    if-eqz v0, :cond_56

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int v6, v7, v8

    :cond_38
    :goto_38
    invoke-virtual {p0, v6, v3}, Landroid/widget/AdapterViewAnimator;->setMeasuredDimension(II)V

    invoke-direct {p0}, Landroid/widget/AdapterViewAnimator;->measureChildren()V

    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_1e

    :cond_41
    const/4 v3, 0x0

    goto :goto_2b

    :cond_43
    if-ne v2, v9, :cond_2b

    if-eqz v0, :cond_2b

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildHeight:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingTop:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingBottom:I

    add-int v1, v7, v8

    if-le v1, v3, :cond_54

    or-int/2addr v3, v10

    goto :goto_2b

    :cond_54
    move v3, v1

    goto :goto_2b

    :cond_56
    const/4 v6, 0x0

    goto :goto_38

    :cond_58
    if-ne v2, v9, :cond_38

    if-eqz v0, :cond_38

    iget v7, p0, Landroid/widget/AdapterViewAnimator;->mReferenceChildWidth:I

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingLeft:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AdapterViewAnimator;->mPaddingRight:I

    add-int v4, v7, v8

    if-le v4, v6, :cond_69

    or-int/2addr v6, v10

    goto :goto_38

    :cond_69
    move v6, v4

    goto :goto_38
.end method

.method public onRemoteAdapterConnected()Z
    .registers 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    iget-boolean v0, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    :cond_18
    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    if-le v0, v3, :cond_23

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    invoke-direct {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    iput v3, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    :cond_23
    return v2

    :cond_24
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_2f
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .registers 1

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    move-object v0, p1

    check-cast v0, Landroid/widget/AdapterViewAnimator$SavedState;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Landroid/widget/AdapterViewAnimator$SavedState;->whichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v1, :cond_1b

    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iput v1, p0, Landroid/widget/AdapterViewAnimator;->mRestoreWhichChild:I

    :goto_1a
    return-void

    :cond_1b
    iget v1, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    goto :goto_1a
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_d
    new-instance v1, Landroid/widget/AdapterViewAnimator$SavedState;

    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-direct {v1, v0, v2}, Landroid/widget/AdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_80

    :cond_b
    :goto_b
    :pswitch_b
    return v1

    :pswitch_c
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v7}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    if-nez v5, :cond_2b

    new-instance v5, Landroid/widget/AdapterViewAnimator$CheckForTap;

    invoke-direct {v5, p0}, Landroid/widget/AdapterViewAnimator$CheckForTap;-><init>(Landroid/widget/AdapterViewAnimator;)V

    iput-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    :cond_2b
    iput v9, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b

    :pswitch_38
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    if-ne v5, v9, :cond_70

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/AdapterViewAnimator;->getMetaDataForChild(Landroid/view/View;)Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-result-object v4

    if-eqz v3, :cond_70

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6, v3, v7}, Landroid/widget/AdapterViewAnimator;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_5f

    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mPendingCheckForTap:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5f
    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->showTapFeedback(Landroid/view/View;)V

    new-instance v5, Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {v5, p0, v3, v4}, Landroid/widget/AdapterViewAnimator$1;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/widget/AdapterViewAnimator;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    :cond_70
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_b

    :pswitch_73
    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7c

    invoke-virtual {p0, v3}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    :cond_7c
    iput v8, p0, Landroid/widget/AdapterViewAnimator;->mTouchMode:I

    goto :goto_b

    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_c
        :pswitch_38
        :pswitch_b
        :pswitch_73
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method refreshChildren()V
    .registers 9

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_6

    return-void

    :cond_6
    iget v2, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    :goto_8
    iget v5, p0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    if-gt v2, v5, :cond_53

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v0

    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0, v2, v0}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v6

    invoke-interface {v5, v6, v7, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v5

    if-nez v5, :cond_2c

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2c
    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v1, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_50

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_53
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_10
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->checkFocus()V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2f

    new-instance v0, Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    iput-object v0, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Landroid/widget/AdapterViewAnimator;->mDataSetObserver:Landroid/widget/AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterViewAnimator;->mItemCount:I

    :cond_2f
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setFocusable(Z)V

    iput v2, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {p0, v0, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    return-void
.end method

.method public setAnimateFirstView(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AdapterViewAnimator;->mAnimateFirstTime:Z

    return-void
.end method

.method public setDisplayedChild(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(IZ)V

    return-void
.end method

.method public setInAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setInAnimation(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public setOutAnimation(Landroid/animation/ObjectAnimator;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public setOutAnimation(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .registers 7

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_1b

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    :cond_1b
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterViewAnimator;->mDeferNotifyDataSetChanged:Z

    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AdapterViewAnimator;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AdapterViewAnimator;->setAdapter(Landroid/widget/Adapter;)V

    :cond_36
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_9
    return-void
.end method

.method public setSelection(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method public showNext()V
    .registers 2

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method showOnly(IZ)V
    .registers 38

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_7

    return-void

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getCount()I

    move-result v4

    if-nez v4, :cond_e

    return-void

    :cond_e
    const/4 v14, 0x0

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_60

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->clearAnimation()V

    move-object/from16 v0, v31

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4e

    move-object/from16 v29, v31

    check-cast v29, Landroid/view/ViewGroup;

    invoke-virtual/range {v29 .. v29}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    :cond_4e
    const/4 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->removeViewInLayout(Landroid/view/View;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_f

    :cond_60
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mActiveOffset:I

    sub-int v23, p1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getNumActiveViews()I

    move-result v5

    add-int v5, v5, v23

    add-int/lit8 v21, v5, -0x1

    const/4 v5, 0x0

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    add-int/lit8 v5, v4, -0x1

    move/from16 v0, v21

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/AdapterViewAnimator;->mLoopViews:Z

    if-eqz v5, :cond_8e

    move/from16 v22, v23

    move/from16 v20, v21

    :cond_8e
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v26

    const/16 v32, 0x0

    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_b0

    const/16 v32, 0x1

    :cond_b0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_bc
    :goto_bc
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    const/16 v28, 0x0

    if-nez v32, :cond_116

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v27

    if-lt v5, v0, :cond_dc

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-le v5, v0, :cond_116

    :cond_dc
    const/16 v28, 0x1

    :cond_de
    :goto_de
    if-eqz v28, :cond_bc

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, p2

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_bc

    :cond_116
    if-eqz v32, :cond_de

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v26

    if-le v5, v0, :cond_de

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v0, v27

    if-ge v5, v0, :cond_de

    const/16 v28, 0x1

    goto :goto_de

    :cond_12b
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v22

    if-ne v0, v5, :cond_13b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v20

    if-eq v0, v5, :cond_1d6

    :cond_13b
    move/from16 v14, v22

    :goto_13d
    move/from16 v0, v20

    if-gt v14, v0, :cond_239

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move/from16 v24, v0

    :goto_16b
    sub-int v8, v14, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e8

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mPreviousViews:Ljava/util/ArrayList;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v15, v5, 0x1

    :goto_189
    if-eqz v15, :cond_1ea

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v0, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iput v8, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->relativeIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v30

    move/from16 v3, p2

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    :goto_1bf
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    iget-object v5, v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_13d

    :cond_1d6
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move/from16 v0, v23

    if-ne v0, v5, :cond_13b

    :cond_1de
    :goto_1de
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->requestLayout()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->invalidate()V

    return-void

    :cond_1e5
    const/16 v24, -0x1

    goto :goto_16b

    :cond_1e8
    const/4 v15, 0x0

    goto :goto_189

    :cond_1ea
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-interface {v5, v9, v6, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v5, v9}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterViewAnimator;->getFrameForChild()Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v19, :cond_20e

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AdapterViewAnimator;->mViewsMap:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    new-instance v5, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v11}, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;-><init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;IIJ)V

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/widget/AdapterViewAnimator;->addChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/widget/AdapterViewAnimator;->applyTransformForChildAtIndex(Landroid/view/View;I)V

    const/4 v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v8, v7, v1}, Landroid/widget/AdapterViewAnimator;->transformViewForTransition(IILandroid/view/View;Z)V

    goto :goto_1bf

    :cond_239
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStartUnbounded:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v5, :cond_1de

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowStart:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v13

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterViewAnimator;->mCurrentWindowEnd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/widget/AdapterViewAnimator;->modulo(II)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AdapterViewAnimator;->mRemoteViewsAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v5, v13, v12}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    goto/16 :goto_1de
.end method

.method public showPrevious()V
    .registers 2

    iget v0, p0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AdapterViewAnimator;->setDisplayedChild(I)V

    return-void
.end method

.method showTapFeedback(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method transformViewForTransition(IILandroid/view/View;Z)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    if-ne p2, v0, :cond_d

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/widget/AdapterViewAnimator;->mOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_d
.end method
