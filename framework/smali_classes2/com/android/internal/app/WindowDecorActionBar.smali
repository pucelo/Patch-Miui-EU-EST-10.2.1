.class public Lcom/android/internal/app/WindowDecorActionBar;
.super Landroid/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/WindowDecorActionBar$1;,
        Lcom/android/internal/app/WindowDecorActionBar$2;,
        Lcom/android/internal/app/WindowDecorActionBar$3;,
        Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;,
        Lcom/android/internal/app/WindowDecorActionBar$TabImpl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final FADE_IN_DURATION_MS:J = 0xc8L

.field private static final FADE_OUT_DURATION_MS:J = 0x64L

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "WindowDecorActionBar"


# instance fields
.field mActionMode:Landroid/view/ActionMode;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field private mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field mHideOnContentScroll:Z

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/WindowDecorActionBar$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContainer;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/WindowDecorActionBar;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/app/WindowDecorActionBar;)I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/DecorToolbar;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/internal/app/WindowDecorActionBar;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/app/WindowDecorActionBar;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/WindowDecorActionBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -wrap0(ZZZ)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/WindowDecorActionBar;->-assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 7

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    iput-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    iput-boolean v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v3, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    if-nez v1, :cond_55

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    :cond_55
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$1;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$2;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$3;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    sget-boolean v0, Lcom/android/internal/app/WindowDecorActionBar;->-assertionsDisabled:Z

    if-nez v0, :cond_41

    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_41

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_41
    invoke-direct {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->init(Landroid/view/View;)V

    return-void
.end method

.method private static checkShowingFlags(ZZZ)Z
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    return v0

    :cond_a
    return v0
.end method

.method private cleanupTabs()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v0, :cond_8

    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    :cond_16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .registers 9

    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v3}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    invoke-virtual {v3, p2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    :goto_22
    if-ge v2, v1, :cond_32

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_32
    return-void
.end method

.method private ensureTabsExist()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_6

    return-void

    :cond_6
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1c

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    :goto_19
    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-void

    :cond_1c
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_35

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_19

    :cond_35
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2f
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;
    .registers 5

    instance-of v0, p1, Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/internal/widget/DecorToolbar;

    return-object p1

    :cond_7
    instance-of v0, p1, Landroid/widget/Toolbar;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/widget/Toolbar;

    invoke-virtual {p1}, Landroid/widget/Toolbar;->getWrapper()Lcom/android/internal/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hideForActionMode()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-eqz v0, :cond_13

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_10
    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_13
    return-void
.end method

.method private init(Landroid/view/View;)V
    .registers 13

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    const v5, 0x1020221

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/android/internal/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    :cond_17
    const v5, 0x1020181

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/android/internal/widget/DecorToolbar;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    const v5, 0x1020186

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const v5, 0x1020182

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    const v5, 0x1020417

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v5, :cond_76

    :cond_4d
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " can only be used "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "with a compatible window decor layout"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_76
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4d

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->isSplit()Z

    move-result v5

    if-eqz v5, :cond_d8

    move v5, v6

    :goto_8b
    iput v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v5}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_da

    const/4 v4, 0x1

    :goto_98
    if-eqz v4, :cond_9c

    iput-boolean v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    :cond_9c
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_dc

    :goto_a8
    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v9, 0x10102ce

    invoke-virtual {v5, v10, v8, v9, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v5, 0x15

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_c8

    invoke-virtual {p0, v6}, Lcom/android/internal/app/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    :cond_c8
    const/16 v5, 0x14

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    if-eqz v3, :cond_d4

    int-to-float v5, v3

    invoke-virtual {p0, v5}, Lcom/android/internal/app/WindowDecorActionBar;->setElevation(F)V

    :cond_d4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_d8
    move v5, v7

    goto :goto_8b

    :cond_da
    const/4 v4, 0x0

    goto :goto_98

    :cond_dc
    move v4, v6

    goto :goto_a8
.end method

.method private setHasEmbeddedTabs(Z)V
    .registers 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_44

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, v3}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    :goto_14
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_51

    const/4 v0, 0x1

    :goto_1c
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_30

    if-eqz v0, :cond_53

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    :cond_30
    :goto_30
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v1, :cond_5b

    move v1, v0

    :goto_37
    invoke-interface {v3, v1}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_5d

    :goto_40
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void

    :cond_44
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-interface {v1, v3}, Lcom/android/internal/widget/DecorToolbar;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_14

    :cond_51
    const/4 v0, 0x0

    goto :goto_1c

    :cond_53
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_30

    :cond_5b
    move v1, v2

    goto :goto_37

    :cond_5d
    move v0, v2

    goto :goto_40
