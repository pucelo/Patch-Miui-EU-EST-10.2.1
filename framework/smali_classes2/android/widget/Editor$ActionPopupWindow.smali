.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$ActionPinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$ActionPopupWindow$1;
    }
.end annotation


# instance fields
.field private final POPUP_TEXT_LAYOUT:I

.field private mAutoFillTextView:Landroid/widget/TextView;

.field private mCopyTextView:Landroid/widget/TextView;

.field private mCutTextView:Landroid/widget/TextView;

.field private mFeatureTel:Z

.field private mMaxPhraseListHeight:I

.field private mPasteTextView:Landroid/widget/TextView;

.field private mPhraseTextView:Landroid/widget/TextView;

.field private mReplaceTextView:Landroid/widget/TextView;

.field private mSearchImageView:Landroid/widget/ImageView;

.field private mSelectAllTextView:Landroid/widget/TextView;

.field private mSelectTextView:Landroid/widget/TextView;

.field private mShareImageView:Landroid/widget/ImageView;

.field private mTelImageView:Landroid/widget/ImageView;

.field private mTextActionPadding:I

.field private mTranslationHandler:Landroid/os/Handler;

.field private mTranslationImageView:Landroid/widget/ImageView;

.field private mTranslationManager:Landroid/widget/TranslationManager;

.field private mTranslationPanel:Landroid/view/View;

.field private mTranslationPresenter:Landroid/widget/TranslationPresenter;

.field private mWebImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TranslationPresenter;
    .registers 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V
    .registers 6

    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$HandleView;)V

    const v1, 0x1103001f

    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->POPUP_TEXT_LAYOUT:I

    new-instance v1, Landroid/widget/Editor$ActionPopupWindow$1;

    invoke-direct {v1, p0}, Landroid/widget/Editor$ActionPopupWindow$1;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    iput-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Landroid/widget/Editor;->-wrap2()Z

    move-result v1

    if-eqz v1, :cond_46

    const v1, 0x110b002e

    :goto_22
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_45

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    :cond_45
    return-void

    :cond_46
    const v1, 0x110b002d

    goto :goto_22
.end method

.method private getMaxPhraseListHeight()I
    .registers 9

    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v7}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11020086

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const v7, 0x11020087

    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int v7, v2, v1

    add-int/2addr v7, v4

    add-int/2addr v7, v3

    return v7
.end method

.method private isPasswordInputType()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget v2, v2, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v2, 0xfff

    const/16 v2, 0x81

    if-eq v0, v2, :cond_f

    const/16 v2, 0xe1

    if-ne v0, v2, :cond_10

    :cond_f
    :goto_f
    return v1

    :cond_10
    const/16 v2, 0x12

    if-eq v0, v2, :cond_f

    const/4 v1, 0x0

    goto :goto_f
.end method

.method private newImageView()Landroid/widget/ImageView;
    .registers 5

    const/4 v3, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x110200e3

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private newTextView()Landroid/widget/TextView;
    .registers 6

    const/4 v4, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x1103001f

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method


