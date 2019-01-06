.class public Lcom/android/systemui/qs/QSFooter;
.super Landroid/widget/FrameLayout;
.source "QSFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# instance fields
.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAlarmStatusCollapsed:Landroid/view/View;

.field private mAlwaysShowMultiUserSwitch:Z

.field private mAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mDate:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/View;

.field protected mEdit:Landroid/view/View;

.field protected mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field private mKeyguardShowing:Z

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEditIcon:Z

.field private mShowEmergencyCallsOnly:Z

.field private mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSFooter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooter;->updateAnimator(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateVisibilities()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v2, "alpha"

    new-array v3, v8, [F

    aput v4, v3, v6

    aput v5, v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v1

    return-object v1
.end method

.method private startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateAlarmVisibilities()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateAnimator(I)V
    .locals 14

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles(Landroid/content/Context;)I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07036c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07036e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int v3, v4, v5

    mul-int v4, v1, v3

    sub-int v4, p1, v4

    add-int/lit8 v5, v1, -0x1

    div-int v2, v4, v5

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070096

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const-string/jumbo v6, "translationX"

    new-array v7, v12, [F

    sub-int v8, v2, v0

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v10

    aput v9, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const-string/jumbo v6, "rotation"

    new-array v7, v12, [F

    const/high16 v8, -0x3d100000    # -120.0f

    aput v8, v7, v10

    aput v9, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmShowing:Z

    if-eqz v4, :cond_0

    new-instance v4, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    const-string/jumbo v6, "alpha"

    new-array v7, v12, [F

    aput v13, v7, v10

    aput v9, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    const-string/jumbo v6, "translationX"

    new-array v7, v12, [F

    aput v9, v7, v10

    iget-object v8, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    aput v8, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const-string/jumbo v6, "alpha"

    new-array v7, v12, [F

    aput v9, v7, v10

    aput v13, v7, v11

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/qs/QSFooter$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/qs/QSFooter$3;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setListener(Lcom/android/systemui/qs/TouchAnimator$Listener;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    :goto_0
    iget v4, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    return-void

    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v4, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0
.end method

.method private updateListeners()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    const v1, 0x7f070334

    invoke-static {v0, v1}, Lcom/android/systemui/FontUtils;->updateFontSize(Landroid/widget/TextView;I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateSettingsAnimator()V

    return-void
.end method

.method private updateSettingsAnimator()V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createSettingsAlphaAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/qs/QSFooter$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooter$4;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_1
    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setPivotX(F)V

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    const v4, 0x7f0a02f2

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/proxy/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v1

    if-eqz v1, :cond_4

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    if-nez v0, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public getExpandView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v1, :cond_3

    const-class v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isCurrentUserSetup()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v2, Lcom/android/systemui/qs/QSFooter$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSFooter$6;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x196

    :goto_0
    invoke-static {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->startSettingsActivity()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v1, 0x1ea

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    if-ne p1, v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    const/16 v4, 0x3a2

    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.SHOW_ALARMS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setListening(Z)V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 7

    const v6, 0x1020003

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/qs/QSFooter;->mEdit:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEditIcon:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0a00a4

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    const v1, 0x7f0a00a1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDate:Landroid/view/View;

    const v1, 0x7f0a00d2

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const v4, 0x7f05002a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    const v1, 0x7f0a0289

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const v1, 0x7f0a028a

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0024

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatusCollapsed:Landroid/view/View;

    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mDateTimeGroup:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a01bf

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v2, 0x7f0a01be

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlwaysShowMultiUserSwitch:Z

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    const-class v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    const-class v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/QSFooter$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooter$2;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSFooter;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v2, v3

    goto/16 :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateResources()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mShowEmergencyCallsOnly:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooter;->updateEverything()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mAlarmAnimator:Lcom/android/systemui/qs/TouchAnimator;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateAlarmVisibilities()V

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mExpandIndicator:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const v0, 0x3f6e147b    # 0.93f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    return-void

    :cond_3
    move v0, p1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 0

    return-void
.end method

.method public setIsDefaultDataSim(IZ)V
    .locals 0

    return-void
.end method

.method public setIsImsRegisted(IZ)V
    .locals 0

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mKeyguardShowing:Z

    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mExpansionAmount:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->setExpansion(F)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooter;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->updateListeners()V

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIIILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    return-void
.end method

.method public setNetworkNameVoice(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setNoSims(Z)V
    .locals 0

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    return-void
.end method

.method public setSpeechHd(IZ)V
    .locals 0

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setVolteNoService(IZ)V
    .locals 0

    return-void
.end method

.method public setVowifi(IZ)V
    .locals 0

    return-void
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZLjava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public updateEverything()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSFooter$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$5;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooter;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
