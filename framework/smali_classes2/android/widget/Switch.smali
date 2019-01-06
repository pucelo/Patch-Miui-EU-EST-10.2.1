.class public Landroid/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Switch$1;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final MONOSPACE:I = 0x3

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final THUMB_ANIMATION_DURATION:I = 0xfa

.field private static final THUMB_POS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Landroid/widget/Switch;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_DRAGGING:I = 0x2

.field private static final TOUCH_MODE_IDLE:I


# instance fields
.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTrackTint:Z

.field private mHasTrackTintMode:Z

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOnLayout:Landroid/text/Layout;

.field private mPositionAnimator:Landroid/animation/ObjectAnimator;

.field private mShowText:Z

.field private mSplitTrack:Z

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextColors:Landroid/content/res/ColorStateList;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbTextPadding:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mThumbWidth:I

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackTintList:Landroid/content/res/ColorStateList;

.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Landroid/widget/Switch;)F
    .registers 2

    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic -wrap0(Landroid/widget/Switch;F)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Switch;->setThumbPosition(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a0

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    new-instance v0, Landroid/widget/Switch$1;

    const-string/jumbo v1, "thumbPos"

    invoke-direct {v0, v1}, Landroid/widget/Switch$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101043f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    new-instance v8, Landroid/text/TextPaint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    iput v9, v8, Landroid/text/TextPaint;->density:F

    iget-object v8, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    sget-object v8, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5f

    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_5f
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_6f

    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_6f
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    const/16 v8, 0xb

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Switch;->mShowText:Z

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mSwitchPadding:I

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Landroid/widget/Switch;->mSplitTrack:Z

    const/16 v8, 0x9

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_b4

    iput-object v4, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    :cond_b4
    const/16 v8, 0xa

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    iget-object v8, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v5, :cond_c9

    iput-object v5, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    :cond_c9
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v8, :cond_d1

    iget-boolean v8, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v8, :cond_d4

    :cond_d1
    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    :cond_d4
    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_e1

    iput-object v6, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    :cond_e1
    const/16 v8, 0xd

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v7, :cond_f6

    iput-object v7, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    :cond_f6
    iget-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v8, :cond_fe

    iget-boolean v8, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v8, :cond_101

    :cond_fe
    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    :cond_101
    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_10c

    invoke-virtual {p0, p1, v1}, Landroid/widget/Switch;->setSwitchTextAppearance(Landroid/content/Context;I)V

    :cond_10c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mTouchSlop:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v8

    iput v8, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    invoke-virtual {p0}, Landroid/widget/Switch;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    invoke-virtual {p0, v8}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method private animateThumbToCheckedState(Z)V
    .registers 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_24

    move v1, v2

    :goto_5
    int-to-float v0, v1

    sget-object v1, Landroid/widget/Switch;->THUMB_POS:Landroid/util/FloatProperty;

    new-array v4, v2, [F

    aput v0, v4, v3

    invoke-static {p0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    iget-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_24
    move v1, v3

    goto :goto_5
.end method

.method private applyThumbTint()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3b

    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3b
    return-void
.end method

.method private applyTrackTint()V
    .registers 3

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_3b

    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3b
    return-void
.end method

.method private cancelPositionAnimator()V
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_9
    return-void
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private getTargetCheckedState()Z
    .registers 3

    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private getThumbOffset()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Landroid/widget/Switch;->mThumbPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v1

    :goto_c
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    :cond_17
    iget v0, p0, Landroid/widget/Switch;->mThumbPosition:F

    goto :goto_c
.end method

.method private getThumbScrollRange()I
    .registers 5

    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2a

    iget-object v1, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_27

    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    :goto_15
    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iget v3, p0, Landroid/widget/Switch;->mThumbWidth:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v2, v3

    return v2

    :cond_27
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_15

    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method private hitThumb(FF)Z
    .registers 11

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    return v5

    :cond_6
    invoke-direct {p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v2

    iget-object v6, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v6, p0, Landroid/widget/Switch;->mSwitchTop:I

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v4, v6, v7

    iget v6, p0, Landroid/widget/Switch;->mSwitchLeft:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    sub-int v1, v6, v7

    iget v6, p0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v6, v1

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v3, v6, v7

    iget v6, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v7, p0, Landroid/widget/Switch;->mTouchSlop:I

    add-int v0, v6, v7

    int-to-float v6, v1

    cmpl-float v6, p1, v6

    if-lez v6, :cond_4a

    int-to-float v6, v3

    cmpg-float v6, p1, v6

    if-gez v6, :cond_4a

    int-to-float v6, v4

    cmpl-float v6, p2, v6

    if-lez v6, :cond_4a

    int-to-float v6, v0

    cmpg-float v6, p2, v6

    if-gez v6, :cond_4a

    const/4 v5, 0x1

    :cond_4a
    return v5
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .registers 10

    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod2;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/Switch;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v0, v2, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    :cond_2d
    move-object v1, p1

    goto :goto_a
.end method

.method private onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    :goto_8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p1}, Landroid/view/ViewStructure;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {p1, v2}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/ViewStructure;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b
.end method

.method private setSwitchTypefaceByIndex(II)V
    .registers 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_12

    :goto_4
    invoke-virtual {p0, v0, p2}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_8
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    :pswitch_b
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_4

    :pswitch_e
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method private setThumbPosition(F)V
    .registers 2

    iput p1, p0, Landroid/widget/Switch;->mThumbPosition:F

    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    iput v7, p0, Landroid/widget/Switch;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_44

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    :goto_f
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v0, :cond_52

    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v4, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroid/widget/Switch;->mMinFlingVelocity:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4d

    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_48

    cmpg-float v4, v3, v6

    if-gez v4, :cond_46

    :goto_37
    const/4 v1, 0x1

    :goto_38
    if-eq v1, v2, :cond_3d

    invoke-virtual {p0, v7}, Landroid/widget/Switch;->playSoundEffect(I)V

    :cond_3d
    invoke-virtual {p0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0, p1}, Landroid/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    return-void

    :cond_44
    const/4 v0, 0x0

    goto :goto_f

    :cond_46
    const/4 v1, 0x0

    goto :goto_38

    :cond_48
    cmpl-float v4, v3, v6

    if-lez v4, :cond_46

    goto :goto_37

    :cond_4d
    invoke-direct {p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    goto :goto_38

    :cond_52
    move v1, v2

    goto :goto_38
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/Switch;->mSwitchLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Switch;->mSwitchTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Switch;->mSwitchRight:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Switch;->mSwitchBottom:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getThumbOffset()I

    move-result v15

    add-int v7, v4, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_c7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v8

    :goto_28
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_97

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v15, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v15

    move v12, v4

    move v14, v6

    move v13, v5

    move v11, v3

    sget-object v15, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v8, v15, :cond_90

    iget v15, v8, Landroid/graphics/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_54

    iget v15, v8, Landroid/graphics/Insets;->left:I

    iget v0, v2, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int v12, v4, v15

    :cond_54
    iget v15, v8, Landroid/graphics/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_68

    iget v15, v8, Landroid/graphics/Insets;->top:I

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int v14, v6, v15

    :cond_68
    iget v15, v8, Landroid/graphics/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_7c

    iget v15, v8, Landroid/graphics/Insets;->right:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int v13, v5, v15

    :cond_7c
    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_90

    iget v15, v8, Landroid/graphics/Insets;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    sub-int v11, v3, v15

    :cond_90
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_97
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_c3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v7, v15

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Switch;->mThumbWidth:I

    add-int/2addr v15, v7

    iget v0, v2, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    add-int v10, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_c3

    invoke-virtual {v1, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_c3
    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_c7
    sget-object v8, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto/16 :goto_28
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_c
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_15
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 6

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    :cond_16
    iget-object v3, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v0, v4

    :cond_25
    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    :cond_2a
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    return v1

    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_20
    return v0
.end method

.method public getCompoundPaddingRight()I
    .registers 4

    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    return v1

    :cond_b
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    invoke-virtual {p0}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget v1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    :cond_20
    return v0
.end method

.method public getShowText()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/Switch;->mSplitTrack:Z

    return v0
.end method

.method public getSwitchMinWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    return v0
.end method

.method public getSwitchPadding()I
    .registers 2

    iget v0, p0, Landroid/widget/Switch;->mSwitchPadding:I

    return v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbTextPadding()I
    .registers 2

    iget v0, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_d
    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_16
    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    iput-object v1, p0, Landroid/widget/Switch;->mPositionAnimator:Landroid/animation/ObjectAnimator;

    :cond_29
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .registers 4

    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Landroid/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/Switch;->mergeDrawableStates([I[I)[I

    :cond_11
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 23

    invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_fc

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_14
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Switch;->mSwitchTop:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/Switch;->mSwitchBottom:I

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v12, v14, v18

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v11, v10, v18

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v17, :cond_74

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Switch;->mSplitTrack:Z

    move/from16 v18, v0

    if-eqz v18, :cond_101

    if-eqz v15, :cond_101

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Insets;->left:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Insets;->right:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    iput v0, v8, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_74
    :goto_74
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    if-eqz v15, :cond_7f

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7f
    invoke-direct/range {p0 .. p0}, Landroid/widget/Switch;->getTargetCheckedState()Z

    move-result v18

    if-eqz v18, :cond_10a

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    :goto_89
    if-eqz v13, :cond_f6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getDrawableState()[I

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V

    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v15, :cond_110

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v4, v18, v19

    :goto_ca
    div-int/lit8 v18, v4, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v7, v18, v19

    add-int v18, v12, v11

    div-int/lit8 v18, v18, 0x2

    invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    sub-int v16, v18, v19

    int-to-float v0, v7

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    :cond_f6
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_fc
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_14

    :cond_101
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_74

    :cond_10a
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto/16 :goto_89

    :cond_110
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Switch;->getWidth()I

    move-result v4

    goto :goto_ca
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v2, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    :goto_b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    iget-object v2, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_b

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1e
.end method

.method protected onLayout(ZIIII)V
    .registers 16

    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2e

    iget-object v7, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5a

    iget-object v8, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_14
    iget-object v8, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Insets;->left:I

    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v8, v0, Landroid/graphics/Insets;->right:I

    iget v9, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_2e
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_5e

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingLeft()I

    move-result v8

    add-int v4, v8, v1

    iget v8, p0, Landroid/widget/Switch;->mSwitchWidth:I

    add-int/2addr v8, v4

    sub-int/2addr v8, v1

    sub-int v5, v8, v2

    :goto_40
    invoke-virtual {p0}, Landroid/widget/Switch;->getGravity()I

    move-result v8

    and-int/lit8 v8, v8, 0x70

    sparse-switch v8, :sswitch_data_9c

    :sswitch_49
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v6

    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    :goto_51
    iput v4, p0, Landroid/widget/Switch;->mSwitchLeft:I

    iput v6, p0, Landroid/widget/Switch;->mSwitchTop:I

    iput v3, p0, Landroid/widget/Switch;->mSwitchBottom:I

    iput v5, p0, Landroid/widget/Switch;->mSwitchRight:I

    return-void

    :cond_5a
    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_14

    :cond_5e
    invoke-virtual {p0}, Landroid/widget/Switch;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v2

    iget v8, p0, Landroid/widget/Switch;->mSwitchWidth:I

    sub-int v8, v5, v8

    add-int/2addr v8, v1

    add-int v4, v8, v2

    goto :goto_40

    :sswitch_71
    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v9, v9, 0x2

    sub-int v6, v8, v9

    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    add-int v3, v6, v8

    goto :goto_51

    :sswitch_8c
    invoke-virtual {p0}, Landroid/widget/Switch;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Switch;->getPaddingBottom()I

    move-result v9

    sub-int v3, v8, v9

    iget v8, p0, Landroid/widget/Switch;->mSwitchHeight:I

    sub-int v6, v3, v8

    goto :goto_51

    nop

    :sswitch_data_9c
    .sparse-switch
        0x10 -> :sswitch_71
        0x30 -> :sswitch_49
        0x50 -> :sswitch_8c
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .registers 16

    iget-boolean v11, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v11, :cond_1c

    iget-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    if-nez v11, :cond_10

    iget-object v11, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    :cond_10
    iget-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    if-nez v11, :cond_1c

    iget-object v11, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-direct {p0, v11}, Landroid/widget/Switch;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    :cond_1c
    iget-object v3, p0, Landroid/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_a8

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    iget v12, v3, Landroid/graphics/Rect;->right:I

    sub-int v9, v11, v12

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    :goto_3a
    iget-boolean v11, p0, Landroid/widget/Switch;->mShowText:Z

    if-eqz v11, :cond_ab

    iget-object v11, p0, Landroid/widget/Switch;->mOnLayout:Landroid/text/Layout;

    invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I

    move-result v11

    iget-object v12, p0, Landroid/widget/Switch;->mOffLayout:Landroid/text/Layout;

    invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    mul-int/lit8 v12, v12, 0x2

    add-int v1, v11, v12

    :goto_54
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    iput v11, p0, Landroid/widget/Switch;->mThumbWidth:I

    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_ad

    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v11, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    :goto_69
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_83

    iget-object v11, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v11, v0, Landroid/graphics/Insets;->left:I

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v11, v0, Landroid/graphics/Insets;->right:I

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_83
    iget v11, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    iget v12, p0, Landroid/widget/Switch;->mThumbWidth:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    add-int/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v7, p0, Landroid/widget/Switch;->mSwitchWidth:I

    iput v6, p0, Landroid/widget/Switch;->mSwitchHeight:I

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v6, :cond_a7

    invoke-virtual {p0}, Landroid/widget/Switch;->getMeasuredWidthAndState()I

    move-result v11

    invoke-virtual {p0, v11, v6}, Landroid/widget/Switch;->setMeasuredDimension(II)V

    :cond_a7
    return-void

    :cond_a8
    const/4 v9, 0x0

    const/4 v8, 0x0

    goto :goto_3a

    :cond_ab
    const/4 v1, 0x0

    goto :goto_54

    :cond_ad
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v10, 0x0

    goto :goto_69
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    :goto_b
    if-eqz v0, :cond_14

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    goto :goto_b
.end method

.method public onProvideAutofillStructure(Landroid/view/ViewStructure;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    invoke-direct {p0, p1}, Landroid/widget/Switch;->onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public onProvideStructure(Landroid/view/ViewStructure;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onProvideStructure(Landroid/view/ViewStructure;)V

    invoke-direct {p0, p1}, Landroid/widget/Switch;->onProvideAutoFillStructureForAssistOrAutofill(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    iget-object v7, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_b4

    :cond_10
    :goto_10
    :pswitch_10
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7

    :pswitch_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0, v5, v6}, Landroid/widget/Switch;->hitThumb(FF)Z

    move-result v7

    if-eqz v7, :cond_10

    iput v8, p0, Landroid/widget/Switch;->mTouchMode:I

    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    iput v6, p0, Landroid/widget/Switch;->mTouchY:F

    goto :goto_10

    :pswitch_30
    iget v7, p0, Landroid/widget/Switch;->mTouchMode:I

    packed-switch v7, :pswitch_data_c0

    goto :goto_10

    :pswitch_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-gtz v7, :cond_5c

    iget v7, p0, Landroid/widget/Switch;->mTouchY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, p0, Landroid/widget/Switch;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_10

    :cond_5c
    iput v11, p0, Landroid/widget/Switch;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    iput v6, p0, Landroid/widget/Switch;->mTouchY:F

    return v8

    :pswitch_6a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-direct {p0}, Landroid/widget/Switch;->getThumbScrollRange()I

    move-result v4

    iget v7, p0, Landroid/widget/Switch;->mTouchX:F

    sub-float v3, v5, v7

    if-eqz v4, :cond_97

    int-to-float v7, v4

    div-float v1, v3, v7

    :goto_7b
    invoke-virtual {p0}, Landroid/widget/Switch;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_82

    neg-float v1, v1

    :cond_82
    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    add-float/2addr v7, v1

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v10, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    iget v7, p0, Landroid/widget/Switch;->mThumbPosition:F

    cmpl-float v7, v2, v7

    if-eqz v7, :cond_96

    iput v5, p0, Landroid/widget/Switch;->mTouchX:F

    invoke-direct {p0, v2}, Landroid/widget/Switch;->setThumbPosition(F)V

    :cond_96
    return v8

    :cond_97
    cmpl-float v7, v3, v10

    if-lez v7, :cond_9e

    move v7, v8

    :goto_9c
    int-to-float v1, v7

    goto :goto_7b

    :cond_9e
    const/4 v7, -0x1

    goto :goto_9c

    :pswitch_a0
    iget v7, p0, Landroid/widget/Switch;->mTouchMode:I

    if-ne v7, v11, :cond_ab

    invoke-direct {p0, p1}, Landroid/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v8

    :cond_ab
    iput v9, p0, Landroid/widget/Switch;->mTouchMode:I

    iget-object v7, p0, Landroid/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_10

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_15
        :pswitch_a0
        :pswitch_30
        :pswitch_a0
    .end packed-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_36
        :pswitch_6a
    .end packed-switch
.end method

.method public setChecked(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/Switch;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/Switch;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-direct {p0, p1}, Landroid/widget/Switch;->animateThumbToCheckedState(Z)V

    :goto_16
    return-void

    :cond_17
    invoke-direct {p0}, Landroid/widget/Switch;->cancelPositionAnimator()V

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    :goto_1d
    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/Switch;->setThumbPosition(F)V

    goto :goto_16

    :cond_22
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public setShowText(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/Switch;->mShowText:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Landroid/widget/Switch;->mShowText:Z

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setSplitTrack(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/Switch;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .registers 2

    iput p1, p0, Landroid/widget/Switch;->mSwitchMinWidth:I

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .registers 2

    iput p1, p0, Landroid/widget/Switch;->mSwitchPadding:I

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setSwitchTextAppearance(Landroid/content/Context;I)V
    .registers 15

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_55

    iput-object v2, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    :goto_13
    invoke-virtual {v1, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eqz v4, :cond_2d

    int-to-float v6, v4

    iget-object v7, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2d

    iget-object v6, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    :cond_2d
    invoke-virtual {v1, v10, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-direct {p0, v5, v3}, Landroid/widget/Switch;->setSwitchTypefaceByIndex(II)V

    const/16 v6, 0xb

    invoke-virtual {v1, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_5c

    new-instance v6, Landroid/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    iget-object v6, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    invoke-interface {v6, v10}, Landroid/text/method/TransformationMethod2;->setLengthChangesAllowed(Z)V

    :goto_51
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_55
    invoke-virtual {p0}, Landroid/widget/Switch;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Switch;->mTextColors:Landroid/content/res/ColorStateList;

    goto :goto_13

    :cond_5c
    iput-object v11, p0, Landroid/widget/Switch;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod2;

    goto :goto_51
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_13

    iget-object v0, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/Switch;->invalidate()V

    :cond_13
    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
    .registers 9

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_35

    if-nez p1, :cond_2c

    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    :goto_a
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :goto_13
    not-int v4, v1

    and-int v0, p2, v4

    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_1d

    const/4 v2, 0x1

    :cond_1d
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_33

    const/high16 v2, -0x41800000    # -0.25f

    :goto_28
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :goto_2b
    return-void

    :cond_2c
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_a

    :cond_31
    const/4 v1, 0x0

    goto :goto_13

    :cond_33
    move v2, v3

    goto :goto_28

    :cond_35
    iget-object v4, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v2, p0, Landroid/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    goto :goto_2b
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Switch;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/Switch;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object p1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .registers 2

    iput p1, p0, Landroid/widget/Switch;->mThumbTextPadding:I

    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/Switch;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasThumbTintMode:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyThumbTint()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object p1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_11

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/Switch;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTint:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/Switch;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Switch;->mHasTrackTintMode:Z

    invoke-direct {p0}, Landroid/widget/Switch;->applyTrackTint()V

    return-void
.end method

.method public toggle()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Landroid/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method
