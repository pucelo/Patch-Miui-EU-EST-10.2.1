.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Landroid/widget/TextView;
.source "KeyguardIndicationTextView.java"


# instance fields
.field private mDensityDpi:I

.field private mFontScale:F

.field private mIsBottomButtonAnimating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private updateTextSize()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->updateTextSize()V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mFontScale:F

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mDensityDpi:I

    if-eq v2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->updateTextSize()V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mDensityDpi:I

    :cond_1
    return-void
.end method

.method public setBottomAreaButtonClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mIsBottomButtonAnimating:Z

    return-void
.end method

.method public switchIndication(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mIsBottomButtonAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    goto :goto_0
.end method
