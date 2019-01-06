.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mHasThumbTint:Z

.field private mHasThumbTintMode:Z

.field private mHasTickMarkTint:Z

.field private mHasTickMarkTintMode:Z

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mScaledTouchSlop:I

.field private mSplitTrack:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mThumbTintList:Landroid/content/res/ColorStateList;

.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTickMark:Landroid/graphics/drawable/Drawable;

.field private mTickMarkTintList:Landroid/content/res/ColorStateList;

.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mTouchDownX:F

.field mTouchProgressOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v3, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    iput v3, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    const/4 v6, 0x1

    iput v6, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sget-object v6, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    :cond_4e
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    :cond_5f
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsSeekBar;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_7f

    const/4 v6, 0x7

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v7}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    :cond_7f
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_90

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    :cond_90
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v5, :cond_d5

    sget-object v6, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v6, 0x3

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_c4
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    return-void

    :cond_d5
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    goto :goto_c4
.end method

.method private applyThumbTint()V
    .registers 3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_3b

    :cond_c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3b
    return-void
.end method

.method private applyTickMarkTint()V
    .registers 3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_3b

    :cond_c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3b
    return-void
.end method

.method private attemptClaimDrag()V
    .registers 3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    return-void
.end method

.method private getScale()F
    .registers 6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v0

    sub-int v2, v0, v1

    if-lez v2, :cond_15

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    :goto_14
    return v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private setHotspot(FF)V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_9
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .registers 22

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v13, p1, v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v1, v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sub-int/2addr v1, v11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v1, v13

    int-to-float v13, v1

    mul-float v13, v13, p3

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v10, v13

    const/high16 v13, -0x80000000

    move/from16 v0, p4

    if-ne v0, v13, :cond_68

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget v12, v7, Landroid/graphics/Rect;->top:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    :goto_31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v13

    if-eqz v13, :cond_6d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v13, :cond_6d

    sub-int v4, v1, v10

    :goto_3f
    add-int v8, v4, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsSeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_62

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int v5, v13, v14

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    add-int v13, v4, v5

    add-int v14, v12, v6

    add-int v15, v8, v5

    add-int v16, v3, v6

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_62
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void

    :cond_68
    move/from16 v12, p4

    add-int v3, p4, v9

    goto :goto_31

    :cond_6d
    move v4, v10

    goto :goto_3f
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->invalidate(Landroid/graphics/Rect;)V

    :cond_11
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v4

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v7, v4, v7

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v0, v7, v8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_5d

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mMirrorForRtl:Z

    if-eqz v7, :cond_5d

    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v7, v4, v7

    if-le v5, v7, :cond_4a

    const/4 v3, 0x0

    :goto_2e
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v8

    sub-int v2, v7, v8

    int-to-float v7, v2

    mul-float/2addr v7, v3

    add-float/2addr v1, v7

    int-to-float v7, v5

    int-to-float v8, v6

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsSeekBar;->setHotspot(FF)V

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    return-void

    :cond_4a
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v7, :cond_51

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2e

    :cond_51
    sub-int v7, v0, v5

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v3, v7, v8

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2e

    :cond_5d
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    if-ge v5, v7, :cond_63

    const/4 v3, 0x0

    goto :goto_2e

    :cond_63
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v7, v4, v7

    if-le v5, v7, :cond_6c

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2e

    :cond_6c
    iget v7, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v7, v5, v7

    int-to-float v7, v7

    int-to-float v8, v0

    div-float v3, v7, v8

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_2e
.end method

