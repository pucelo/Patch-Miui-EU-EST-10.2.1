.class public final Lcom/android/server/display/NightDisplayService;
.super Lcom/android/server/SystemService;
.source "NightDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/NightDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/NightDisplayService$1;,
        Lcom/android/server/display/NightDisplayService$AutoMode;,
        Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/NightDisplayService$CustomAutoMode;,
        Lcom/android/server/display/NightDisplayService$TwilightAutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

.field private static final MATRIX_IDENTITY:[F

.field private static final TAG:Ljava/lang/String; = "NightDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private final mColorTempCoefficients:[F

.field private mController:Lcom/android/internal/app/NightDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mMatrixNight:[F

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method static synthetic -get0()[F
    .registers 1

    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/NightDisplayService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/display/NightDisplayService;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/NightDisplayService;)Lcom/android/internal/app/NightDisplayController;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/NightDisplayService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/display/NightDisplayService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/display/NightDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/display/NightDisplayService;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/display/NightDisplayService;)[F
    .registers 2

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/NightDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/display/NightDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/content/ContentResolver;I)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/display/NightDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/display/NightDisplayService;I[F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/NightDisplayService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    sget-object v0, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance v0, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;)V

    sput-object v0, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/server/display/NightDisplayService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$1;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private applyTint(Z)V
    .registers 8

    const/16 v4, 0x64

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_b
    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_14

    return-void

    :cond_14
    const-class v3, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v3}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    :goto_2a
    if-eqz p1, :cond_33

    invoke-virtual {v0, v4, v2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    :goto_2f
    return-void

    :cond_30
    sget-object v2, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    goto :goto_2a

    :cond_33
    sget-object v3, Lcom/android/server/display/NightDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/NightDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    if-nez v1, :cond_3c

    sget-object v1, Lcom/android/server/display/NightDisplayService;->MATRIX_IDENTITY:[F

    :cond_3c
    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/NightDisplayService$3;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/NightDisplayService$3;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/NightDisplayService$4;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/server/display/NightDisplayService$4;-><init>(Lcom/android/server/display/NightDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2f
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 8

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 8

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v2

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v0

    :cond_24
    return-object v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b
.end method

.method private onUserChanged(I)V
    .registers 7

    const/4 v3, 0x0

    const/16 v2, -0x2710

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_1a

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    :cond_1a
    :goto_1a
    iput p1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_40

    iget v1, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/NightDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_49

    new-instance v1, Lcom/android/server/display/NightDisplayService$2;

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/NightDisplayService$2;-><init>(Lcom/android/server/display/NightDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_40
    :goto_40
    return-void

    :cond_41
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->tearDown()V

    goto :goto_1a

    :cond_49
    iget-boolean v1, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_40

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    goto :goto_40
.end method

.method private setCoefficientMatrix(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Lcom/android/server/display/DisplayTransformManager;->isNativeModeEnabled()Z

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v2, :cond_26

    const v3, 0x1070038

    :goto_d
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_12
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2a

    array-length v3, v0

    if-ge v1, v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_26
    const v3, 0x1070037

    goto :goto_d

    :cond_2a
    return-void
.end method

.method private setMatrix(I[F)V
    .registers 13

    const/4 v9, 0x5

    const/4 v8, 0x0

    array-length v4, p2

    const/16 v5, 0x10

    if-eq v4, v5, :cond_11

    const-string/jumbo v4, "NightDisplayService"

    const-string/jumbo v5, "The display transformation matrix must be 4x4"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    invoke-static {p2, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    mul-int v4, p1, p1

    int-to-float v3, v4

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    aget v4, v4, v8

    mul-float/2addr v4, v3

    int-to-float v5, p1

    iget-object v6, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    add-float v2, v4, v5

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v4, v3

    int-to-float v5, p1

    iget-object v6, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    aget v5, v5, v9

    add-float v1, v4, v5

    iget-object v4, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v4, v3

    int-to-float v5, p1

    iget-object v6, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/4 v7, 0x7

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/display/NightDisplayService;->mColorTempCoefficients:[F

    const/16 v6, 0x8

    aget v5, v5, v6

    add-float v0, v4, v5

    aput v2, p2, v8

    aput v1, p2, v9

    const/16 v4, 0xa

    aput v0, p2, v4

    return-void
.end method

.method private setUp()V
    .registers 4

    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/NightDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->setCoefficientMatrix(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onAutoModeChanged(I)V

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/NightDisplayService;->onActivated(Z)V

    :cond_56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    return-void
.end method

.method private tearDown()V
    .registers 5

    const/4 v3, 0x0

    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/NightDisplayController;->setListener(Lcom/android/internal/app/NightDisplayController$Callback;)V

    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    :cond_28
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    :cond_33
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    :cond_3e
    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_2a

    :cond_c
    const-string/jumbo v1, "NightDisplayService"

    if-eqz p1, :cond_2b

    const-string/jumbo v0, "Turning on night display"

    :goto_14
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mIsActivated:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onActivated(Z)V

    :cond_26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    :cond_2a
    return-void

    :cond_2b
    const-string/jumbo v0, "Turning off night display"

    goto :goto_14
.end method

.method public onAutoModeChanged(I)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStop()V

    iput-object v3, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    :cond_26
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3a

    new-instance v0, Lcom/android/server/display/NightDisplayService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/NightDisplayService$AutoMode;->onStart()V

    :cond_39
    return-void

    :cond_3a
    const/4 v0, 0x2

    if-ne p1, v0, :cond_30

    new-instance v0, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/NightDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/NightDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    goto :goto_30
.end method

.method public onBootPhase(I)V
    .registers 7

    const/16 v2, 0x1f4

    if-lt p1, v2, :cond_16

    const-string/jumbo v2, "vrmanager"

    invoke-virtual {p0, v2}, Lcom/android/server/display/NightDisplayService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v1

    if-eqz v1, :cond_16

    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v1, v2}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_2b

    :cond_16
    :goto_16
    const/16 v2, 0x3e8

    if-lt p1, v2, :cond_2a

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/NightDisplayService;->mBootCompleted:Z

    iget v2, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2a

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_2a

    invoke-direct {p0}, Lcom/android/server/display/NightDisplayService;->setUp()V

    :cond_2a
    return-void

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "NightDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to register VR mode state listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public onColorTemperatureChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 5

    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    :cond_23
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 5

    const-string/jumbo v0, "NightDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/display/NightDisplayService;->mAutoMode:Lcom/android/server/display/NightDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/NightDisplayService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    :cond_23
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .registers 5

    const-class v1, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v1}, Lcom/android/server/display/NightDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayTransformManager;->setColorMode(I)Z

    invoke-virtual {p0}, Lcom/android/server/display/NightDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/display/NightDisplayService;->setCoefficientMatrix(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->getColorTemperature()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/NightDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/NightDisplayService;->setMatrix(I[F)V

    iget-object v1, p0, Lcom/android/server/display/NightDisplayService;->mController:Lcom/android/internal/app/NightDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/display/NightDisplayService;->applyTint(Z)V

    :cond_29
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    :cond_c
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    iget v0, p0, Lcom/android/server/display/NightDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_c

    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    :cond_c
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    invoke-direct {p0, p1}, Lcom/android/server/display/NightDisplayService;->onUserChanged(I)V

    return-void
.end method
