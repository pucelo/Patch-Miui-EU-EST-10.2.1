.class public Lcom/android/systemui/qs/tileimpl/QSTileView;
.super Lcom/android/systemui/qs/tileimpl/QSTileBaseView;
.source "QSTileView.java"


# instance fields
.field private mDivider:Landroid/view/View;

.field private mExpandIndicator:Landroid/view/View;

.field private mExpandSpace:Landroid/view/View;

.field protected mLabel:Landroid/widget/TextView;

.field private mLabelContainer:Landroid/view/ViewGroup;

.field private mPadLock:Landroid/widget/ImageView;

.field protected mSecondLine:Landroid/widget/TextView;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClipToPadding(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setClickable(Z)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setId(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->createLabel()V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setOrientation(I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method protected createLabel()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00c9

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a02cc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a023e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a02f8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a00d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getDetailY()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 8

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    iget v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v2, v5, :cond_2

    :cond_0
    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f060125

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x12

    invoke-virtual {v2, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    :cond_1
    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mState:I

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandIndicator:Landroid/view/View;

    if-eqz v1, :cond_6

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mExpandSpace:Landroid/view/View;

    if-eqz v1, :cond_7

    move v2, v4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isClickable()Z

    move-result v2

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mPadLock:Landroid/widget/ImageView;

    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v5, :cond_a

    :goto_5
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    const/4 v2, 0x2

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    move v4, v3

    goto :goto_5
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileBaseView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mLabel:Landroid/widget/TextView;

    const v1, 0x7f07037a

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileView;->mSecondLine:Landroid/widget/TextView;

    const v1, 0x7f07036f

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method
