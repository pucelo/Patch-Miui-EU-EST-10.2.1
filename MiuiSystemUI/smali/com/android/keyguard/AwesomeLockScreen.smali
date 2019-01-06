.class public Lcom/android/keyguard/AwesomeLockScreen;
.super Landroid/widget/FrameLayout;
.source "AwesomeLockScreen.java"

# interfaces
.implements Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AwesomeLockScreen$1;
    }
.end annotation


# static fields
.field private static mRootHolder:Lcom/android/keyguard/RootHolder;

.field private static mThemeChanged:I

.field private static sStartTime:J

.field static sSuppressNextLockSound:Z

.field private static sTotalWakenTime:J


# instance fields
.field private isPaused:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mInitSuccessful:Z

.field private mIsFocus:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

.field private mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPasswordMode:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakeStartTime:J


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/AwesomeLockScreen;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    return v0
.end method

.method static synthetic -get1()Lcom/android/keyguard/RootHolder;
    .locals 1

    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/AwesomeLockScreen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->collapsePanel()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/RootHolder;

    invoke-direct {v0}, Lcom/android/keyguard/RootHolder;-><init>()V

    sput-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    new-instance v7, Lcom/android/keyguard/AwesomeLockScreen$1;

    invoke-direct {v7, p0}, Lcom/android/keyguard/AwesomeLockScreen$1;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v7, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, v8}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/keyguard/AwesomeLockScreen;->setFocusable(Z)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/keyguard/AwesomeLockScreen;->setFocusableInTouchMode(Z)V

    const-string/jumbo v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v7, v0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget v6, v7, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    sget v7, Lcom/android/keyguard/AwesomeLockScreen;->mThemeChanged:I

    if-le v6, v7, :cond_0

    invoke-static {}, Lcom/android/keyguard/AwesomeLockScreen;->clearCache()V

    sput v6, Lcom/android/keyguard/AwesomeLockScreen;->mThemeChanged:I

    :cond_0
    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    iget-object v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, p0}, Lcom/android/keyguard/RootHolder;->init(Landroid/content/Context;Lcom/android/keyguard/AwesomeLockScreen;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "AwesomeLockScreen"

    const-string/jumbo v8, "fail to init RootHolder"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v5, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v5, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v7}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isOwnerInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Landroid/security/MiuiLockPatternUtils;->getOwnerInfo()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const-string/jumbo v7, "owner_info"

    sget-object v8, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v8}, Lcom/android/keyguard/RootHolder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v8

    iget-object v8, v8, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-static {v7, v8, v3}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    new-instance v1, Lcom/android/keyguard/HeiHeiGestureView;

    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/android/keyguard/HeiHeiGestureView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Lcom/android/keyguard/HeiHeiGestureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Lcom/android/keyguard/AwesomeLockScreen$2;

    invoke-direct {v7, p0}, Lcom/android/keyguard/AwesomeLockScreen$2;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    invoke-virtual {v1, v7}, Lcom/android/keyguard/HeiHeiGestureView;->setOnTriggerListener(Lcom/android/keyguard/HeiHeiGestureView$OnTriggerListener;)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/AwesomeLockScreen;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->getPasswordMode()I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v7}, Lcom/android/keyguard/RootHolder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const-string/jumbo v8, "__password_mode"

    iget v9, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    int-to-double v10, v9

    invoke-virtual {v7, v8, v10, v11}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v7}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setLockscreenCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;)V

    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    iget-object v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/RootHolder;->createView(Landroid/content/Context;)Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    if-eqz v7, :cond_2

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v4, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v1, v7, v4}, Lcom/android/keyguard/HeiHeiGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    :cond_2
    sget-wide v8, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sput-wide v8, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->onPause()V

    sget-object v7, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v7}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v8

    iget v7, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    if-eqz v7, :cond_5

    const/high16 v7, -0x1000000

    :goto_1
    invoke-virtual {v8, v7}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setBgColor(I)V

    return-void

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/AwesomeLockScreen;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p3, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object p4, p0, Lcom/android/keyguard/AwesomeLockScreen;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0, p3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    :cond_0
    return-void
.end method

.method public static clearCache()V
    .locals 1

    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->clear()V

    return-void
.end method

.method private collapsePanel()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->collapse(ZF)V

    return-void
.end method

.method private pause()V
    .locals 6

    iget-boolean v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->pause()V

    sget-object v2, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v2}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v2

    const-string/jumbo v3, "pause"

    invoke-virtual {v2, v3}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    sub-long v0, v2, v4

    sget-wide v2, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    return-void
.end method

.method private resume()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->resume()V

    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    const-string/jumbo v1, "resume"

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->onCommand(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mWakeStartTime:J

    return-void
.end method

.method private sendLockscreenIntentTypeAnalytics(Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.TRACK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "eventId"

    const-string/jumbo v2, "lockscreen_intent_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "eventObj"

    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateStatusBarColormode()V
    .locals 0

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/RootHolder;->cleanUp(Lcom/android/keyguard/AwesomeLockScreen;)V

    return-void
.end method

.method public cleanUpView()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->finish()V

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->cleanUp(Z)V

    return-void
.end method

.method public getPasswordMode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/16 v1, 0xa

    return v1
.end method

.method public haptic(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/AwesomeLockScreen;->performHapticFeedback(I)Z

    return-void
.end method

.method public isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/android/keyguard/LockPatternUtilsWrapper;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isSoundEnable()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_sounds_enabled"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->updateStatusBarColormode()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->cleanUp()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "AwesomeLockScreen"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->pause()V

    return-void
.end method

.method public onResume(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "AwesomeLockScreen"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->resume()V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->updateStatusBarColormode()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->collapsePanel()V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/keyguard/AwesomeLockScreen;->mIsFocus:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->isPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->resume()V

    goto :goto_0
.end method

.method public pokeWakelock()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method

.method public rebindView()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mInitSuccessful:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->setLockscreenCallback(Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot$LockscreenCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mLockscreenView:Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/AwesomeLockScreenView;->rebindRoot()V

    return-void
.end method

.method public unlockVerify(Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/AwesomeLockScreen;->getPasswordMode()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    sget-object v0, Lcom/android/keyguard/AwesomeLockScreen;->mRootHolder:Lcom/android/keyguard/RootHolder;

    invoke-virtual {v0}, Lcom/android/keyguard/RootHolder;->getRoot()Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockScreenRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string/jumbo v1, "__password_mode"

    iget v2, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    int-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    iget v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/AwesomeLockScreen;->mPasswordMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/AwesomeLockScreen;->collapsePanel()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v4
.end method

.method public unlocked(Landroid/content/Intent;I)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/keyguard/AwesomeLockScreen;->sendLockscreenIntentTypeAnalytics(Landroid/content/Intent;)V

    new-instance v0, Lcom/android/keyguard/AwesomeLockScreen$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AwesomeLockScreen$3;-><init>(Lcom/android/keyguard/AwesomeLockScreen;)V

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/AwesomeLockScreen;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v1, "AwesomeLockScreen"

    const-string/jumbo v2, "lockscreen awake time: [%d sec] in time range: [%d sec]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-wide v4, Lcom/android/keyguard/AwesomeLockScreen;->sTotalWakenTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sget-wide v6, Lcom/android/keyguard/AwesomeLockScreen;->sStartTime:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