.end method

.method private shouldAnimateContextView()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method private showForActionMode()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    if-nez v0, :cond_14

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_14
    return-void
.end method

.method private updateVisibility(Z)V
    .registers 6

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_16

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doShow(Z)V

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->doHide(Z)V

    goto :goto_16
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/WindowDecorActionBar;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    if-eqz p3, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_10
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/WindowDecorActionBar;->configureTab(Landroid/app/ActionBar$Tab;I)V

    if-eqz p2, :cond_16

    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_16
    return-void
.end method

.method animateToMode(Z)V
    .registers 12

    const-wide/16 v8, 0xc8

    const-wide/16 v6, 0x64

    const/16 v5, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_34

    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->showForActionMode()V

    :goto_c
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->shouldAnimateContextView()Z

    move-result v3

    if-eqz v3, :cond_45

    if-eqz p1, :cond_38

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v5, v6, v7}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v4, v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    :goto_20
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :goto_33
    return-void

    :cond_34
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->hideForActionMode()V

    goto :goto_c

    :cond_38
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v4, v8, v9}, Lcom/android/internal/widget/DecorToolbar;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/widget/ActionBarContextView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v1

    goto :goto_20

    :cond_45
    if-eqz p1, :cond_52

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v5}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_33

    :cond_52
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v3, v4}, Lcom/android/internal/widget/DecorToolbar;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_33
.end method

