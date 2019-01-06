.class Landroid/widget/TranslationPresenter;
.super Ljava/lang/Object;
.source "TranslationPresenter.java"


# instance fields
.field private mAboveHandle:Z

.field private mContext:Landroid/content/Context;

.field private mCopyright:Landroid/widget/TextView;

.field private mDefaultPaddingBottom:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mExtraInfo:Landroid/view/View;

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mMore:Landroid/widget/TextView;

.field private mPaddingOffset:I

.field private mProgressBar:Lmiui/widget/ProgressBar;

.field private mScrollContainer:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mTextContainer:Landroid/view/View;

.field private mTranslationPanel:Landroid/view/View;

.field private mTranslations:Landroid/widget/TextView;

.field private mWord:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Landroid/widget/TranslationPresenter;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110c0011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110c0058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110c0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110c005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110c005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x110c005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/ProgressBar;

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/TranslationPresenter;->mPaddingOffset:I

    return-void
.end method


# virtual methods
.method public setAboveHandle(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    return-void
.end method

.method public setInProgress()V
    .registers 9

    const/16 v4, 0x8

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    iget v7, p0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v3, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Landroid/widget/TranslationPresenter;->mMinHeight:I

    add-int/2addr v3, v1

    const/4 v4, -0x1

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    if-eqz v4, :cond_6e

    const/16 v4, 0xc

    :goto_65
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_6e
    const/16 v4, 0xa

    goto :goto_65
.end method

.method public updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mProgressBar:Lmiui/widget/ProgressBar;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Lmiui/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v28

    if-eqz v28, :cond_1df

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_189

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x1109006a

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4c
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    add-int v8, v28, v29

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v26, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslationPanel:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v28, v19, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    sub-int v27, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/high16 v29, -0x80000000

    move/from16 v0, v27

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v30

    invoke-virtual/range {v28 .. v30}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTextContainer:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    sub-int v28, v19, v8

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingTop()I

    move-result v29

    add-int v29, v29, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingBottom()I

    move-result v30

    add-int v29, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mMaxHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v29, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v28

    add-int v28, v28, v26

    move/from16 v0, v28

    iput v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v28, v15

    check-cast v28, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3c0

    const/16 v29, 0xc

    :goto_154
    invoke-virtual/range {v28 .. v29}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setLeft(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollContainer:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TranslationPresenter;->mAboveHandle:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3c4

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    sub-int v28, v18, v28

    :goto_181
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTop(I)V

    return-void

    :cond_189
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getStatus()I

    move-result v28

    const/16 v29, -0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1ba

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x1109006a

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    :cond_1ba
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    const v30, 0x11090069

    invoke-virtual/range {v29 .. v30}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4c

    :cond_1df
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mWord:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getSymbols()Ljava/util/List;

    move-result-object v24

    const/4 v12, 0x0

    :goto_201
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_2fe

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/miui/translationservice/provider/TranslationResult$Symbol;

    const/4 v11, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_234

    const-string/jumbo v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getWordSymbol()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_234
    if-nez v11, :cond_25a

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_25a

    const-string/jumbo v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhEn()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_25a
    if-nez v11, :cond_27f

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_27f

    const-string/jumbo v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getPhAm()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "]\r\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27f
    invoke-virtual/range {v23 .. v23}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->getParts()Ljava/util/List;

    move-result-object v21

    const/4 v13, 0x0

    :goto_284
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v13, v0, :cond_2fa

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/translationservice/provider/TranslationResult$Part;

    invoke-virtual/range {v20 .. v20}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_2b5

    const-string/jumbo v28, "("

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v20 .. v20}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getPart()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ") "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b5
    invoke-virtual/range {v20 .. v20}, Lcom/miui/translationservice/provider/TranslationResult$Part;->getMeans()Ljava/util/List;

    move-result-object v16

    const/4 v14, 0x0

    :goto_2ba
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_2f7

    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ne v14, v0, :cond_2ee

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-eq v13, v0, :cond_2ee

    const-string/jumbo v28, "\r\n"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2eb
    add-int/lit8 v14, v14, 0x1

    goto :goto_2ba

    :cond_2ee
    const-string/jumbo v28, "/"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2eb

    :cond_2f7
    add-int/lit8 v13, v13, 0x1

    goto :goto_284

    :cond_2fa
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_201

    :cond_2fe
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mTranslations:Landroid/widget/TextView;

    move-object/from16 v28, v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getCopyright()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    xor-int/lit8 v9, v28, 0x1

    if-eqz v9, :cond_338

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mCopyright:Landroid/widget/TextView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_338
    invoke-virtual/range {p1 .. p1}, Lcom/miui/translationservice/provider/TranslationResult;->getDetailLink()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    xor-int/lit8 v10, v28, 0x1

    if-eqz v10, :cond_36e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mMore:Landroid/widget/TextView;

    move-object/from16 v28, v0

    new-instance v29, Landroid/widget/TranslationPresenter$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v7, v2}, Landroid/widget/TranslationPresenter$1;-><init>(Landroid/widget/TranslationPresenter;Ljava/lang/String;Lcom/miui/translationservice/provider/TranslationResult;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_36e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mExtraInfo:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    if-eqz v9, :cond_3b9

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mPaddingOffset:I

    move/from16 v29, v0

    sub-int v17, v28, v29

    :goto_386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getPaddingTop()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TranslationPresenter;->mScrollView:Landroid/view/View;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getPaddingRight()I

    move-result v31

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_4c

    :cond_3b9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TranslationPresenter;->mDefaultPaddingBottom:I

    move/from16 v17, v0

    goto :goto_386

    :cond_3c0
    const/16 v29, 0xa

    goto/16 :goto_154

    :cond_3c4
    const/16 v28, 0x0

    goto/16 :goto_181
.end method
