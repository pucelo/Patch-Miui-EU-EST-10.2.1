.class public Lcom/android/keyguard/PasswordTextViewForPIN;
.super Lcom/android/keyguard/PasswordTextView;
.source "PasswordTextViewForPIN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextViewForPIN$1;,
        Lcom/android/keyguard/PasswordTextViewForPIN$CharState;
    }
.end annotation


# instance fields
.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCharPadding:I

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDotSize:I

.field private final mDrawPaint:Landroid/graphics/Paint;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGravity:I

.field private mHandler:Landroid/os/Handler;

.field private mIsResetAnimating:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPasswordLength:I

.field mResetAnimRunnable:Ljava/lang/Runnable;

.field mShowPassword:Z

.field private mText:Ljava/lang/String;

.field private mTextChars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/PasswordTextViewForPIN$CharState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextHeightRaw:I

.field private mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/PasswordTextViewForPIN;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/PasswordTextViewForPIN;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mCharPadding:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/PasswordTextViewForPIN;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/PasswordTextViewForPIN;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDotSize:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/PasswordTextViewForPIN;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/PasswordTextViewForPIN;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mIsResetAnimating:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/PasswordTextViewForPIN;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/PasswordTextViewForPIN;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mIsResetAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/PasswordTextViewForPIN;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getVisibleTextCharSize()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PasswordTextViewForPIN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PasswordTextViewForPIN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PasswordTextViewForPIN;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    const/4 v8, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/PasswordTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    const-string/jumbo v6, ""

    iput-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/keyguard/PasswordTextViewForPIN$1;

    invoke-direct {v6, p0}, Lcom/android/keyguard/PasswordTextViewForPIN$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPIN;)V

    iput-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mResetAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/keyguard/PasswordTextViewForPIN;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v4}, Lcom/android/keyguard/PasswordTextViewForPIN;->setFocusable(Z)V

    sget-object v6, Lcom/android/keyguard/R$styleable;->PasswordTextView:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x3

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextHeightRaw:I

    const/4 v6, 0x0

    const/16 v7, 0x11

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mGravity:I

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070308

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDotSize:I

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070307

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mCharPadding:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v7, 0x81

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v7, "sans-serif-light"

    invoke-static {v7, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_password"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mShowPassword:Z

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mContext:Landroid/content/Context;

    const v6, 0x10c000e

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mContext:Landroid/content/Context;

    const v6, 0x10c000f

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mContext:Landroid/content/Context;

    const v6, 0x10c000d

    invoke-static {v4, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPM:Landroid/os/PowerManager;

    iput-boolean v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mShowPassword:Z

    new-instance v2, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v2, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/security/MiuiLockPatternUtils;->getLockPasswordLength(I)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    if-ge v4, v8, :cond_0

    iput v8, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    const-string/jumbo v4, "PasswordTextViewForPIN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get password length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPIN;Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mWidth:I

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->initCharPadding()V

    return-void
.end method

.method private getCharBounds()Landroid/graphics/Rect;
    .locals 6

    iget v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextHeightRaw:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v1, v2, v3

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    const-string/jumbo v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-object v0
.end method

.method private getDrawingWidth()F
    .locals 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    if-ge v2, v4, :cond_1

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mCharPadding:I

    add-int/2addr v3, v4

    :cond_0
    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    int-to-float v4, v3

    return v4
.end method

.method private getVisibleTextCharSize()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    iget-boolean v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->isVisible:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private initCharPadding()V
    .locals 8

    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mCharPadding:I

    iget v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v6, v7

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mWidth:I

    mul-int v7, v5, v2

    sub-int v0, v6, v7

    add-int/lit8 v6, v5, -0x1

    div-int v4, v0, v6

    if-le v4, v3, :cond_0

    :goto_0
    iput v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mCharPadding:I

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private initGrayDotDraw(Landroid/graphics/Canvas;FFF)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mCharPadding:I

    int-to-float v0, v0

    add-float/2addr v0, p4

    return v0
.end method

.method private userActivity()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    invoke-interface {v0}, Lcom/android/keyguard/PasswordTextView$UserActivityListener;->onUserActivity()V

    :cond_0
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    if-le v2, v4, :cond_0

    return-void

    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mIsResetAnimating:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mResetAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->reset()V

    goto :goto_0

    :cond_1
    iput-boolean v6, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mIsResetAnimating:Z

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-static {v0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->-wrap0(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;)V

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChangeListener:Lcom/android/keyguard/PasswordTextView$TextChangeListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChangeListener:Lcom/android/keyguard/PasswordTextView$TextChangeListener;

    invoke-interface {v4, v2}, Lcom/android/keyguard/PasswordTextView$TextChangeListener;->onTextChanged(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->userActivity()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v6, v5}, Lcom/android/keyguard/PasswordTextViewForPIN;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    return-void
.end method

.method public deleteLastChar()V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->-wrap1(Lcom/android/keyguard/PasswordTextViewForPIN$CharState;J)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/android/keyguard/PasswordTextViewForPIN;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->userActivity()V

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChangeListener:Lcom/android/keyguard/PasswordTextView$TextChangeListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChangeListener:Lcom/android/keyguard/PasswordTextView$TextChangeListener;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/keyguard/PasswordTextView$TextChangeListener;->onTextChanged(I)V

    :cond_1
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getDrawingWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    const/4 v13, 0x3

    if-ne v3, v13, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mGravity:I

    const/high16 v13, 0x800000

    and-int/2addr v3, v13

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getLayoutDirection()I

    move-result v3

    const/4 v13, 0x1

    if-ne v3, v13, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingRight()I

    move-result v13

    sub-int/2addr v3, v13

    int-to-float v3, v3

    sub-float v10, v3, v12

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getCharBounds()Landroid/graphics/Rect;

    move-result-object v8

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    iget v13, v8, Landroid/graphics/Rect;->top:I

    sub-int v5, v3, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v3, v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingTop()I

    move-result v13

    sub-int/2addr v3, v13

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingTop()I

    move-result v13

    add-int/2addr v3, v13

    int-to-float v6, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingTop()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v13, v14, v15}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v13, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v13

    int-to-float v7, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v7, v3

    add-float v4, v10, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    const v13, 0x7fffffff

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mPasswordLength:I

    if-ge v11, v3, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v6, v7}, Lcom/android/keyguard/PasswordTextViewForPIN;->initGrayDotDraw(Landroid/graphics/Canvas;FFF)F

    move-result v9

    add-float/2addr v4, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getPaddingLeft()I

    move-result v3

    int-to-float v10, v3

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v12, v13

    sub-float v10, v3, v13

    goto :goto_0

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v7, v3

    add-float v4, v10, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v13, -0x1

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v11, 0x0

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->getVisibleTextCharSize()I

    move-result v3

    if-ge v11, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->draw(Landroid/graphics/Canvas;FIFF)F

    move-result v9

    add-float/2addr v4, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/keyguard/PasswordTextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPassword(Z)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEditable(Z)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setInputType(I)V

    return-void
.end method

.method public reset(ZZ)V
    .locals 8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mText:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mIsResetAnimating:Z

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mResetAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x140

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v5, v3, v5}, Lcom/android/keyguard/PasswordTextViewForPIN;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChangeListener:Lcom/android/keyguard/PasswordTextView$TextChangeListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChangeListener:Lcom/android/keyguard/PasswordTextView$TextChangeListener;

    invoke-interface {v3, v5}, Lcom/android/keyguard/PasswordTextView$TextChangeListener;->onTextChanged(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mTextChars:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextViewForPIN$CharState;->reset()V

    goto :goto_1

    :cond_3
    iput-boolean v5, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mIsResetAnimating:Z

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/String;III)V
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextViewForPIN;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPIN;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method public setUserActivityListener(Lcom/android/keyguard/PasswordTextView$UserActivityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPIN;->mUserActivityListener:Lcom/android/keyguard/PasswordTextView$UserActivityListener;

    return-void
.end method
