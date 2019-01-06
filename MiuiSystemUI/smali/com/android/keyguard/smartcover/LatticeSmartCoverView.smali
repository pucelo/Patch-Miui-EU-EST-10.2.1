.class public Lcom/android/keyguard/smartcover/LatticeSmartCoverView;
.super Lcom/android/keyguard/smartcover/SmartCoverView;
.source "LatticeSmartCoverView.java"


# instance fields
.field private mBatteryInfo:Landroid/view/View;

.field private mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

.field private mBatteryLevelText:Landroid/widget/TextView;

.field private mInfo1:Landroid/view/View;

.field private mInfo1TextView:Landroid/widget/TextView;

.field private mInfo2:Landroid/view/View;

.field private mInfo2TextView1:Landroid/widget/TextView;

.field private mInfo2TextView2:Landroid/widget/TextView;


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
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/smartcover/SmartCoverView;->onFinishInflate()V

    const v1, 0x7f0a0126

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    const v2, 0x7f0a01f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    const v1, 0x7f0a0127

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x7f0a01f5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x7f0a01f6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    const v1, 0x7f0a004a

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryInfo:Landroid/view/View;

    const v1, 0x7f0a0051

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    const v1, 0x7f0a0053

    invoke-virtual {p0, v1}, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    const-string/jumbo v1, "miuiex-bitmap"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method protected refresh()V
    .locals 5

    const v2, 0x7f08038b

    const v1, 0x7f08038a

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryInfo:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowSms:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mSmsNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2TextView2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mMissCallNum:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v3, 0x7f0a011c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo2:Landroid/view/View;

    const v2, 0x7f0a011d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowSms:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mCharging:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    iget v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mCharging:Z

    if-eqz v0, :cond_3

    const v0, 0x7f080388

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelImage:Lcom/android/keyguard/smartcover/BatteryLevelImageView;

    iget v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/smartcover/BatteryLevelImageView;->setBatteryLevel(I)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    const-string/jumbo v0, "0"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryLevelText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mCharging:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06016a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mBatteryInfo:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f080389

    goto :goto_1

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060169

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1TextView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mMissCallNum:I

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mInfo1:Landroid/view/View;

    const v3, 0x7f0a011b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mShowMissCall:Z

    if-eqz v3, :cond_8

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/android/keyguard/smartcover/LatticeSmartCoverView;->mSmsNum:I

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_5
.end method
