.class public Lcom/android/keyguard/KeyguardPatternView;
.super Lcom/android/keyguard/MiuiKeyguardPasswordView;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$1;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/MiuiKeyguardPasswordView;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Lcom/android/keyguard/MiuiLockPatternView$CellState;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastPokeTime:J

.field private mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/MiuiLockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v9, 0x10c000f

    const v8, 0x3f99999a    # 1.2f

    const v7, 0x3f19999a    # 0.6f

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/MiuiKeyguardPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v2, 0x7d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    move v4, v8

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    new-instance v0, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    const-wide/16 v2, 0xbb

    move-object v1, p1

    move v4, v8

    move v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    return-void
.end method

.method private enableClipping(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipChildren(Z)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipToPadding(Z)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 11

    const-wide/16 v4, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sub-long v2, p1, v6

    invoke-interface {v0, v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->handleAttemptLockout(J)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiLockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setEnabled(Z)V

    sub-long v0, p1, v6

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-long v8, v0

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    mul-long v2, v8, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public applyHintAnimation(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardBouncerMessageView;->applyHintAnimation(J)V

    return-void
.end method

.method public createAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    if-eqz p7, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    if-eqz p7, :cond_2

    move/from16 v4, p6

    :goto_1
    if-eqz p7, :cond_3

    const/4 v5, 0x0

    :goto_2
    if-eqz p7, :cond_4

    const/4 v6, 0x0

    :goto_3
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/android/keyguard/MiuiLockPatternView;->startCellStateAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    if-eqz p9, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCarrierArea:Lcom/android/keyguard/EmergencyCarrierArea;

    const/4 v9, 0x0

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move/from16 v5, p6

    goto :goto_2

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    move-object v1, p1

    check-cast v1, Lcom/android/keyguard/MiuiLockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getPromptReasonString(I)Ljava/lang/String;
    .locals 8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const v1, 0x7f110399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const v1, 0x7f1102f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getRequiredStrongAuthTimeout()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    long-to-int v1, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f0f0008

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_2
    const v1, 0x7f110391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_3
    const v1, 0x7f11039b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_4
    const-string/jumbo v1, ""

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleConfigurationFontScaleChanged()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07022f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/EmergencyButton;->setTextSize(IF)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackButton:Lcom/android/keyguard/BackButton;

    int-to-float v3, v1

    invoke-virtual {v2, v4, v3}, Lcom/android/keyguard/BackButton;->setTextSize(IF)V

    return-void
.end method

.method protected handleConfigurationOrientationChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07020c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->onFinishInflate()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const v0, 0x7f0a018b

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/MiuiLockPatternView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setSaveEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setOnPatternListener(Lcom/android/keyguard/MiuiLockPatternView$OnPatternListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/MiuiLockPatternView;->setTactileFeedbackEnabled(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/android/keyguard/MiuiKeyguardPasswordView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x1af4

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/MiuiLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MiuiLockPatternView;->setInStealthMode(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiLockPatternView;->enableInput()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/MiuiLockPatternView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/MiuiLockPatternView;->clearPattern()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardBouncerMessageView;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->getPromptReasonString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1102f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/KeyguardBouncerMessageView;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->getCellStates()[[Lcom/android/keyguard/MiuiLockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 9

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerMessageView:Lcom/android/keyguard/KeyguardBouncerMessageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardBouncerMessageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v8, 0x3fc00000    # 1.5f

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->clearPattern()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    const-wide/16 v2, 0x0

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v1, v8

    float-to-long v4, v1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v6, v1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/MiuiLockPatternView;->getCellStates()[[Lcom/android/keyguard/MiuiLockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_1
.end method
