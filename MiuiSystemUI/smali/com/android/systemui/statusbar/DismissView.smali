.class public Lcom/android/systemui/statusbar/DismissView;
.super Lcom/android/keyguard/AlphaOptimizedImageButton;
.source "DismissView.java"


# instance fields
.field private mExtraMarginBottom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateLayoutParam()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/DismissView;->mExtraMarginBottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DismissView;->mExtraMarginBottom:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DismissView;->updateLayoutParam()V

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/AlphaOptimizedImageButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0802da

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110047

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DismissView;->updateLayoutParam()V

    return-void
.end method
