.class public Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;
.super Landroid/widget/RelativeLayout;
.source "MiuiKeyguardChargingContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;,
        Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;
    }
.end annotation


# instance fields
.field private mBatteryLevel:I

.field private mBgView:Landroid/view/View;

.field private mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

.field private mCanShowGxzw:Z

.field public mChargeHandler:Landroid/os/Handler;

.field private mChargingAnimationInDeclining:Z

.field private mChargingCircleView:Landroid/view/View;

.field private mChargingHintView:Landroid/widget/TextView;

.field private mChargingInfoBackArrow:Landroid/widget/ImageView;

.field private mChargingListAndBackArrow:Landroid/view/View;

.field private mChargingListTopMargin:I

.field private mChargingTip:Landroid/widget/TextView;

.field private mChargingTips:[Ljava/lang/String;

.field private mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

.field private mChargingViewBottomMarginDown:I

.field private mChargingViewBottomMarginUp:I

.field private mChargingViewHeight:I

.field private mChargingViewHeightAfterScale:I

.field private mChargingViewTopAfterScale:I

.field private mContext:Landroid/content/Context;

.field private mDensityDpi:I

.field private mDrainedPowerPercent:Landroid/widget/TextView;

.field private mFontScale:F

.field private mHeight:I

.field private mInitY:I

.field private mIsBottomButtonAnimating:Z

.field mIsTempHigh:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastChargeTime:Landroid/widget/TextView;

.field private mNeedRepositionDevice:Z

.field private mResources:Landroid/content/res/Resources;

.field private mScreenHeight:I

.field private mUsedTime:Landroid/widget/TextView;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBatteryLevel:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mHeight:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mLastChargeTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mUsedTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mWidth:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Lcom/android/keyguard/charge/MiuiKeyguardChargingView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDrainedPowerPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsBottomButtonAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLastChargeFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->handleBottomButtonClicked(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateContentDescription(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCanShowGxzw:Z

    new-instance v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$1;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$2;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargeHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getLastChargeFormat(J)Ljava/lang/String;
    .locals 13

    const/16 v11, 0xb

    const/4 v10, 0x5

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v9, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v7, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v4, v10, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v4, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v4, v6, v8}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v9, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v7, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v10, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v11, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const/4 v7, -0x2

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v2, 0x20

    :goto_0
    or-int/lit8 v6, v2, 0xc

    invoke-static {p1, p2, v6}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    const v8, 0x7f11034b

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    const/16 v2, 0x10

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    const v8, 0x7f11034c

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_2
    new-instance v3, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f11034a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private handleBottomButtonClicked(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->startBottomButtonClickAnim(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->refreshScreenSize()V

    return-void
.end method

.method private initChargingInfoDes(IIII)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    const v3, 0x7f0a0148

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0a0147

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a0146

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mLastChargeTime:Landroid/widget/TextView;

    goto :goto_0

    :sswitch_1
    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mUsedTime:Landroid/widget/TextView;

    goto :goto_0

    :sswitch_2
    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDrainedPowerPercent:Landroid/widget/TextView;

    goto :goto_0

    :sswitch_3
    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07015c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f060073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0142 -> :sswitch_2
        0x7f0a014a -> :sswitch_0
        0x7f0a014b -> :sswitch_3
        0x7f0a014c -> :sswitch_1
    .end sparse-switch
.end method

.method private initChargingInfosDes()V
    .locals 4

    const v0, 0x7f0a014a

    const v1, 0x7f08023d

    const v2, 0x7f11034d

    const v3, 0x7f08023f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    const v0, 0x7f0a014c

    const v1, 0x7f080243

    const v2, 0x7f110343

    const v3, 0x7f080240

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    const v0, 0x7f0a0142

    const v1, 0x7f08023b

    const v2, 0x7f110349

    const v3, 0x7f080241

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    const v0, 0x7f0a014b

    const v1, 0x7f080242

    const v2, 0x7f11034e

    const v3, 0x7f08023e

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfoDes(IIII)V

    return-void
.end method

.method private initDimension()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListTopMargin:I

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0701ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginDown:I

    return-void
.end method

.method private refreshScreenSize()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const-string/jumbo v2, "is_pad"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    :goto_0
    return-void

    :cond_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    goto :goto_0
.end method

.method private setCanShowGxzw(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCanShowGxzw:Z

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->updateGxzwState()V

    :cond_0
    return-void
.end method

.method private startBottomButtonClickAnim(Z)V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Quint;->easeOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$11;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$11;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/keyguard/Ease$Cubic;->easeInOut:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$12;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$12;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateCharginInfoTextSize(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0147

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070164

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f07015a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateCharginInfosTextSize()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    const v0, 0x7f0a014a

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    const v0, 0x7f0a014c

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    const v0, 0x7f0a0142

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    const v0, 0x7f0a014b

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfoTextSize(I)V

    return-void
.end method

.method private updateChargingInfoViewLayout(I)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a0148

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070163

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :sswitch_0
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070158

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    :sswitch_1
    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07015f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f07015e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0142 -> :sswitch_0
        0x7f0a014a -> :sswitch_0
        0x7f0a014b -> :sswitch_1
        0x7f0a014c -> :sswitch_0
    .end sparse-switch
.end method

.method private updateChargingInfoViewsLayout()V
    .locals 1

    const v0, 0x7f0a014b

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    const v0, 0x7f0a014a

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    const v0, 0x7f0a014c

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    const v0, 0x7f0a0142

    invoke-direct {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewLayout(I)V

    return-void
.end method

.method private updateContentDescription(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0147

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0a0146

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateViewsLayoutParams()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v2}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0701ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f07016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateChargingInfoViewsLayout()V

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070161

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f070160

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f070155

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080237

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public canShowGxzw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mCanShowGxzw:Z

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    return v0
.end method

.method public isChargingAnimationInDeclining()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCharingViewClick()V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mWidth:I

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setChargingInfo()V

    new-instance v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$3;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->refreshScreenSize()V

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mFontScale:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfosTextSize()V

    iput v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mFontScale:F

    :cond_0
    iget v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDensityDpi:I

    if-eq v2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initDimension()V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfosDes()V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateCharginInfosTextSize()V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->updateViewsLayoutParams()V

    iput v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mDensityDpi:I

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingContainer(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-boolean v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setNeedRepositionDevice(Z)V

    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    const v0, 0x7f0a0145

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingInfoBackArrow:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initDimension()V

    const v0, 0x7f0a0141

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    const v0, 0x7f0a0144

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    const v0, 0x7f0a0143

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingHint(Landroid/widget/TextView;)V

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->initChargingInfosDes()V

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f11034e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f11034f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f110350

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f110351

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f110352

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    const v2, 0x7f110353

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChargingInfo()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$10;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setChargingInfo(Ljava/lang/String;II)V
    .locals 6

    const/high16 v3, 0x41200000    # 10.0f

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v2, p2

    div-float/2addr v2, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double v0, v2, v4

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsTempHigh:Z

    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    const v3, 0x7f110719

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_1
    iput p3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBatteryLevel:I

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsTempHigh:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTip:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingTips:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setDarkMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iget-object v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingHint(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setDarkMode(Z)V

    return-void
.end method

.method public setNeedRepositionDevice(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mNeedRepositionDevice:Z

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setNeedRepositionDevice(Z)V

    :cond_0
    return-void
.end method

.method public startDownAnim()V
    .locals 13

    iget-boolean v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    if-eqz v8, :cond_0

    return-void

    :cond_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingAnimationInDeclining:Z

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mInitY:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getY()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mInitY:I

    iget v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x64

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v11

    const/4 v12, 0x0

    aput v11, v10, v12

    iget v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    int-to-float v11, v11

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;

    invoke-direct {v8, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$6;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v8, 0x2

    new-array v8, v8, [I

    iget v9, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    const/4 v10, 0x0

    aput v9, v8, v10

    iget v9, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    const/4 v10, 0x1

    aput v9, v8, v10

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;

    invoke-direct {v8, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$7;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v6, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v8, 0x12c

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x7

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v7, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    const/4 v9, 0x4

    aput-object v2, v8, v9

    const/4 v9, 0x5

    aput-object v6, v8, v9

    const/4 v9, 0x6

    aput-object v1, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;

    invoke-direct {v8, p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$8;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setCanShowGxzw(Z)V

    :cond_1
    return-void
.end method

.method public startEnterAnim(Z)V
    .locals 13

    iget-boolean v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsBottomButtonAnimating:Z

    if-eqz v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    invoke-virtual {p0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->getHeight()I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x0

    aput v11, v10, v12

    iget-object v11, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v11}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v11

    iget v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    add-float/2addr v11, v12

    iget-object v12, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v8, 0xc8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/high16 v11, 0x40800000    # 4.0f

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingCircleView:Landroid/view/View;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v11, v10, v12

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setAlpha(F)V

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setScaleX(F)V

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setScaleY(F)V

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->setChargingLevelForAnima(IZ)V

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v8, 0x12c

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v8, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v9, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v8, 0x12c

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v8, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v8}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x5

    new-array v8, v8, [Landroid/animation/Animator;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const/4 v9, 0x3

    aput-object v3, v8, v9

    const/4 v9, 0x4

    aput-object v1, v8, v9

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet$Builder;->after(J)Landroid/animation/AnimatorSet$Builder;

    new-instance v8, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;

    invoke-direct {v8, p0, p1}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$9;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;Z)V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startUpAnim()V
    .locals 19

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListTopMargin:I

    add-int v3, v14, v15

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginDown:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mInitY:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-nez v11, :cond_2

    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    const/4 v13, 0x0

    :goto_1
    if-nez v4, :cond_4

    const/4 v12, 0x0

    :goto_2
    if-lez v13, :cond_0

    if-lez v12, :cond_0

    const/4 v14, 0x1

    invoke-static {v4, v13, v12, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lmiui/util/ScreenshotUtils;->getBlurBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mBgView:Landroid/view/View;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-instance v14, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v14}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v5, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v14, 0xc8

    invoke-virtual {v5, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v15}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setY(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    sget-object v15, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingHintView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getY()F

    move-result v17

    const/16 v18, 0x0

    aput v17, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewBottomMarginUp:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    sget-object v15, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getY()F

    move-result v17

    const/16 v18, 0x0

    aput v17, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewTopAfterScale:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v15, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->Y:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mScreenHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x0

    aput v17, v16, v18

    int-to-float v0, v3

    move/from16 v17, v0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingListAndBackArrow:Landroid/view/View;

    sget-object v15, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeight:I

    const/16 v16, 0x0

    aput v15, v14, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mChargingViewHeightAfterScale:I

    const/16 v16, 0x1

    aput v15, v14, v16

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v9

    const-wide/16 v14, 0x12c

    invoke-virtual {v9, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v14, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v14}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v9, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v14, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$4;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v9, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v14, 0x12c

    invoke-virtual {v2, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v14, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {v14}, Lmiui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v14, 0x6

    new-array v14, v14, [Landroid/animation/Animator;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v7, v14, v15

    const/4 v15, 0x2

    aput-object v10, v14, v15

    const/4 v15, 0x3

    aput-object v6, v14, v15

    const/4 v15, 0x4

    aput-object v9, v14, v15

    const/4 v15, 0x5

    aput-object v5, v14, v15

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v14, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer$5;-><init>(Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;)V

    invoke-virtual {v2, v14}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setCanShowGxzw(Z)V

    :cond_1
    return-void

    :cond_2
    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3eaaaaab

    mul-float/2addr v14, v15

    float-to-int v13, v14

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    int-to-float v14, v14

    const v15, 0x3eaaaaab

    mul-float/2addr v14, v15

    float-to-int v12, v14

    goto/16 :goto_2
.end method

.method public updateVisibility(Z)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->mIsBottomButtonAnimating:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/charge/MiuiKeyguardChargingContainer;->setVisibility(I)V

    goto :goto_0
.end method
