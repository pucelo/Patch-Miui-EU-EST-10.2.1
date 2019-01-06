.class public Lcom/android/keyguard/smartcover/FullSmartCoverView;
.super Lcom/android/keyguard/smartcover/SmartCoverView;
.source "FullSmartCoverView.java"


# instance fields
.field private mBatteryLevelText:Landroid/widget/TextView;

.field private mDate:Lcom/android/keyguard/smartcover/Clock;

.field private mHour:Lcom/android/keyguard/smartcover/Clock;

.field private mInfo1:Landroid/view/View;

.field private mInfo1TextView:Landroid/widget/TextView;

.field private mInfo2:Landroid/view/View;

.field private mInfo2TextView1:Landroid/widget/TextView;

.field private mInfo2TextView2:Landroid/widget/TextView;

.field private mMinute:Lcom/android/keyguard/smartcover/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/smartcover/SmartCoverView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/smartcover/SmartCoverView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->onFinishInflate()V

    const v0, 0x7f0a02cf

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mHour:Lcom/android/keyguard/smartcover/Clock;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mHour:Lcom/android/keyguard/smartcover/Clock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/Clock;->setShowHour(Z)V

    const v0, 0x7f0a02d1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMinute:Lcom/android/keyguard/smartcover/Clock;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMinute:Lcom/android/keyguard/smartcover/Clock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/Clock;->setShowMinute(Z)V

    const v0, 0x7f0a00a1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/smartcover/Clock;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mDate:Lcom/android/keyguard/smartcover/Clock;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mDate:Lcom/android/keyguard/smartcover/Clock;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/Clock;->setShowDate(Z)V

    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    const v1, 0x7f0a01f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    const v0, 0x7f0a0127

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v1, 0x7f0a01f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v1, 0x7f0a01f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    const v0, 0x7f0a0053

    invoke-virtual {p0, v0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    return-void
.end method

.method protected refresh()V
    .locals 5

    const v2, 0x7f0800c4

    const v1, 0x7f0800c3

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowSms:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mSmsNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMissCallNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v3, 0x7f0a011c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x7f0a011d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mCharging:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLevel:I

    iget v1, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mCharging:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mFull:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    const v1, 0x7f110690

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowSms:Z

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mMissCallNum:I

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mInfo1:Landroid/view/View;

    const v3, 0x7f0a011b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mShowMissCall:Z

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mSmsNum:I

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/smartcover/FullSmartCoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f110691

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    iget v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLevel:I

    iget v1, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/smartcover/FullSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    const v1, 0x7f11068f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
