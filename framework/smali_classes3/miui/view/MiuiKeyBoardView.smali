.class public Lmiui/view/MiuiKeyBoardView;
.super Landroid/widget/FrameLayout;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/MiuiKeyBoardView$1;,
        Lmiui/view/MiuiKeyBoardView$2;,
        Lmiui/view/MiuiKeyBoardView$KeyButton;,
        Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static final FUNC_KEY_RATIO:F = 1.6f

.field private static final HORIZONTAL_MARGIN_RATIO:F = 0.2f

.field private static final OK_KEY_RATIO:F = 2.8f

.field private static final PREVIEW_ANIMATION_DURATION:I = 0x64

.field private static final SHOW_PREVIEW_DURATION:J = 0x12cL

.field private static final SIZE_GROUP:[[F

.field private static final SPACE_KEY_RATIO:F = 5.8f

.field private static final SPACE_STR:Ljava/lang/String; = " "

.field private static final VERTICAL_MARGIN_RATIO:F = 0.17f


# instance fields
.field private mAllKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/view/MiuiKeyBoardView$KeyButton;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnCapsLock:Landroid/view/View;

.field private mBtnLetterDelete:Landroid/view/View;

.field private mBtnLetterOK:Landroid/view/View;

.field private mBtnLetterSpace:Landroid/view/View;

.field private mBtnSymbolDelete:Landroid/view/View;

.field private mBtnSymbolOK:Landroid/view/View;

.field private mBtnSymbolSpace:Landroid/view/View;

.field private mBtnToLetterBoard:Landroid/view/View;

.field private mBtnToSymbolBoard:Landroid/view/View;

.field private mConfirmHide:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mIsShowingPreview:Z

.field private mIsUpperMode:Z

.field private mKeyboardListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLetterBoard:Landroid/widget/FrameLayout;

.field private mPopupViewHeight:I

.field private mPopupViewWidth:I

.field private mPopupViewX:I

.field private mPopupViewY:I

.field private mPreviewText:Landroid/widget/TextView;

.field private final mSendDeleteActionRunnable:Ljava/lang/Runnable;

.field private mShowPreviewAnimator:Landroid/animation/ValueAnimator;

.field private mShowPreviewLastTime:J

.field private mShrinkToBottonAnimation:Landroid/view/animation/Animation;

.field private mStretchFromBottonAnimation:Landroid/view/animation/Animation;

.field private mSymbolBoard:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0(Lmiui/view/MiuiKeyBoardView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/view/MiuiKeyBoardView;)V
    .registers 1

    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/view/MiuiKeyBoardView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x9

    const/4 v3, 0x3

    const/4 v0, 0x4

    new-array v0, v0, [[F

    const/16 v1, 0xa

    new-array v1, v1, [F

    fill-array-data v1, :array_2a

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, v4, [F

    fill-array-data v1, :array_42

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, v4, [F

    fill-array-data v1, :array_58

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-array v1, v3, [F

    fill-array-data v1, :array_6e

    aput-object v1, v0, v3

    sput-object v0, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    return-void

    :array_2a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_42
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_58
    .array-data 4
        0x3fcccccd    # 1.6f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fcccccd    # 1.6f
    .end array-data

    :array_6e
    .array-data 4
        0x40333333    # 2.8f
        0x40b9999a    # 5.8f
        0x40333333    # 2.8f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lmiui/view/MiuiKeyBoardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    iput-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    new-instance v0, Lmiui/view/MiuiKeyBoardView$1;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$1;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lmiui/view/MiuiKeyBoardView$2;

    invoke-direct {v0, p0}, Lmiui/view/MiuiKeyBoardView$2;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    iput-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x1103000d

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x1103001d

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    const v1, 0x1103000c

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private calcAndStartShowPreviewAnim(Landroid/view/View;)V
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v1, p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v1, :cond_74

    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    move-object v1, p1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3ffb333333333333L    # 1.7

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-direct {p0, p1, v0, v6, v7}, Lmiui/view/MiuiKeyBoardView;->getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F

    aget v1, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    aget v1, v0, v7

    iget v2, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e2e147b    # 0.17f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    invoke-direct {p0, v7}, Lmiui/view/MiuiKeyBoardView;->showPreviewAnim(Z)V

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_74
    return-void
.end method

.method private getChildCoordRelativeToKeyboard(Landroid/view/View;[FZZ)F
    .registers 15

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    aput v3, p2, v7

    aput v3, p2, v6

    if-eqz p3, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float v0, v8, v3

    aget v3, p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v6

    aget v3, p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_34
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_6e

    if-eq v2, p0, :cond_6e

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    if-eqz p3, :cond_4b

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v0, v3

    :cond_4b
    aget v3, p2, v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v6

    aget v3, p2, v7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p2, v7

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_34

    :cond_6e
    if-eqz p4, :cond_8c

    aget v3, p2, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v8, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    aput v3, p2, v6

    aget v3, p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v8, v0

    mul-float/2addr v4, v5

    div-float/2addr v4, v9

    sub-float/2addr v3, v4

    aput v3, p2, v7

    :cond_8c
    return v0
.end method

.method private onKeyBoardDelete()V
    .registers 4

    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardDelete()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private onKeyBoardOK()V
    .registers 4

    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onKeyBoardOK()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private onText(Ljava/lang/CharSequence;)V
    .registers 5

    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V
    .registers 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_29

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    if-eqz v3, :cond_1f

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    check-cast v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1f
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    goto :goto_1c

    :cond_29
    return-void
.end method

.method private shiftLetterBoard()V
    .registers 6

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mAllKeys:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {v0}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    aget-char v3, v3, v4

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :goto_3c
    invoke-virtual {v0, v3}, Lmiui/view/MiuiKeyBoardView$KeyButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_40
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_45
    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    iget-boolean v3, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v3, :cond_58

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v4, 0x11020075

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_57
    return-void

    :cond_58
    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v4, 0x11020074

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_57
.end method

.method private showLetterBoard(Z)V
    .registers 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v3, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_12

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_14

    :goto_e
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_12
    move v0, v2

    goto :goto_7

    :cond_14
    move v2, v1

    goto :goto_e
.end method

.method private showPreviewAnim(Z)V
    .registers 8

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    if-eqz p1, :cond_60

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    aput v2, v1, v4

    aput v3, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    :goto_27
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lmiui/view/MiuiKeyBoardView$3;

    invoke-direct {v1, p0}, Lmiui/view/MiuiKeyBoardView$3;-><init>(Lmiui/view/MiuiKeyBoardView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean p1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    if-eqz p1, :cond_5f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    :cond_5f
    return-void

    :cond_60
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    aput v3, v1, v4

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_27
.end method


# virtual methods
.method public addKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .registers 5

    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_19
    iget-object v2, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hide()V
    .registers 2

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V
    .registers 22

    sget-object v11, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v9, v11

    const/4 v3, 0x0

    iget v7, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v9, :cond_77

    sget-object v11, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    aget-object v8, v11, v2

    const/4 v10, 0x0

    const/4 v4, 0x0

    :goto_f
    array-length v11, v8

    if-ge v4, v11, :cond_1c

    aget v11, v8, v4

    move/from16 v0, p3

    int-to-float v12, v0

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1c
    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    mul-int v11, v11, p4

    int-to-float v11, v11

    add-float/2addr v10, v11

    move/from16 v0, p2

    int-to-float v11, v0

    sub-float/2addr v11, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    float-to-int v5, v11

    const/4 v4, 0x0

    :goto_2c
    array-length v11, v8

    if-ge v4, v11, :cond_71

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    move v6, v5

    const-string/jumbo v11, "!"

    invoke-virtual {v1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_51

    int-to-float v11, v6

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v13, v14

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v6, v11

    :cond_51
    int-to-float v11, v5

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v11, v11

    add-int v12, v7, p5

    invoke-virtual {v1, v6, v7, v11, v12}, Lmiui/view/MiuiKeyBoardView$KeyButton;->layout(IIII)V

    int-to-float v11, v5

    move/from16 v0, p3

    int-to-float v12, v0

    aget v13, v8, v4

    mul-float/2addr v12, v13

    move/from16 v0, p4

    int-to-float v13, v0

    add-float/2addr v12, v13

    add-float/2addr v11, v12

    float-to-int v5, v11

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_71
    add-int v11, p6, p5

    add-int/2addr v7, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_77
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_10
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    if-ne p1, v0, :cond_f

    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    if-ne p1, v0, :cond_18

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_e

    :cond_18
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    if-ne p1, v0, :cond_21

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->showLetterBoard(Z)V

    goto :goto_e

    :cond_21
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v0, :cond_29

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v0, :cond_2d

    :cond_29
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardDelete()V

    goto :goto_e

    :cond_2d
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    if-eq p1, v0, :cond_35

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    if-ne p1, v0, :cond_39

    :cond_35
    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->onKeyBoardOK()V

    goto :goto_e

    :cond_39
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    if-eq p1, v0, :cond_41

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    if-ne p1, v0, :cond_48

    :cond_41
    const-string/jumbo v0, " "

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_48
    check-cast p1, Lmiui/view/MiuiKeyBoardView$KeyButton;

    invoke-virtual {p1}, Lmiui/view/MiuiKeyBoardView$KeyButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/view/MiuiKeyBoardView;->onText(Ljava/lang/CharSequence;)V

    goto :goto_e
.end method

.method protected onFinishInflate()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    const v1, 0x110b001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x11040006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x11040005

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mShrinkToBottonAnimation:Landroid/view/animation/Animation;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setClipChildren(Z)V

    invoke-virtual {p0, v3}, Lmiui/view/MiuiKeyBoardView;->setClipToPadding(Z)V

    const v1, 0x110c0025

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    const v1, 0x110c0026

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x110c0027

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnCapsLock:Landroid/view/View;

    const v1, 0x110c0028

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    const v1, 0x110c0029

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToSymbolBoard:Landroid/view/View;

    const v1, 0x110c002a

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterSpace:Landroid/view/View;

    const v1, 0x110c002b

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterOK:Landroid/view/View;

    const v1, 0x110c0053

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v1, 0x110c0054

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    const v1, 0x110c0055

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnToLetterBoard:Landroid/view/View;

    const v1, 0x110c0056

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolSpace:Landroid/view/View;

    const v1, 0x110c0057

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolOK:Landroid/view/View;

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lmiui/view/MiuiKeyBoardView;->setOnTouchAndClickListenerForKey(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 18

    sub-int v2, p4, p2

    sub-int v7, p5, p3

    iget v0, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingLeft:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    const/4 v8, 0x0

    aget-object v1, v1, v8

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    div-float/2addr v0, v1

    float-to-int v3, v0

    int-to-float v0, v3

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v4, v0

    iget v0, p0, Lmiui/view/MiuiKeyBoardView;->mPaddingTop:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v7, v0

    sget-object v1, Lmiui/view/MiuiKeyBoardView;->SIZE_GROUP:[[F

    array-length v1, v1

    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    const v1, 0x3f95c28f    # 1.17f

    div-float/2addr v0, v1

    float-to-int v5, v0

    int-to-float v0, v5

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    float-to-int v6, v0

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    sub-int v1, p5, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v2, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    sub-int v1, p5, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v2, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/view/MiuiKeyBoardView;->keyboardOnLayout(Landroid/view/ViewGroup;IIIII)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mPreviewText:Landroid/widget/TextView;

    iget v1, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v8, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v9, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewX:I

    iget v10, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewWidth:I

    add-int/2addr v9, v10

    iget v10, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewY:I

    iget v11, p0, Lmiui/view/MiuiKeyBoardView;->mPopupViewHeight:I

    add-int/2addr v10, v11

    invoke-virtual {v0, v1, v8, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lmiui/view/MiuiKeyBoardView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    :cond_f
    :goto_f
    :pswitch_f
    const/4 v1, 0x0

    return v1

    :pswitch_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_29

    invoke-direct {p0, p1}, Lmiui/view/MiuiKeyBoardView;->calcAndStartShowPreviewAnim(Landroid/view/View;)V

    :cond_29
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v1, :cond_31

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v1, :cond_f

    :cond_31
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v1, v4, v5}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    :pswitch_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lmiui/view/MiuiKeyBoardView;->mShowPreviewLastTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x12c

    sub-long v2, v8, v6

    iget-boolean v1, p0, Lmiui/view/MiuiKeyBoardView;->mIsShowingPreview:Z

    if-eqz v1, :cond_51

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mConfirmHide:Ljava/lang/Runnable;

    cmp-long v6, v2, v4

    if-lez v6, :cond_5f

    :goto_4e
    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/MiuiKeyBoardView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_51
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnLetterDelete:Landroid/view/View;

    if-eq p1, v1, :cond_59

    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mBtnSymbolDelete:Landroid/view/View;

    if-ne p1, v1, :cond_f

    :cond_59
    iget-object v1, p0, Lmiui/view/MiuiKeyBoardView;->mSendDeleteActionRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lmiui/view/MiuiKeyBoardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_f

    :cond_5f
    move-wide v2, v4

    goto :goto_4e

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_11
        :pswitch_39
        :pswitch_f
        :pswitch_39
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public removeKeyboardListener(Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;)V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mKeyboardListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public show()V
    .registers 3

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mLetterBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mSymbolBoard:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-boolean v0, p0, Lmiui/view/MiuiKeyBoardView;->mIsUpperMode:Z

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lmiui/view/MiuiKeyBoardView;->shiftLetterBoard()V

    :cond_13
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView;->mStretchFromBottonAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lmiui/view/MiuiKeyBoardView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
