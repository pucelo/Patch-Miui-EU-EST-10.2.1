.class public Lcom/android/systemui/statusbar/HeaderView;
.super Landroid/widget/RelativeLayout;
.source "HeaderView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/HeaderView$1;
    }
.end annotation


# instance fields
.field private mActStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mCarrierLayout:Landroid/widget/LinearLayout;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mCarrierTextLand:Lcom/android/keyguard/CarrierText;

.field private mClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mDarkModeIconColorSingleTone:I

.field private mDateView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mHasMobileDataFeature:Z

.field private mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

.field private mLastOrientation:I

.field private mLightModeIconColorSingleTone:I

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mShortcut:Landroid/widget/ImageView;

.field private mShortcutDestination:I

.field private mStatusIcons:Landroid/widget/LinearLayout;

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsArea:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mActStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/HeaderView;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/HeaderView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mLastOrientation:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/HeaderView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/HeaderView;)Landroid/content/Intent;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeaderView;->buildShortcutClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/systemui/statusbar/HeaderView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/HeaderView$1;-><init>(Lcom/android/systemui/statusbar/HeaderView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mHasMobileDataFeature:Z

    return-void
.end method

.method private buildShortcutClickIntent()Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/Util;->isBrowserSearchExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.browser.browser_search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "qsb://query?close_web_page=true&ref=systemui10"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCarrierText(I)V
    .locals 8

    const/16 v7, 0xc

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const v1, 0x7f0a01ee

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIconsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x11

    const v2, 0x7f0a007d

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIconsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/Clock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const v1, 0x7f0a02bb

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIconsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x11

    const v2, 0x7f0a007c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIconsArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateResources(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v3, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mLastOrientation:I

    if-eq v1, v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_TABLET:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    if-ne v1, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/HeaderView;->updateCarrierText(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    if-ne v1, v3, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/policy/Clock;->setClockMode(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mLastOrientation:I

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected getShortcut()I
    .locals 3

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "status_bar_notification_shade_shortcut"

    iget v2, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/HeaderView;->updateResources(Landroid/content/res/Configuration;)V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "status_bar_notification_shade_shortcut"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setShieldDarkReceiver(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/HeaderView;->updateResources(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v3, 0x7f0a00a3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/Clock;->setClockMode(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/Clock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0056

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/policy/Clock;->setShowAmPm(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/policy/Clock;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a02bc

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    const v3, 0x7f0a02bb

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIconsArea:Landroid/widget/LinearLayout;

    const v3, 0x7f0a007a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/CarrierText;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const v3, 0x7f0a007b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/CarrierText;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    const v3, 0x7f0a007d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f050049

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierText:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mCarrierTextLand:Lcom/android/keyguard/CarrierText;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/CarrierText;->setShowStyle(I)V

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mHasMobileDataFeature:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/Clock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIconsArea:Landroid/widget/LinearLayout;

    const v6, 0x7f0a0296

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mContext:Landroid/content/Context;

    const v6, 0x7f06003d

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mDarkModeIconColorSingleTone:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mContext:Landroid/content/Context;

    const v6, 0x7f060085

    invoke-virtual {v3, v6}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mLightModeIconColorSingleTone:I

    const v3, 0x7f0a02af

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mStatusIcons:Landroid/widget/LinearLayout;

    const v3, 0x7f0a01ee

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/HeaderView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getShortcut()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->updateShortcut()V

    const-class v3, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v3, p0, Lcom/android/systemui/statusbar/HeaderView;->mActStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/HeaderView;->updateCarrierText(I)V

    return-void

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "status_bar_notification_shade_shortcut"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->updateShortcut()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mDateView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->setEnabled(Z)V

    return-void
.end method

.method public themeChanged()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f050005

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const v9, 0x7f05003d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v5, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/HeaderView;->mDarkModeIconColorSingleTone:I

    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/HeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    if-eqz v9, :cond_0

    check-cast v8, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;

    invoke-interface {v8, v0, v2, v7}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;->onDarkChanged(Landroid/graphics/Rect;FI)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/HeaderView;->mLightModeIconColorSingleTone:I

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/HeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/statusbar/HeaderView;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;

    invoke-virtual {v9, v0, v2, v7}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$DarkIconManager;->setDarkIntensity(Landroid/graphics/Rect;FI)V

    :cond_4
    const/4 v3, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/HeaderView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/HeaderView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    instance-of v9, v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/HeaderView;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v9

    iget-object v9, v9, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v9}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v0, v4, v2}, Lcom/android/systemui/statusbar/policy/DarkIconDispatcherHelper;->inDarkMode(Landroid/graphics/Rect;Landroid/view/View;F)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/Icons;->get(Ljava/lang/Integer;Z)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->setImageResource(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public updateShortcut()V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcutDestination:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    const v1, 0x7f0802b0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    const v1, 0x7f0802b3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeaderView;->mShortcut:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
