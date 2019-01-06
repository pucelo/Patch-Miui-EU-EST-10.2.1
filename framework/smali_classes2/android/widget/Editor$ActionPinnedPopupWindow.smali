.class abstract Landroid/widget/Editor$ActionPinnedPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$Fader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActionPinnedPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ActionPinnedPopupWindow$1;,
        Landroid/widget/Editor$ActionPinnedPopupWindow$2;
    }
.end annotation


# static fields
.field protected static final LONG_ACTION_MENU_COUNT:I = 0x6


# instance fields
.field protected mAboveHandle:Z

.field protected mAnimationFadeIn:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOut:Landroid/animation/AnimatorSet;

.field protected mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandleView:Landroid/widget/Editor$HandleView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field protected mMainPanel:Landroid/widget/TouchPanelLayout;

.field private mShower:Ljava/lang/Runnable;

.field private mSpaceOffScreen:I

.field private final mTouchableRegion:Landroid/graphics/Region;

.field protected mVisibleChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/widget/Editor$HandleView;
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$ActionPinnedPopupWindow;)Landroid/graphics/Region;
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Editor$ActionPinnedPopupWindow;)Z
    .registers 2

    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMiddleOffsetInSelection()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .registers 5

    iput-object p1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/widget/Editor$ActionPinnedPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$ActionPinnedPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPinnedPopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    iput-object p2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-static {p1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->createAnimations()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/Editor$AnimatePopupWindow;->setFader(Landroid/widget/Editor$Fader;)V

    invoke-static {p1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private isMainPanelContent()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    if-ne v1, v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method private isMiddleOffsetInSelection()Z
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-gt v0, v2, :cond_3e

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    if-lt v0, v2, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .registers 3

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method


# virtual methods
.method public cancelAnimations()V
    .registers 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method protected clipVertically(I)I
    .registers 12

    const/4 v9, 0x0

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    invoke-virtual {v1, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    sub-int v6, v7, v8

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x110200f0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gez p1, :cond_7a

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7, v5}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v7

    if-eqz v7, :cond_7a

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    if-le v6, v7, :cond_6f

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr p1, v7

    :goto_62
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr p1, v7

    div-int/lit8 v7, v0, 0x2

    add-int/2addr p1, v7

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    :cond_6e
    :goto_6e
    return p1

    :cond_6f
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    add-int/2addr p1, v7

    goto :goto_62

    :cond_7a
    if-gez p1, :cond_9d

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_9d

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v7

    add-int/2addr p1, v7

    div-int/lit8 v7, v0, 0x2

    add-int/2addr p1, v7

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_6e

    :cond_9d
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, p1

    iget-object v8, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v8}, Landroid/widget/Editor;->-wrap14(Landroid/widget/Editor;)I

    move-result v8

    if-le v7, v8, :cond_6e

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7, v4}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v7

    if-eqz v7, :cond_6e

    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    if-le v6, v7, :cond_d1

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p1, v7

    :goto_c6
    iget-object v7, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr p1, v7

    div-int/lit8 v7, v0, 0x2

    sub-int/2addr p1, v7

    goto :goto_6e

    :cond_d1
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr p1, v7

    goto :goto_c6
.end method