.method public collapseActionView()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method completeDeferredDestroyActionMode()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iput-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    iput-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    :cond_10
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .registers 5

    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mLastMenuVisibility:Z

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public doHide(Z)V
    .registers 14

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    :cond_e
    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_b1

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_18

    if-eqz p1, :cond_b1

    :cond_18
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v10}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    if-eqz p1, :cond_3e

    filled-new-array {v9, v9}, [I

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    :cond_3e
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_6e
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_95

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_95

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v8, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_95
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10c0002

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_b0
    return-void

    :cond_b1
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_b0
.end method

.method public doShow(Z)V
    .registers 13

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    :cond_f
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v5, :cond_c0

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1e

    if-eqz p1, :cond_c0

    :cond_1e
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    if-eqz p1, :cond_3a

    filled-new-array {v8, v8}, [I

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    :cond_3a
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_73

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_73

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput v3, v7, v8

    aput v9, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_73
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_9b

    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_9b

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v9, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_9b
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const v6, 0x10c0003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0xfa

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_b6
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_bf

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    :cond_bf
    return-void

    :cond_c0
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-boolean v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v5, :cond_d7

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_d7

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setTranslationY(F)V

    :cond_d7
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_ee

    iget v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v5, v10, :cond_ee

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    :cond_ee
    iget-object v5, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_b6
.end method

.method public enableContentAnimations(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContentAnimations:Z

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHideOffset()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    const/4 v0, 0x0

    return v0

    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownItemCount()I

    move-result v0

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method

.method public getNavigationMode()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .registers 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    return v0

    :pswitch_b
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v0

    :cond_15
    return v0

    :pswitch_16
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getDropdownSelectedPosition()I

    move-result v0

    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_b
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .registers 6

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_2b

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_2e

    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_2e

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    :cond_2b
    :goto_2b
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v3

    :cond_2e
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_2b
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public hideForSystem()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_a

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isHideOnContentScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHeight()I

    move-result v0

    iget-boolean v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v3, :cond_13

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getHideOffset()I

    move-result v3

    if-ge v3, v0, :cond_13

    :cond_12
    :goto_12
    return v1

    :cond_13
    move v1, v2

    goto :goto_12
.end method

.method public isTitleTruncated()Z
    .registers 2

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->isTitleTruncated()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .registers 2

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    return-void
.end method

.method public onContentScrollStarted()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iput-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    :cond_c
    return-void
.end method

.method public onContentScrollStopped()V
    .registers 1

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurWindowVisibility:I

    return-void
.end method

.method public removeAllTabs()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->cleanupTabs()V

    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .registers 3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->removeTabAt(I)V

    return-void
.end method

.method public removeTabAt(I)V
    .registers 9

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_6

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getPosition()I

    move-result v3

    :goto_10
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v2, :cond_23

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    :cond_23
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, p1

    :goto_2a
    if-ge v0, v1, :cond_3d

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->setPosition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_3a
    iget v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_10

    :cond_3d
    if-ne v3, p1, :cond_4b

    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4c

    move-object v4, v5

    :goto_48
    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    :cond_4b
    return-void

    :cond_4c
    iget-object v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActionBar$Tab;

    goto :goto_48
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .registers 6

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_e
    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    return-void

    :cond_11
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v2}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v0, 0x0

    :goto_1e
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-ne v2, p1, :cond_57

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    :cond_3a
    :goto_3a
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_47
    return-void

    :cond_48
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    goto :goto_1e

    :cond_57
    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5f
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    :cond_71
    check-cast p1, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    iput-object p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/WindowDecorActionBar$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSelectedTab:Lcom/android/internal/app/WindowDecorActionBar$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_3a
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomView(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .registers 4

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setCustomView(Landroid/view/View;)V

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_7
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .registers 4

    const/4 v1, 0x4

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setDisplayOptions(I)V
    .registers 3

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .registers 7

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    :cond_d
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/android/internal/widget/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .registers 4

    const/16 v1, 0x10

    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .registers 4

    const/4 v1, 0x2

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .registers 4

    const/16 v1, 0x8

    if-eqz p1, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .registers 4

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public setElevation(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setElevation(F)V

    :cond_e
    return-void
.end method

.method public setHideOffset(I)V
    .registers 4

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHideOnContentScroll:Z

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(I)V

    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(I)V

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setIcon(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    new-instance v1, Lcom/android/internal/app/NavItemSelectedListener;

    invoke-direct {v1, p2}, Lcom/android/internal/app/NavItemSelectedListener;-><init>(Landroid/app/ActionBar$OnNavigationListener;)V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownParams(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setLogo(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationMode(I)V
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_64

    :goto_d
    if-eq v0, p1, :cond_1e

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    :cond_1e
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/DecorToolbar;->setNavigationMode(I)V

    packed-switch p1, :pswitch_data_6a

    :cond_26
    :goto_26
    iget-object v3, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    if-ne p1, v5, :cond_62

    iget-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_2e
    invoke-interface {v3, v1}, Lcom/android/internal/widget/DecorToolbar;->setCollapsible(Z)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-ne p1, v5, :cond_39

    iget-boolean v2, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    xor-int/lit8 v2, v2, 0x1

    :cond_39
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void

    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/internal/app/WindowDecorActionBar;->getSelectedNavigationIndex()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v3}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_d

    :pswitch_4e
    invoke-direct {p0}, Lcom/android/internal/app/WindowDecorActionBar;->ensureTabsExist()V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    if-eq v1, v4, :cond_26

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    invoke-virtual {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->setSelectedNavigationItem(I)V

    iput v4, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSavedTabPosition:I

    goto :goto_26

    :cond_62
    move v1, v2

    goto :goto_2e

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_3d
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x2
        :pswitch_4e
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0}, Lcom/android/internal/widget/DecorToolbar;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    :goto_1d
    return-void

    :pswitch_1e
    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setDropdownSelectedPosition(I)V

    goto :goto_1d

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_12
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_d
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSubtitle(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mDecorToolbar:Lcom/android/internal/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    if-eqz v0, :cond_a

    iput-boolean v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenByApp:Z

    invoke-direct {p0, v1}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_a
    return-void
.end method

.method public showForSystem()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_b
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_c
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    new-instance v0, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;-><init>(Lcom/android/internal/app/WindowDecorActionBar;Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_5a

    iput-object v0, p0, Lcom/android/internal/app/WindowDecorActionBar;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Lcom/android/internal/app/WindowDecorActionBar$ActionModeImpl;->invalidate()V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    invoke-virtual {p0, v4}, Lcom/android/internal/app/WindowDecorActionBar;->animateToMode(Z)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_52

    iget v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextDisplayMode:I

    if-ne v1, v4, :cond_52

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestApplyInsets()V

    :cond_52
    iget-object v1, p0, Lcom/android/internal/app/WindowDecorActionBar;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_5a
    return-object v2
.end method
