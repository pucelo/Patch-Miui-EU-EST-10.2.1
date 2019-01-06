.class public Lcom/android/server/policy/MiuiScreenOnProximityLock;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MiuiScreenOnProximityLock$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_PREPARE_VIEW:I = 0x1

.field private static final EVENT_RELEASE:I = 0x0

.field private static final EVENT_RELEASE_VIEW:I = 0x3

.field private static final EVENT_SHOW_VIEW:I = 0x2

.field private static final FIRST_CHANGE_TIMEOUT:I = 0x5dc

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiScreenOnProximityLock"


# instance fields
.field private mAquiredTime:J

.field private mContext:Landroid/content/Context;

.field protected mFrontFingerprintSensor:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHasNavigationBar:Z

.field private mHideNavigationBarWhenForceShow:Z

.field protected mHintContainer:Landroid/view/ViewGroup;

.field protected mHintView:Landroid/view/View;

.field protected mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

.field private mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

.field private final mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHideNavigationBarWhenForceShow:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/MiuiScreenOnProximityLock;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHideNavigationBarWhenForceShow:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->prepareHintWindow()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->showHint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/MiuiKeyguardServiceDelegate;Landroid/os/Looper;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    new-instance v0, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$1;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    new-instance v0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;

    invoke-direct {v0, p0, p3}, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "front_fingerprint_sensor"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mFrontFingerprintSensor:Z

    invoke-direct {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->hasNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    return-void
.end method

.method private hasNavigationBar()Z
    .registers 4

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_b
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_11} :catch_14

    :goto_11
    iget-boolean v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    return v2

    :catch_14
    move-exception v0

    goto :goto_11
.end method

.method private prepareHintWindow()V
    .registers 8

    const/4 v1, -0x1

    new-instance v2, Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v5, 0x103006b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock$3;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const v4, 0x1021100

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string/jumbo v1, "ScreenOnProximitySensorGuide"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    return-void
.end method

.method private releaseHintWindow()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-nez v3, :cond_29

    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :goto_19
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mKeyguardDelegate:Lcom/android/server/policy/MiuiKeyguardServiceDelegate;

    invoke-virtual {v3, v9}, Lcom/android/server/policy/MiuiKeyguardServiceDelegate;->enableUserActivity(Z)V

    :cond_26
    iput-object v8, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    return-void

    :cond_29
    iget-object v3, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x0

    aput v6, v5, v9

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;

    invoke-direct {v3, p0, v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock$4;-><init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v8, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    goto :goto_19
.end method

.method private shouldBeBlockedInternal(Landroid/view/KeyEvent;Z)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_16

    xor-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_16

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_17

    :cond_16
    return v2

    :cond_17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_38

    return v3

    :sswitch_1f
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :sswitch_31
    return v2

    :sswitch_32
    iget-boolean v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mFrontFingerprintSensor:Z

    xor-int/lit8 v1, v1, 0x1

    return v1

    nop

    :sswitch_data_38
    .sparse-switch
        0x3 -> :sswitch_32
        0x18 -> :sswitch_1f
        0x19 -> :sswitch_1f
        0x1a -> :sswitch_31
        0x4f -> :sswitch_31
        0x55 -> :sswitch_31
        0x56 -> :sswitch_31
        0x57 -> :sswitch_31
        0x7e -> :sswitch_31
        0x7f -> :sswitch_31
    .end sparse-switch
.end method

.method private showHint()V
    .registers 14

    const/4 v12, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const-wide/16 v8, 0x1f4

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    if-eqz v4, :cond_11

    :cond_10
    return-void

    :cond_11
    const-string/jumbo v4, "MiuiScreenOnProximityLock"

    const-string/jumbo v5, "show hint..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x11030018

    iget-boolean v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHasNavigationBar:Z

    if-eqz v4, :cond_24

    const v3, 0x11030019

    :cond_24
    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    const v6, 0x103006b

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-static {v4, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v12, [F

    const/4 v7, 0x0

    aput v10, v6, v7

    const/4 v7, 0x1

    aput v11, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v11, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    invoke-virtual {v0, v12}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v4, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintView:Landroid/view/View;

    const v5, 0x110c004c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized aquire()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_34

    const-string/jumbo v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v1, "aquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/util/ProximitySensorWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mSensorListener:Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    invoke-virtual {v0, v1}, Lmiui/util/ProximitySensorWrapper;->registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public forceShow()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    const/16 v1, 0xf02

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHideNavigationBarWhenForceShow:Z

    :cond_18
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public declared-synchronized isHeld()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()Z
    .registers 4

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "MiuiScreenOnProximityLock"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mAquiredTime:J

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mProximitySensorWrapper:Lmiui/util/ProximitySensorWrapper;

    invoke-virtual {v0}, Lmiui/util/ProximitySensorWrapper;->unregisterAllListeners()V

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_31

    monitor-exit p0

    return v2

    :cond_2e
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shouldBeBlocked(ZLandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p2, p1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->shouldBeBlockedInternal(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->forceShow()V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method