.method private updateThumbAndTrackPos(II)V
    .registers 14

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    sub-int v9, p2, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    sub-int v1, v9, v10

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v9, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v2, :cond_3e

    const/4 v3, 0x0

    :goto_17
    if-le v3, v6, :cond_43

    sub-int v9, v1, v3

    div-int/lit8 v0, v9, 0x2

    sub-int v9, v3, v6

    div-int/lit8 v9, v9, 0x2

    add-int v7, v0, v9

    move v4, v0

    :goto_24
    if-eqz v5, :cond_34

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int v8, v9, v10

    add-int v9, v7, v6

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_34
    if-eqz v2, :cond_3d

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v9

    invoke-direct {p0, p1, v2, v9, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3d
    return-void

    :cond_3e
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_17

    :cond_43
    sub-int v9, v1, v6

    div-int/lit8 v0, v9, 0x2

    move v7, v0

    sub-int v9, v6, v3

    div-int/lit8 v9, v9, 0x2

    add-int v4, v0, v9

    goto :goto_24
.end method


# virtual methods
.method canUserSetProgress()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isIndeterminate()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .registers 5

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1c
    return-void
.end method

.method protected drawTickMarks(Landroid/graphics/Canvas;)V
    .registers 13

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_61

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v9

    sub-int v0, v8, v9

    const/4 v8, 0x1

    if-le v0, v8, :cond_61

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ltz v7, :cond_5a

    div-int/lit8 v3, v7, 0x2

    :goto_21
    if-ltz v1, :cond_5c

    div-int/lit8 v2, v1, 0x2

    :goto_25
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    neg-int v9, v3

    neg-int v10, v2

    invoke-virtual {v8, v9, v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    int-to-float v9, v0

    div-float v6, v8, v9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    iget v8, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    :goto_4c
    if-gt v4, v0, :cond_5e

    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_5a
    const/4 v3, 0x1

    goto :goto_21

    :cond_5c
    const/4 v2, 0x1

    goto :goto_25

    :cond_5e
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_61
    return-void
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .registers 8

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3c

    iget-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    if-eqz v4, :cond_3c

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Insets;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_3b
    return-void

    :cond_3c
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawTickMarks(Landroid/graphics/Canvas;)V

    goto :goto_3b
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 6

    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1c

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4b

    const/16 v3, 0xff

    :goto_19
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1c
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_33
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4a

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4a
    return-void

    :cond_4b
    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_19
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyProgressIncrement()I
    .registers 2

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getSplitTrack()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .registers 2

    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_c
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_15
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->drawThumb(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v1

    if-le v0, v1, :cond_18

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_18
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_23

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_23
    return-void
.end method

.method onKeyChange()V
    .registers 1

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sparse-switch p1, :sswitch_data_28

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_11
    neg-int v0, v0

    :sswitch_12
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_19

    neg-int v0, v0

    :cond_19
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v2

    :sswitch_data_28
    .sparse-switch
        0x15 -> :sswitch_11
        0x16 -> :sswitch_12
        0x45 -> :sswitch_11
        0x46 -> :sswitch_12
        0x51 -> :sswitch_12
    .end sparse-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4d

    const/4 v3, 0x0

    :goto_a
    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Landroid/widget/AbsSeekBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_32
    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, p0, Landroid/widget/AbsSeekBar;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsSeekBar;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsSeekBar;->setMeasuredDimension(II)V
    :try_end_4b
    .catchall {:try_start_1 .. :try_end_4b} :catchall_54

    monitor-exit p0

    return-void

    :cond_4d
    :try_start_4d
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_54

    move-result v3

    goto :goto_a

    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onResolveDrawables(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_c
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->getScale()F

    move-result v2

    const/high16 v3, -0x80000000

    invoke-direct {p0, v1, v0, v2, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_17
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    :cond_d
    return v2

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_70

    :cond_15
    :goto_15
    const/4 v1, 0x1

    return v1

    :pswitch_17
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isInScrollingContainer()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_15

    :cond_24
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_15

    :pswitch_28
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_30

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_15

    :cond_30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_15

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->startDrag(Landroid/view/MotionEvent;)V

    goto :goto_15

    :pswitch_47
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_58

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :goto_54
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_15

    :cond_58
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_54

    :pswitch_62
    iget-boolean v1, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v1, :cond_6c

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setPressed(Z)V

    :cond_6c
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    goto :goto_15

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_17
        :pswitch_47
        :pswitch_28
        :pswitch_62
    .end packed-switch
.end method

.method onVisualProgressChanged(IF)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onVisualProgressChanged(IF)V

    const v1, 0x102000d

    if-ne p1, v1, :cond_18

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p2, v2}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    :cond_18
    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_10

    return v6

    :cond_10
    sparse-switch p1, :sswitch_data_68

    return v6

    :sswitch_14
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v3

    if-nez v3, :cond_1b

    return v6

    :cond_1b
    if-eqz p2, :cond_28

    const-string/jumbo v3, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_29

    :cond_28
    return v6

    :cond_29
    const-string/jumbo v3, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v3, v2

    invoke-virtual {p0, v3, v5, v5}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v3

    return v3

    :sswitch_36
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v3

    if-nez v3, :cond_3d

    return v6

    :cond_3d
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v4

    sub-int v1, v3, v4

    int-to-float v3, v1

    const/high16 v4, 0x41a00000    # 20.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x2000

    if-ne p1, v3, :cond_58

    neg-int v0, v0

    :cond_58
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getProgress()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3, v5, v5}, Landroid/widget/AbsSeekBar;->setProgressInternal(IZZ)Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    return v5

    :cond_67
    return v6

    :sswitch_data_68
    .sparse-switch
        0x1000 -> :sswitch_36
        0x2000 -> :sswitch_36
        0x102003d -> :sswitch_14
    .end sparse-switch
.end method

.method public setKeyProgressIncrement(I)V
    .registers 2

    if-gez p1, :cond_3

    neg-int p1, p1

    :cond_3
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v2

    sub-int v0, v1, v2

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_1a

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2a

    :cond_1a
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMin(I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getMin()I

    move-result v2

    sub-int v0, v1, v2

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_1a

    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2a

    :cond_1a
    int-to-float v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSplitTrack(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSplitTrack:Z

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_6b

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    :goto_f
    if-eqz p1, :cond_46

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_21
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_43

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_46

    :cond_43
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->requestLayout()V

    :cond_46
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    if-eqz v0, :cond_6a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbAndTrackPos(II)V

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_6a
    return-void

    :cond_6b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setThumbOffset(I)V
    .registers 2

    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasThumbTintMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyThumbTint()V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_28

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_25
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    :cond_28
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->invalidate()V

    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTint:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mHasTickMarkTintMode:Z

    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->applyTickMarkTint()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mTickMark:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_9
.end method
