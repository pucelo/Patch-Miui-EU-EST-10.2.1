.class public Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
.super Landroid/widget/FrameLayout;
.source "FsGestureDemoTitleView.java"


# instance fields
.field private mSkipView:Landroid/widget/TextView;

.field private mSummaryView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0040

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    const v1, 0x7f0a00f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method notifyFinish()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800be

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTranslationX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    const/high16 v2, 0x41700000    # 15.0f

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    const v2, 0x7f1102b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method prepareTitleView(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800bf

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mTitleView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :pswitch_0
    const v1, 0x7f1102b4

    const v0, 0x7f1102ba

    goto :goto_0

    :pswitch_1
    const v1, 0x7f1102b4

    const v0, 0x7f1102bb

    goto :goto_0

    :pswitch_2
    const v1, 0x7f1102e5

    const v0, 0x7f1102b3

    goto :goto_0

    :pswitch_3
    const v1, 0x7f1102e6

    const v0, 0x7f1102bd

    goto :goto_0

    :pswitch_4
    const v1, 0x7f1102e7

    const v0, 0x7f1102e8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method registerSkipEvent(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method setRTLParams()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->mSkipView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v1, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method