.method protected computeLocalPosition()V
    .registers 13

    const/4 v11, 0x0

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->measureContent()V

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9, v6}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_77

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    :goto_4d
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    iget v2, v9, Landroid/widget/Editor$HandleView;->mHorizontalScale:F

    invoke-virtual {v3, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v7

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    add-float v9, v7, v0

    int-to-float v10, v8

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    mul-float/2addr v9, v2

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    return-void

    :cond_77
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9, v5}, Landroid/widget/Editor;->-wrap4(Landroid/widget/Editor;I)Z

    move-result v9

    if-eqz v9, :cond_bf

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v9}, Landroid/widget/Editor$HandleView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_bc

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x110200f0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    div-int/lit8 v10, v1, 0x2

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    :cond_bc
    iput-boolean v11, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mAboveHandle:Z

    goto :goto_4d

    :cond_bf
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v9

    if-eqz v9, :cond_f1

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->getTextOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_4d

    :cond_f1
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    if-nez v9, :cond_103

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v9, v10}, Landroid/widget/Editor;->-set4(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_103
    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v9}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get5(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iput v9, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    goto/16 :goto_4d
.end method

.method protected abstract createAnimations()V
.end method

.method public dismiss()V
    .registers 1

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->dismiss()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setZeroTouchableSurface()V

    return-void
.end method

.method public fadeOut()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected getTextOffset()I
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    return-void
.end method

.method protected measureContent()V
    .registers 8

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v3, :cond_27

    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_3b

    const/4 v3, 0x5

    :goto_25
    if-ge v4, v3, :cond_3d

    :cond_27
    const/high16 v2, -0x80000000

    :goto_29
    iget-object v3, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v6, -0x80000000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->measure(II)V

    return-void

    :cond_3b
    const/4 v3, 0x6

    goto :goto_25

    :cond_3d
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_29
.end method

.method protected setContentAreaAsTouchableSurface(Z)V
    .registers 17

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v11, 0x110c0011

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-nez p1, :cond_25

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_59

    :cond_25
    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v10}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v10, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    mul-int/lit8 v11, v11, 0x2

    add-int v2, v10, v11

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v10, :cond_7d

    const/4 v10, 0x5

    :goto_46
    if-ge v11, v10, :cond_7f

    const/high16 v9, -0x80000000

    :goto_4a
    invoke-static {v2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/view/View;->measure(II)V

    :cond_59
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v10, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v6

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/2addr v13, v8

    sub-int/2addr v13, v5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v14

    add-int/2addr v14, v1

    sub-int/2addr v14, v3

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Region;->set(IIII)Z

    return-void

    :cond_7d
    const/4 v10, 0x6

    goto :goto_46

    :cond_7f
    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_4a
.end method

.method protected setMainPanelAsContent()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    invoke-virtual {v0}, Landroid/widget/TouchPanelLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void

    :cond_e
    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v4}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void
.end method

.method protected setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 8

    const/4 v4, -0x1

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->dismiss()V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v2, Landroid/widget/Editor$InsertionHandleView;

    invoke-static {v2}, Landroid/widget/Editor$InsertionHandleView;->-wrap1(Landroid/widget/Editor$InsertionHandleView;)V

    :cond_11
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_2b

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x110c0011

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    :cond_2b
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mVisibleChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->computeLocalPosition()V

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-wrap0(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void
.end method

.method public setY(I)V
    .registers 2

    return-void
.end method

.method protected setZeroTouchableSurface()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method public show()V
    .registers 1

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setMainPanelAsContent()V

    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    return-void
.end method

.method show(I)V
    .registers 6

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updatePosition(II)V
    .registers 10

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->clipVertically(I)I

    move-result v2

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mSpaceOffScreen:I

    neg-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v2, v3, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_42
    return-void

    :cond_43
    iget-object v4, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->setTouchableSurfaceInsetsComputer()V

    goto :goto_42
.end method

.method public updatePosition(IIZZ)V
    .registers 8

    if-nez p4, :cond_4

    if-eqz p3, :cond_2d

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    invoke-virtual {v2}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    instance-of v2, v2, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v2, :cond_1f

    iget-object v0, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->mHandleView:Landroid/widget/Editor$HandleView;

    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    invoke-static {v0}, Landroid/widget/Editor$InsertionHandleView;->-wrap1(Landroid/widget/Editor$InsertionHandleView;)V

    const/4 v2, 0x1

    const/4 v1, 0x1

    invoke-static {v0, v2}, Landroid/widget/Editor$InsertionHandleView;->-set0(Landroid/widget/Editor$InsertionHandleView;Z)Z

    :cond_1f
    invoke-direct {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->isMainPanelContent()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    const/16 v2, 0x1f4

    invoke-virtual {p0, v2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show(I)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    if-eqz v1, :cond_34

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->hide()V

    goto :goto_2d

    :cond_34
    iget-object v2, p0, Landroid/widget/Editor$ActionPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->stopSelectionActionMode()V

    goto :goto_2d
.end method
