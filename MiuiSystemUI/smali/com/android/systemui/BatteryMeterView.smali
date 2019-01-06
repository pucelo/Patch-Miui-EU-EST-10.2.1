.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/widget/LinearLayout;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$1;
    }
.end annotation


# instance fields
.field private final mBatteryChargingView:Landroid/widget/ImageView;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryDigitalView:Landroid/widget/FrameLayout;

.field private final mBatteryIconView:Landroid/widget/ImageView;

.field private mBatteryStyle:I

.field private mBatteryTextColors:[I

.field private mBatteryTextDigitView:Landroid/widget/TextView;

.field private mCharging:Z

.field private mDarkIntensity:F

.field private mDemoMode:Z

.field private mDisabled:Z

.field private mExtremePowerSave:Z

.field private mForceShowDigit:Z

.field private mIconId:I

.field private mLevel:I

.field private mNotchEar:Z

.field private mPowerSave:Z

.field private mQuickCharging:Z

.field private mShowBatteryDigitFull:Z

.field private mTintArea:Landroid/graphics/Rect;

.field private mUpdateQuickChargingTask:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/BatteryMeterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x7

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v2, 0x7f100005

    iput v2, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mNotchEar:Z

    iput v4, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    new-instance v2, Lcom/android/systemui/BatteryMeterView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/BatteryMeterView$1;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateResources()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/BatteryMeterView;->setOrientation(I)V

    const v2, 0x800013

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->setGravity(I)V

    new-instance v2, Lcom/android/systemui/util/DisableStateTracker;

    const/4 v3, 0x2

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/util/DisableStateTracker;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0021

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const v3, 0x7f0a004f

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "fonts/Mitype2018-battery.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/android/systemui/BatteryMeterView;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/BatteryMeterView;->onDarkChanged(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method private getChangingIconId()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    if-eqz v0, :cond_0

    const v0, 0x7f08040f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f08039a

    goto :goto_0
.end method

.method private getDemoModeIcon(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/16 v2, 0x64

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getIconId()I
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v1, :cond_0

    const v0, 0x7f100008

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f100006

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_3

    :cond_2
    const v0, 0x7f10000d

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v1, :cond_4

    const v0, 0x7f10000b

    goto :goto_0

    :cond_4
    const v0, 0x7f100005

    goto :goto_0
.end method

.method private notifyChargingStateChanged(Z)V
    .locals 3

    new-instance v0, Lcom/android/systemui/BatteryMeterView$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/BatteryMeterView$2;-><init>(Lcom/android/systemui/BatteryMeterView;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private scaleBatteryMeterViews()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    const v7, 0x7f070434

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v6, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v6}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const v7, 0x7f070424

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v7, 0x7f070425

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v7, 0x7f070065

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float v7, v1

    mul-float/2addr v7, v2

    float-to-int v7, v7

    int-to-float v8, v0

    mul-float/2addr v8, v2

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9, v9, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    return-void
.end method

.method private updateBatteryChargingIcon()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getChangingIconId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->updateIcon(Landroid/widget/ImageView;I)V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateChargingIconView()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateChargingIconView()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mNotchEar:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateIcon(Landroid/widget/ImageView;I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v3, p1, v4}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private updateIconView(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 8

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x7f060189

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x7f06018a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x7f060172

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v5, v7

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x7f060173

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x3

    aput v6, v5, v7

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x7f060174

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x4

    aput v6, v5, v7

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x7f060175

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x5

    aput v6, v5, v7

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const v6, 0x7f060181

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const/4 v7, 0x6

    aput v6, v5, v7

    const v5, 0x7f050048

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterView;->mShowBatteryDigitFull:Z

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v5, 0x7f070441

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x7f070440

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v5, 0x7f070442

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v5, 0x7f07043f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v3, v1, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method private updateViews()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView;->updateIconView(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->updateVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    goto :goto_0
.end method

.method protected getIcon(Landroid/widget/ImageView;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, p1, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicPowerSaveIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicPowerSaveIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicChargeIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicChargeIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicChargeDigitIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    :goto_2
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicChargeDigitIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_2

    :pswitch_4
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    :goto_3
    return-object v1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_3

    :pswitch_5
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicDigitalIconDarkMode(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    :goto_4
    return-object v1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getGraphicDigitalIcon(I)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x7f100005
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateViews()V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eq p3, v0, :cond_0

    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView;->notifyChargingStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->clear()V

    :cond_0
    if-nez p3, :cond_1

    iput-boolean v5, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    :cond_1
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    if-eq p1, v0, :cond_3

    :cond_2
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_4

    const v0, 0x7f110035

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    :cond_3
    return-void

    :cond_4
    const v0, 0x7f110034

    goto :goto_0
.end method

.method public onBatteryStyleChanged(I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v2, :cond_0

    if-ne p1, v3, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-ne p1, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    if-ne p1, v3, :cond_3

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setDigitViewTextColor()V

    goto :goto_1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateResources()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/BatteryIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BatteryIcon;->clear()V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setDigitViewTextColor()V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->scaleBatteryMeterViews()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtremePowerSaveChanged(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_1

    const v0, 0x7f110035

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setDigitViewTextColor()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f110034

    goto :goto_0
.end method

.method public onPowerSaveChanged(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->getIconId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-eqz v0, :cond_1

    const v0, 0x7f110035

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->setDigitViewTextColor()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->update()V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f110034

    goto :goto_0
.end method

.method public setDigitViewTextColor()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    invoke-static {}, Lcom/android/systemui/Util;->showCtsSpecifiedColor()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x6

    aget v1, v1, v3

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v5

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v4

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mDarkIntensity:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x5

    aget v1, v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    const/4 v3, 0x3

    aget v1, v1, v3

    goto :goto_2

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSave:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterView;->mExtremePowerSave:Z

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v5

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextColors:[I

    aget v1, v1, v4

    goto :goto_2
.end method

.method public setNortchEar(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mNotchEar:Z

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryStyle:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->onBatteryStyleChanged(I)V

    return-void
.end method

.method public update()V
    .locals 4

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/systemui/BatteryMeterView;->getDemoModeIcon(Landroid/widget/ImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryTextDigitView:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mForceShowDigit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowBatteryDigitFull:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    if-ne v0, v1, :cond_3

    :cond_0
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryIconView:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/BatteryMeterView;->mIconId:I

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/BatteryMeterView;->getIcon(Landroid/widget/ImageView;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mLevel:I

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mShowBatteryDigitFull:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mCharging:Z

    if-nez v0, :cond_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateQuickCharging()V
    .locals 3

    new-instance v0, Lcom/android/systemui/BatteryMeterView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/BatteryMeterView$3;-><init>(Lcom/android/systemui/BatteryMeterView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateQuickCharging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterView;->mQuickCharging:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView;->updateBatteryChargingIcon()V

    return-void
.end method

.method public updateQuickChargingDelayed(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mUpdateQuickChargingTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/BatteryMeterView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updateVisibility()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mDisabled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
