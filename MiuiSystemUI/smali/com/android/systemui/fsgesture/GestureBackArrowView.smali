.class public Lcom/android/systemui/fsgesture/GestureBackArrowView;
.super Landroid/view/View;
.source "GestureBackArrowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mArrow:Landroid/graphics/Bitmap;

.field private mArrowAnimator:Landroid/animation/ValueAnimator;

.field private mArrowDstRect:Landroid/graphics/Rect;

.field private mArrowHeight:I

.field private mArrowPaint:Landroid/graphics/Paint;

.field private mArrowShown:Z

.field private mArrowWidth:I

.field private mBackDstRect:Landroid/graphics/Rect;

.field private mBackHeight:I

.field private mBackWidth:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurArrowAlpha:I

.field private mCurrentY:F

.field private mDisplayWidth:I

.field private mExpectBackHeight:F

.field private mIconHeight:I

.field private mIconNeedDraw:Z

.field private mIconScale:F

.field private mIconWidth:I

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastIconAnimator:Landroid/animation/ValueAnimator;

.field private mLeftBackground:Landroid/graphics/Bitmap;

.field private mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

.field private mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

.field private mRightBackground:Landroid/graphics/Bitmap;

.field private mScale:F

.field private mStartX:F

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveChangeAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/GestureBackArrowView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/GestureBackArrowView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurArrowAlpha:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/fsgesture/GestureBackArrowView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    iput v3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    iput p5, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800c9

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    const v0, 0x7f0801b7

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800c8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeScale(FFI)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    new-array v0, v6, [F

    aput p1, v0, v4

    aput p2, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView$2;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-array v0, v6, [F

    const/4 v1, 0x0

    aput v1, v0, v4

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView$3;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2}, Lcom/android/systemui/fsgesture/GestureStubView;->supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/fsgesture/GestureStubView;->getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private startArrowAnimating(ZI)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurArrowAlpha:I

    aput v2, v1, v0

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :cond_1
    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->CUBIC_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView$1;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method getCurrentState()Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-object v0
.end method

.method onActionDown(FFF)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iput p3, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    :goto_0
    iput p2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    iput-boolean v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 v0, 0x41a00000    # 20.0f

    sub-float v0, p1, v0

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    goto :goto_0
.end method

.method onActionMove(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->invalidate()V

    return-void
.end method

.method onActionUp(FLandroid/animation/Animator$AnimatorListener;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mWaveChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLastIconAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    const/high16 v1, 0x41a00000    # 20.0f

    div-float v1, p1, v1

    iput v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView;->QUAD_EASE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView$4;-><init>(Lcom/android/systemui/fsgesture/GestureBackArrowView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mLeftBackground:Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    mul-float v5, v8, v9

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mPosition:I

    packed-switch v8, :pswitch_data_0

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mExpectBackHeight:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v8, v2, v9, v3, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackDstRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {p1, v4, v10, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v9, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v9, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v8, v9, :cond_5

    :cond_0
    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    if-nez v8, :cond_1

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    const/4 v8, 0x1

    const/16 v9, 0x64

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(ZI)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    :cond_1
    :goto_1
    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconNeedDraw:Z

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    float-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v9, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v8, v0, v9, v1, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrow:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowDstRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v11, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    :goto_2
    return-void

    :pswitch_0
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    float-to-int v2, v8

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v8, v5

    float-to-int v3, v8

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    sub-float v9, v5, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v0, v8

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v1, v8

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v9

    cmpg-float v8, v5, v8

    if-gez v8, :cond_3

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v8, v5

    float-to-int v7, v8

    :goto_3
    int-to-float v8, v7

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v6, v8

    goto/16 :goto_0

    :cond_3
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    goto :goto_3

    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRightBackground:Landroid/graphics/Bitmap;

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mBackWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    mul-float/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v2, v8, v9

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    float-to-int v9, v9

    sub-int v3, v8, v9

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v0, v8, v9

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    sub-float v10, v5, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    sub-int v1, v8, v9

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v8, v8

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v8, v10

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    add-float/2addr v8, v5

    float-to-int v8, v8

    :goto_4
    sub-int v6, v9, v8

    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v7, v8

    goto/16 :goto_0

    :cond_4
    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v5

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    float-to-int v8, v8

    goto :goto_4

    :cond_5
    iget-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    const/16 v9, 0x32

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->startArrowAnimating(ZI)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mArrowShown:Z

    goto/16 :goto_1

    :cond_6
    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mCurrentY:F

    iget v11, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconHeight:I

    int-to-float v11, v11

    iget v12, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mIconScale:F

    mul-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v8, v6, v9, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v8, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/high16 v0, -0x3b860000    # -1000.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->invalidate()V

    return-void
.end method

.method setDisplayWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mDisplayWidth:I

    return-void
.end method

.method setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0xc8

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mNoneTaskIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->loadRecentTaskIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const v1, 0x3f95c28f    # 1.17f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFI)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    :cond_3
    return-void

    :cond_4
    iput-object v1, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mRecentTaskIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mReadyState:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    sget-object v1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_RECENT:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/fsgesture/GestureBackArrowView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->changeScale(FFI)V

    goto :goto_1
.end method