# virtual methods
.method protected createAnimations()V
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_a4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_ac

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_b4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_bc

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_c4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_cc

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-instance v4, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v4}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOut:Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    aput-object v2, v4, v6

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Landroid/widget/Editor$ActionPopupWindow$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$ActionPopupWindow$2;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    iput-object v3, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeOutListener:Landroid/animation/AnimatorListenerAdapter;

    return-void

    :array_a4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_ac
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_b4
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :array_bc
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_c4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_cc
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method protected createPopupWindow()V
    .registers 5

    new-instance v0, Landroid/widget/Editor$AnimatePopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$AnimatePopupWindow;-><init>(Landroid/widget/Editor;Landroid/content/Context;Landroid/widget/Editor$AnimatePopupWindow;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method public dismiss()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->setZeroTouchableSurface()V

    return-void
.end method

.method public fadeIn(II)V
    .registers 5

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAboveHandle:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    :goto_1a
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAnimationFadeIn:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected initContentView()V
    .registers 5

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TouchPanelLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setOrientation(I)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110200e2

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    const v1, 0x110c0011

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->setId(I)V

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    const v1, 0x110200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    const v1, 0x110200dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    const v1, 0x110200da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    const v1, 0x11090060

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    const v1, 0x11090061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    const v1, 0x11090062

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    const v1, 0x11090063

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v1, 0x11090064

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    const v1, 0x11090065

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAutoFillTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mAutoFillTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAutoFillTextView:Landroid/widget/TextView;

    const v1, 0x1109006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mAutoFillTextView:Landroid/widget/TextView;

    const v1, 0x1020272

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    const v1, 0x110200d1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    const v1, 0x110200d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    const v1, 0x11090066

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 35

    const/4 v7, -0x1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->isFocused()Z

    move-result v29

    if-eqz v29, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v26

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v27

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    const/16 v30, 0x0

    move/from16 v0, v30

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_b6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v29

    if-eqz v29, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SelectionModifierCursorController;->setMinTouchOffset(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Landroid/widget/Editor$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    :cond_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_a6
    :goto_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-wrap1(Landroid/widget/Editor;)Landroid/widget/SelectionActionModeHelper;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Landroid/widget/SelectionActionModeHelper;->onSelectionAction(I)V

    return-void

    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_df

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    const v30, 0x102001f

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Editor;->startSelectionActionMode()Z

    const v7, 0x102001f

    goto :goto_a6

    :cond_df
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_112

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->canPaste()Z

    move-result v29

    if-eqz v29, :cond_112

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    const v30, 0x1020022

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    const v7, 0x1020022

    goto :goto_a6

    :cond_112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/Editor;->replace()V

    const v7, 0x1020034

    goto/16 :goto_a6

    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_14d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    const v30, 0x1020021

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    const v7, 0x1020021

    goto/16 :goto_a6

    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    const v30, 0x1020020

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    const v7, 0x1020020

    goto/16 :goto_a6

    :cond_16e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1f6

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.action.SEND"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, "text/plain"

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    const v30, 0x10405c9

    move/from16 v0, v30

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-static {v13, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v8, v1}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    check-cast v29, Landroid/text/Spannable;

    add-int v30, v17, v15

    div-int/lit8 v30, v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const v7, 0x1020035

    goto/16 :goto_a6

    :cond_1f6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2cf

    sget-boolean v29, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v29, :cond_26b

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v29, "query"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    :goto_24f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    check-cast v29, Landroid/text/Spannable;

    add-int v30, v17, v15

    div-int/lit8 v30, v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const v7, 0x1020035

    goto/16 :goto_a6

    :cond_26b
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.action.SEARCH"

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "qsb://query?words="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1, v15}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "&ref=miuiEditor&web_search=true"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_24f

    :cond_2cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_335

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/LinkSpec;

    if-eqz v14, :cond_a6

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.action.DIAL"

    iget-object v0, v14, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    move/from16 v0, v17

    if-eq v0, v15, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    check-cast v29, Landroid/text/Spannable;

    add-int v30, v17, v15

    div-int/lit8 v30, v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_a6

    :cond_335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_39b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/widget/LinkSpec;

    if-eqz v14, :cond_a6

    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v29, "android.intent.action.VIEW"

    iget-object v0, v14, Landroid/widget/LinkSpec;->url:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v13}, Landroid/widget/Editor;->-wrap20(Landroid/widget/Editor;Landroid/content/Context;Landroid/content/Intent;)V

    move/from16 v0, v17

    if-eq v0, v15, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    check-cast v29, Landroid/text/Spannable;

    add-int v30, v17, v15

    div-int/lit8 v30, v30, 0x2

    invoke-static/range {v29 .. v30}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_a6

    :cond_39b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_556

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v23

    if-eqz v23, :cond_3c1

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v29

    if-nez v29, :cond_43b

    :cond_3c1
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->newTextView()Landroid/widget/TextView;

    move-result-object v4

    const v29, 0x11090067

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v29, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v31, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v32

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v29, Landroid/widget/Editor$ActionPopupWindow$3;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$3;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v30

    const v31, 0x110200e2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v4, v1}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a6

    :cond_43b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    const-string/jumbo v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v29, 0x1103000f

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    const v29, 0x110c002c

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->isPasswordInputType()Z

    move-result v29

    if-eqz v29, :cond_53f

    const/16 v29, 0x8

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_479
    const v29, 0x102000a

    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ListView;

    const/16 v29, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    new-instance v22, Landroid/widget/Editor$PhraseAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$PhraseAdapter;-><init>(Landroid/widget/Editor;Ljava/util/ArrayList;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move/from16 v18, v17

    move/from16 v16, v15

    new-instance v29, Landroid/widget/Editor$ActionPopupWindow$5;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor$ActionPopupWindow$5;-><init>(Landroid/widget/Editor$ActionPopupWindow;II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x110b0031

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const/4 v11, -0x2

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_4f7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    move/from16 v29, v0

    if-nez v29, :cond_4f3

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->getMaxPhraseListHeight()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    :cond_4f3
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/Editor$ActionPopupWindow;->mMaxPhraseListHeight:I

    :cond_4f7
    new-instance v29, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v30

    const v31, 0x110200e2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a6

    :cond_53f
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v29, Landroid/widget/Editor$ActionPopupWindow$4;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Editor$ActionPopupWindow$4;-><init>(Landroid/widget/Editor$ActionPopupWindow;)V

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_479

    :cond_556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_6cc

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    if-nez v29, :cond_6a5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v29

    const-string/jumbo v30, "layout_inflater"

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v29, 0x11030020

    const/16 v30, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    :cond_594
    :goto_594
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v29, v0

    if-nez v29, :cond_5bb

    new-instance v29, Landroid/widget/TranslationPresenter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-direct/range {v29 .. v31}, Landroid/widget/TranslationPresenter;-><init>(Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    :cond_5bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v30

    const v31, 0x110200e2

    move-object/from16 v0, v29

    move/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    sub-int v28, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x110b0034

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v29

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    add-int v29, v29, v30

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v11, v29, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    new-instance v30, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-direct {v0, v1, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v29 .. v30}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setSubPanelAsContent(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mAboveHandle:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TranslationPresenter;->setAboveHandle(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/TranslationPresenter;->setInProgress()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TranslationManager;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a6

    :cond_6a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v29

    if-eqz v29, :cond_594

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/16 :goto_594

    :cond_6cc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mAutoFillTextView:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v29

    const v30, 0x1020043

    invoke-virtual/range {v29 .. v30}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    goto/16 :goto_a6
.end method

.method public show()V
    .registers 35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v26

    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$ActionPopupWindow;->isPasswordInputType()Z

    move-result v23

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_354

    sub-int v30, v26, v27

    if-lez v30, :cond_354

    xor-int/lit8 v13, v23, 0x1

    :goto_3a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mFeatureTel:Z

    move/from16 v30, v0

    if-eqz v30, :cond_86

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_86

    const/16 v30, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;

    move-result-object v24

    if-eqz v24, :cond_86

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_86

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v17, 0x1

    :cond_86
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-nez v17, :cond_c6

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_c6

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v27

    move/from16 v2, v26

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/widget/Linkify;->getLinks(Ljava/lang/CharSequence;III)Ljava/util/ArrayList;

    move-result-object v24

    if-eqz v24, :cond_c6

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v30

    if-lez v30, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v19, 0x1

    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->canCopy()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->canCut()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->canPaste()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v30

    if-eqz v30, :cond_35b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-wrap11(Landroid/widget/Editor;)Z

    move-result v30

    if-eqz v30, :cond_35b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v30

    if-eqz v30, :cond_357

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->hasSelection()Z

    move-result v30

    :goto_12a
    xor-int/lit8 v12, v30, 0x1

    :goto_12c
    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_35e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->hasSelection()Z

    move-result v30

    xor-int/lit8 v14, v30, 0x1

    :goto_142
    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_361

    if-nez v27, :cond_154

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v0, v1, :cond_361

    :cond_154
    const/4 v15, 0x1

    :goto_155
    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_364

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->hasSelection()Z

    move-result v30

    if-eqz v30, :cond_364

    xor-int/lit8 v16, v23, 0x1

    :goto_16d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->hasSelection()Z

    move-result v30

    if-nez v30, :cond_368

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    instance-of v0, v0, Lmiui/phrase/AddPhraseActivity;

    move/from16 v30, v0

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_368

    if-eqz v23, :cond_1ab

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/provider/MiuiSettings$FrequentPhrases;->getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v30

    if-eqz v30, :cond_368

    :cond_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->isInExtractedMode()Z

    move-result v30

    xor-int/lit8 v11, v30, 0x1

    :goto_1bb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v30, v0

    if-nez v30, :cond_1e2

    new-instance v30, Landroid/widget/TranslationManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationHandler:Landroid/os/Handler;

    move-object/from16 v32, v0

    invoke-direct/range {v30 .. v32}, Landroid/widget/TranslationManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    :cond_1e2
    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v30

    if-lez v30, :cond_36b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->hasSelection()Z

    move-result v30

    if-eqz v30, :cond_36b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationManager:Landroid/widget/TranslationManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TranslationManager;->isAvailable()Z

    move-result v30

    if-eqz v30, :cond_36b

    xor-int/lit8 v18, v23, 0x1

    :goto_206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->canRequestAutofill()Z

    move-result v30

    if-eqz v30, :cond_372

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_36f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/widget/Editor;->-get6(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    :goto_238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSearchImageView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v13, :cond_375

    const/16 v30, 0x0

    :goto_242
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTelImageView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v17, :cond_379

    const/16 v30, 0x0

    :goto_253
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mWebImageView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v19, :cond_37d

    const/16 v30, 0x0

    :goto_264
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCopyTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v8, :cond_381

    const/16 v30, 0x0

    :goto_275
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mCutTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v9, :cond_385

    const/16 v30, 0x0

    :goto_286
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v10, :cond_389

    const/16 v30, 0x0

    :goto_297
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mReplaceTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v12, :cond_38d

    const/16 v30, 0x0

    :goto_2a8
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v14, :cond_391

    const/16 v30, 0x0

    :goto_2b9
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mSelectAllTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v15, :cond_395

    const/16 v30, 0x0

    :goto_2ca
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTranslationImageView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v18, :cond_399

    const/16 v30, 0x0

    :goto_2db
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mShareImageView:Landroid/widget/ImageView;

    move-object/from16 v31, v0

    if-eqz v16, :cond_39d

    const/16 v30, 0x0

    :goto_2ec
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mPhraseTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v11, :cond_3a1

    const/16 v30, 0x0

    :goto_2fd
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mAutoFillTextView:Landroid/widget/TextView;

    move-object/from16 v31, v0

    if-eqz v7, :cond_3a5

    const/16 v30, 0x0

    :goto_30e
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/TouchPanelLayout;->getChildCount()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->clear()V

    const/16 v22, 0x0

    :goto_32a
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_3a9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mMainPanel:Landroid/widget/TouchPanelLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TouchPanelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v30

    if-nez v30, :cond_351

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_351
    add-int/lit8 v22, v22, 0x1

    goto :goto_32a

    :cond_354
    const/4 v13, 0x0

    goto/16 :goto_3a

    :cond_357
    const/16 v30, 0x0

    goto/16 :goto_12a

    :cond_35b
    const/4 v12, 0x0

    goto/16 :goto_12c

    :cond_35e
    const/4 v14, 0x0

    goto/16 :goto_142

    :cond_361
    const/4 v15, 0x0

    goto/16 :goto_155

    :cond_364
    const/16 v16, 0x0

    goto/16 :goto_16d

    :cond_368
    const/4 v11, 0x0

    goto/16 :goto_1bb

    :cond_36b
    const/16 v18, 0x0

    goto/16 :goto_206

    :cond_36f
    const/4 v7, 0x1

    goto/16 :goto_238

    :cond_372
    const/4 v7, 0x0

    goto/16 :goto_238

    :cond_375
    const/16 v30, 0x8

    goto/16 :goto_242

    :cond_379
    const/16 v30, 0x8

    goto/16 :goto_253

    :cond_37d
    const/16 v30, 0x8

    goto/16 :goto_264

    :cond_381
    const/16 v30, 0x8

    goto/16 :goto_275

    :cond_385
    const/16 v30, 0x8

    goto/16 :goto_286

    :cond_389
    const/16 v30, 0x8

    goto/16 :goto_297

    :cond_38d
    const/16 v30, 0x8

    goto/16 :goto_2a8

    :cond_391
    const/16 v30, 0x8

    goto/16 :goto_2b9

    :cond_395
    const/16 v30, 0x8

    goto/16 :goto_2ca

    :cond_399
    const/16 v30, 0x8

    goto/16 :goto_2db

    :cond_39d
    const/16 v30, 0x8

    goto/16 :goto_2ec

    :cond_3a1
    const/16 v30, 0x8

    goto/16 :goto_2fd

    :cond_3a5
    const/16 v30, 0x8

    goto/16 :goto_30e

    :cond_3a9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v29

    sget-boolean v30, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v30, :cond_419

    sget-boolean v30, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v30, :cond_416

    const/16 v30, 0x5

    :goto_3bd
    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_419

    const/16 v25, 0x0

    :goto_3c5
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_497

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v30, 0x3

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingBottom()I

    move-result v31

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_3fb
    if-nez v8, :cond_4ec

    xor-int/lit8 v30, v9, 0x1

    if-eqz v30, :cond_4ec

    xor-int/lit8 v30, v10, 0x1

    if-eqz v30, :cond_4ec

    xor-int/lit8 v30, v12, 0x1

    if-eqz v30, :cond_4ec

    xor-int/lit8 v30, v14, 0x1

    if-eqz v30, :cond_4ec

    xor-int/lit8 v30, v15, 0x1

    if-eqz v30, :cond_4ec

    xor-int/lit8 v30, v11, 0x1

    if-eqz v30, :cond_4ec

    return-void

    :cond_416
    const/16 v30, 0x6

    goto :goto_3bd

    :cond_419
    sget-boolean v30, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v30, :cond_454

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_454

    if-eqz v11, :cond_454

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_454

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3fd999999999999aL    # 0.4

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v25, v0

    goto/16 :goto_3c5

    :cond_454
    sget-boolean v30, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v30, :cond_48f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v30

    sget-object v31, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v31 .. v31}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_48f

    if-eqz v11, :cond_48f

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_48f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0x3fe3333333333333L    # 0.6

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v25, v0

    goto/16 :goto_3c5

    :cond_48f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mTextActionPadding:I

    move/from16 v25, v0

    goto/16 :goto_3c5

    :cond_497
    const/16 v22, 0x0

    :goto_499
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$ActionPopupWindow;->mVisibleChildren:Ljava/util/List;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v22, :cond_4d4

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :goto_4bc
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getPaddingBottom()I

    move-result v31

    move-object/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v30

    move/from16 v3, v25

    move/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_499

    :cond_4d4
    add-int/lit8 v30, v29, -0x1

    move/from16 v0, v22

    move/from16 v1, v30

    if-ne v0, v1, :cond_4e4

    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_4bc

    :cond_4e4
    const/16 v30, 0x1

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_4bc

    :cond_4ec
    invoke-super/range {p0 .. p0}, Landroid/widget/Editor$ActionPinnedPopupWindow;->show()V

    return-void
.end method

.method protected updatePosition(II)V
    .registers 5

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    check-cast v0, Landroid/widget/Editor$AnimatePopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$AnimatePopupWindow;->isDismissing()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Editor$AnimatePopupWindow;->dismiss(Z)V

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$ActionPinnedPopupWindow;->updatePosition(II)V

    return-void
.end method
