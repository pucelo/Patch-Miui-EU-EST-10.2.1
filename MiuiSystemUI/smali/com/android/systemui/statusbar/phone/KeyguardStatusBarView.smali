.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;


# instance fields
.field private mBlockClickActionToStatusBar:Z

.field private mCarrierContainer:Landroid/widget/LinearLayout;

.field private mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field private mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

.field private mDarkModeIconColorSingleTone:I

.field private mLightModeIconColorSingleTone:I

.field private mSosObserver:Landroid/database/ContentObserver;

.field private mSosView:Landroid/widget/ImageView;

.field private mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

.field public mStatusIcons:Landroid/widget/LinearLayout;

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsSuperContainer:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSosStatusBar()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusBarFactory;->getInstance()Lcom/android/systemui/statusbar/phone/StatusBarFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarFactory;->getKeyguardStatusBarViewController()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    return-void
.end method

.method private registerSosStateListener()V
    .locals 4

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosObserver:Landroid/database/ContentObserver;

    const-string/jumbo v1, "key_is_in_miui_sos_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateNotchPromptViewLayout(Landroid/view/View;)V
    .locals 5

    const/16 v4, 0x11

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->isPromptCenter()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eq v1, v0, :cond_0

    if-eqz v0, :cond_2

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const v3, 0x800013

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method private updateSosStatusBar()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_is_in_miui_sos_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/CarrierText;->forceHide(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    goto :goto_1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->registerSosStateListener()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->showStatusIcons()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->hideStatusIcons()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 9

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->init(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    const v0, 0x7f0a02be

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    const v0, 0x7f0a013f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    const v0, 0x7f0a0140

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/CarrierText;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02af

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a0295

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/SignalClusterView;->setNotchEar()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NetworkSpeedView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NetworkSpeedView;->setNotch()V

    const v0, 0x7f0a004a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/BatteryMeterView;

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/systemui/BatteryMeterView;->setNortchEar(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateNotchPromptViewLayout(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->updateNotchVisible()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkModeIconColorSingleTone:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLightModeIconColorSingleTone:I

    const/16 v4, 0xf

    const-class v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    const-string/jumbo v1, "KeyguardStatusBarView"

    const/4 v2, 0x0

    move-object v3, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->addStatusBarPrompt(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/ViewGroup;ILcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController$OnPromptStateChangedListener;)V

    return-void
.end method

.method public onPromptStateChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->blockClickAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    if-eqz v0, :cond_0

    return v1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusBarPrompt:Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/phone/MiuiStatusBarPromptController;->handleClickAction()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBlockClickActionToStatusBar:Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDarkMode(Landroid/view/ViewGroup;Landroid/graphics/Rect;F)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2, v1, p3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz p1, :cond_1

    const v5, 0x7f06018a

    :goto_0
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/keyguard/CarrierText;->setTextColor(I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p1, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkModeIconColorSingleTone:I

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    const v6, 0x7f08060f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSosView:Landroid/widget/ImageView;

    invoke-static {v0, v7, v1}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v4, v0, v1, v3}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1
    const v5, 0x7f060189

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLightModeIconColorSingleTone:I

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setDarkMode(Landroid/view/ViewGroup;Landroid/graphics/Rect;F)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    invoke-interface {v5, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;->setDarkMode(Landroid/graphics/Rect;FI)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method
