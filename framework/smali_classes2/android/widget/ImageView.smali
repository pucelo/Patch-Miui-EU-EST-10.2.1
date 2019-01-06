.class public Landroid/widget/ImageView;
.super Landroid/view/View;
.source "ImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ImageView$ImageDrawableCallback;,
        Landroid/widget/ImageView$ScaleType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageView"

.field private static sCompatAdjustViewBounds:Z

.field private static sCompatDone:Z

.field private static sCompatDrawableVisibilityDispatch:Z

.field private static sCompatUseCorrectStreamDensity:Z

.field private static final sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private mAdjustViewBounds:Z

.field private mAlpha:I

.field private mBaseline:I

.field private mBaselineAlignBottom:Z

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMod:Z

.field private mCropToPadding:Z

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableTintList:Landroid/content/res/ColorStateList;

.field private mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mDrawableWidth:I

.field private mHasColorFilter:Z

.field private mHasDrawableTint:Z

.field private mHasDrawableTintMode:Z

.field private mHaveFrame:Z

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMergeState:Z

.field private mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mResource:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mState:[I

.field private final mTempDst:Landroid/graphics/RectF;

.field private final mTempSrc:Landroid/graphics/RectF;

.field private mUri:Landroid/net/Uri;

.field private final mViewAlphaScale:I

.field private mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static synthetic -set0(Landroid/widget/ImageView;I)I
    .registers 2

    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/ImageView;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    new-array v0, v7, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    aput-object v1, v0, v6

    sput-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const v0, 0x7fffffff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Landroid/widget/ImageView;->mResource:I

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    iput-boolean v1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    iput v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    iput v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    iput-object v2, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ImageView;->mAlpha:I

    const/16 v0, 0x100

    iput v0, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    iput-object v2, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean v1, p0, Landroid/widget/ImageView;->mMergeState:Z

    iput v1, p0, Landroid/widget/ImageView;->mLevel:I

    iput-object v2, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ImageView;->mBaseline:I

    iput-boolean v1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15

    const v9, 0x7fffffff

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    iput-boolean v6, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    iput-boolean v6, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    iput v9, p0, Landroid/widget/ImageView;->mMaxWidth:I

    iput v9, p0, Landroid/widget/ImageView;->mMaxHeight:I

    iput-object v5, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    const/16 v4, 0xff

    iput v4, p0, Landroid/widget/ImageView;->mAlpha:I

    const/16 v4, 0x100

    iput v4, p0, Landroid/widget/ImageView;->mViewAlphaScale:I

    iput-boolean v6, p0, Landroid/widget/ImageView;->mColorMod:Z

    iput-object v5, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    iput-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    iput-boolean v6, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    iput-object v5, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean v6, p0, Landroid/widget/ImageView;->mMergeState:Z

    iput v6, p0, Landroid/widget/ImageView;->mLevel:I

    iput-object v5, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iput v7, p0, Landroid/widget/ImageView;->mBaseline:I

    iput-boolean v6, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->initImageView()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImportantForAutofill()I

    move-result v4

    if-nez v4, :cond_55

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImportantForAutofill(I)V

    :cond_55
    sget-object v4, Lcom/android/internal/R$styleable;->ImageView:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_64
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    const/16 v4, 0x8

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/widget/ImageView;->mBaseline:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxWidth(I)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setMaxHeight(I)V

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-ltz v3, :cond_98

    sget-object v4, Landroid/widget/ImageView;->sScaleTypeArray:[Landroid/widget/ImageView$ScaleType;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_98
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_ae

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    :cond_ae
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c6

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v8, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    :cond_c6
    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    const/16 v4, 0xa

    const/16 v5, 0xff

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/16 v4, 0xff

    if-eq v1, v4, :cond_d8

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    :cond_d8
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private applyColorMod()V
    .registers 3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2d

    iget-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1b
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_2d
    return-void
.end method

.method private applyImageTint()V
    .registers 3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_3b

    :cond_c
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1f
    iget-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2a
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3b
    return-void
.end method

.method private configureBounds()V
    .registers 15

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_f

    iget-boolean v8, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_10

    :cond_f
    return-void

    :cond_10
    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iget v9, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int v7, v8, v9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/ImageView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int v6, v8, v9

    if-ltz v1, :cond_2e

    if-ne v7, v1, :cond_41

    :cond_2e
    if-ltz v0, :cond_32

    if-ne v6, v0, :cond_3f

    :cond_32
    const/4 v4, 0x1

    :goto_33
    if-lez v1, :cond_37

    if-gtz v0, :cond_43

    :cond_37
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    :goto_3e
    return-void

    :cond_3f
    const/4 v4, 0x0

    goto :goto_33

    :cond_41
    const/4 v4, 0x0

    goto :goto_33

    :cond_43
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v8, v9, :cond_37

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_64

    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_5f

    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_3e

    :cond_5f
    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_3e

    :cond_64
    if-eqz v4, :cond_69

    iput-object v13, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    goto :goto_3e

    :cond_69
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_8b

    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    sub-int v9, v7, v1

    int-to-float v9, v9

    mul-float/2addr v9, v11

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    sub-int v10, v6, v0

    int-to-float v10, v10

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_3e

    :cond_8b
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_c7

    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    const/4 v3, 0x0

    mul-int v8, v1, v6

    mul-int v9, v7, v0

    if-le v8, v9, :cond_bc

    int-to-float v8, v6

    int-to-float v9, v0

    div-float v5, v8, v9

    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v2, v8, v11

    :goto_a7
    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_3e

    :cond_bc
    int-to-float v8, v7

    int-to-float v9, v1

    div-float v5, v8, v9

    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float v3, v8, v11

    goto :goto_a7

    :cond_c7
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iget-object v9, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-ne v8, v9, :cond_102

    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-gt v1, v7, :cond_f7

    if-gt v0, v6, :cond_f7

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_d7
    int-to-float v8, v7

    int-to-float v9, v1

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v2, v8

    int-to-float v8, v6

    int-to-float v9, v0

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v3, v8

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_3e

    :cond_f7
    int-to-float v8, v7

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v6

    int-to-float v10, v0

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_d7

    :cond_102
    iget-object v8, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    int-to-float v9, v1

    int-to-float v10, v0

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    int-to-float v9, v7

    int-to-float v10, v6

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    iput-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v9, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v10, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    iget-object v11, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-static {v11}, Landroid/widget/ImageView;->scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_3e
.end method

.method private getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "android.resource"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    :try_start_e
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v2

    iget-object v5, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v2, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    iget-object v8, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_27

    move-result-object v5

    return-object v5

    :catch_27
    move-exception v1

    const-string/jumbo v5, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_42
    :goto_42
    return-object v6

    :cond_43
    const-string/jumbo v5, "content"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_55

    const-string/jumbo v5, "file"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f3

    :cond_55
    const/4 v4, 0x0

    :try_start_56
    iget-object v5, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    sget-boolean v5, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    if-eqz v5, :cond_74

    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    :goto_68
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v4, v8}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6d} :catch_92
    .catchall {:try_start_56 .. :try_end_6d} :catchall_d0

    move-result-object v5

    if-eqz v4, :cond_73

    :try_start_70
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_76

    :cond_73
    :goto_73
    return-object v5

    :cond_74
    move-object v5, v6

    goto :goto_68

    :catch_76
    move-exception v0

    const-string/jumbo v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_73

    :catch_92
    move-exception v1

    :try_start_93
    const-string/jumbo v5, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to open content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catchall {:try_start_93 .. :try_end_ad} :catchall_d0

    if-eqz v4, :cond_42

    :try_start_af
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_42

    :catch_b3
    move-exception v0

    const-string/jumbo v5, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_42

    :catchall_d0
    move-exception v5

    if-eqz v4, :cond_d6

    :try_start_d3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    :cond_d6
    :goto_d6
    throw v5

    :catch_d7
    move-exception v0

    const-string/jumbo v6, "ImageView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to close content: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6

    :cond_f3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5
.end method

.method private initImageView()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-boolean v1, Landroid/widget/ImageView;->sCompatDone:Z

    if-nez v1, :cond_30

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_31

    move v1, v2

    :goto_1e
    sput-boolean v1, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    const/16 v1, 0x17

    if-le v0, v1, :cond_33

    move v1, v2

    :goto_25
    sput-boolean v1, Landroid/widget/ImageView;->sCompatUseCorrectStreamDensity:Z

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2c

    move v3, v2

    :cond_2c
    sput-boolean v3, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    sput-boolean v2, Landroid/widget/ImageView;->sCompatDone:Z

    :cond_30
    return-void

    :cond_31
    move v1, v3

    goto :goto_1e

    :cond_33
    move v1, v3

    goto :goto_25
.end method

.method private isFilledByImage()Z
    .registers 9

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    return v5

    :cond_8
    iget-object v6, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_2f

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-gtz v6, :cond_2d

    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-gtz v6, :cond_2d

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2d

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2b

    :goto_2a
    return v4

    :cond_2b
    move v4, v5

    goto :goto_2a

    :cond_2d
    move v4, v5

    goto :goto_2a

    :cond_2f
    invoke-virtual {v3}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v6

    if-eqz v6, :cond_66

    iget-object v2, p0, Landroid/widget/ImageView;->mTempSrc:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/widget/ImageView;->mTempDst:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget v6, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_64

    iget v6, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_64

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_64

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_62

    :goto_61
    return v4

    :cond_62
    move v4, v5

    goto :goto_61

    :cond_64
    move v4, v5

    goto :goto_61

    :cond_66
    return v5
.end method

.method private resizeFromDrawable()V
    .registers 5

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gez v2, :cond_c

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    :cond_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gez v1, :cond_14

    iget v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    :cond_14
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v2, v3, :cond_1c

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v1, v3, :cond_23

    :cond_1c
    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iput v1, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_23
    return-void
.end method

.method private resolveAdjustedSize(III)I
    .registers 8

    move v0, p1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v1, :sswitch_data_1e

    :goto_c
    return v0

    :sswitch_d
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_c

    :sswitch_12
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_c

    :sswitch_1b
    move v0, v2

    goto :goto_c

    nop

    :sswitch_data_1e
    .sparse-switch
        -0x80000000 -> :sswitch_12
        0x0 -> :sswitch_d
        0x40000000 -> :sswitch_1b
    .end sparse-switch
.end method

.method private resolveUri()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-nez v2, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    if-eqz v2, :cond_3f

    :try_start_13
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1f

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-direct {p0, v0}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catch_1f
    move-exception v1

    const-string/jumbo v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/widget/ImageView;->mResource:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v6, p0, Landroid/widget/ImageView;->mResource:I

    goto :goto_1b

    :cond_3f
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string/jumbo v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resolveUri failed on bad bitmap uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    goto :goto_1b

    :cond_6a
    return-void
.end method

.method private static scaleTypeToScaleToFit(Landroid/widget/ImageView$ScaleType;)Landroid/graphics/Matrix$ScaleToFit;
    .registers 3

    sget-object v0, Landroid/widget/ImageView;->sS2FArray:[Landroid/graphics/Matrix$ScaleToFit;

    iget v1, p0, Landroid/widget/ImageView$ScaleType;->nativeInt:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eq p1, v2, :cond_10

    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_10
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, p1, :cond_8d

    const/4 v0, 0x1

    :goto_1a
    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-boolean v2, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-nez v2, :cond_37

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_37

    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_37
    iput-object p1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_a4

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/graphics/improve/SuperResolution;->getInstance(Landroid/content/Context;)Landroid/graphics/improve/SuperResolution;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, p0}, Landroid/graphics/improve/SuperResolution;->improveBitmapIfNeeded(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5d
    if-eqz v0, :cond_63

    sget-boolean v2, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v2, :cond_72

    :cond_63
    sget-boolean v2, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v2, :cond_91

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8f

    const/4 v1, 0x1

    :goto_6e
    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_72
    iget v2, p0, Landroid/widget/ImageView;->mLevel:I

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    :goto_8c
    return-void

    :cond_8d
    const/4 v0, 0x0

    goto :goto_1a

    :cond_8f
    const/4 v1, 0x0

    goto :goto_6e

    :cond_91
    invoke-virtual {p0}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_a2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_a2

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    goto :goto_6e

    :cond_a2
    const/4 v1, 0x0

    goto :goto_6e

    :cond_a4
    iput v5, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    iput v5, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    goto :goto_8c
.end method


# virtual methods
.method public animateTransform(Landroid/graphics/Matrix;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    return-void

    :cond_6
    if-nez p1, :cond_19

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_15
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_19
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_2d

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    :cond_2d
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_15
.end method

.method public final clearColorFilter()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_c
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "layout:baseline"

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBaseline()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdjustViewBounds()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    return v0
.end method

.method public getBaseline()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation

    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_9
    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    return v0
.end method

.method public getBaselineAlignBottom()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 2

    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getCropToPadding()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_9
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageAlpha()I
    .registers 2

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    return v0
.end method

.method public getImageMatrix()Landroid/graphics/Matrix;
    .registers 3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Matrix;

    sget-object v1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0

    :cond_c
    iget-object v0, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getImageTintList()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getMaxHeight()I
    .registers 2

    iget v0, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .registers 2

    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v2, :cond_21

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_16

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1d

    :cond_16
    iput v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iput v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    :cond_1d
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :goto_20
    return-void

    :cond_21
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_20
.end method

.method public isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .registers 5

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    :goto_16
    invoke-super {p0, p1, p2}, Landroid/view/View;->isDefaultFocusHighlightNeeded(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_16

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public isOpaque()Z
    .registers 3

    invoke-super {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_28

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    mul-int/lit16 v0, v0, 0x100

    shr-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Landroid/widget/ImageView;->isFilledByImage()Z

    move-result v0

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25

    :cond_28
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_c
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_18

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_18
    return-void

    :cond_19
    move v0, v1

    goto :goto_15
.end method

.method public onCreateDrawableState(I)[I
    .registers 4

    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    if-nez v0, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0

    :cond_9
    iget-boolean v0, p0, Landroid/widget/ImageView;->mMergeState:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    return-object v0

    :cond_10
    iget-object v0, p0, Landroid/widget/ImageView;->mState:[I

    array-length v0, v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ImageView;->mState:[I

    invoke-static {v0, v1}, Landroid/widget/ImageView;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_11
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_8

    return-void

    :cond_8
    iget v3, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-eqz v3, :cond_10

    iget v3, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-nez v3, :cond_11

    :cond_10
    return-void

    :cond_11
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-nez v3, :cond_23

    iget v3, p0, Landroid/widget/ImageView;->mPaddingTop:I

    if-nez v3, :cond_23

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    if-nez v3, :cond_23

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_22
    return-void

    :cond_23
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eqz v3, :cond_4d

    iget v1, p0, Landroid/widget/ImageView;->mScrollX:I

    iget v2, p0, Landroid/widget/ImageView;->mScrollY:I

    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    add-int/2addr v3, v1

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    add-int/2addr v4, v2

    iget v5, p0, Landroid/widget/ImageView;->mRight:I

    add-int/2addr v5, v1

    iget v6, p0, Landroid/widget/ImageView;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mPaddingRight:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/ImageView;->mBottom:I

    add-int/2addr v6, v2

    iget v7, p0, Landroid/widget/ImageView;->mTop:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/ImageView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4d
    iget v3, p0, Landroid/widget/ImageView;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/ImageView;->mPaddingTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Landroid/widget/ImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_5f
    iget-object v3, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_22
.end method

.method protected onMeasure(II)V
    .registers 29

    invoke-direct/range {p0 .. p0}, Landroid/widget/ImageView;->resolveUri()V

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    if-nez v21, :cond_10a

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableWidth:I

    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/ImageView;->mDrawableHeight:I

    const/4 v7, 0x0

    const/16 v18, 0x0

    :cond_2b
    :goto_2b
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/ImageView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/ImageView;->mPaddingRight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/ImageView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/ImageView;->mPaddingBottom:I

    if-nez v17, :cond_3f

    if-eqz v16, :cond_147

    :cond_3f
    add-int v21, v18, v13

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    add-int v21, v7, v15

    add-int v21, v21, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    const/16 v21, 0x0

    cmpl-float v21, v5, v21

    if-eqz v21, :cond_102

    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-int v22, v8, v15

    sub-int v22, v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v4, v21, v22

    sub-float v21, v4, v5

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v21, v22, v24

    if-lez v21, :cond_102

    const/4 v6, 0x0

    if-eqz v17, :cond_cf

    sub-int v21, v8, v15

    sub-int v21, v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v13

    add-int v11, v21, v14

    if-nez v16, :cond_c8

    sget-boolean v21, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_c8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    invoke-direct {v0, v11, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v19

    :cond_c8
    move/from16 v0, v19

    if-gt v11, v0, :cond_cf

    move/from16 v19, v11

    const/4 v6, 0x1

    :cond_cf
    if-nez v6, :cond_102

    if-eqz v16, :cond_102

    sub-int v21, v19, v13

    sub-int v21, v21, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v21, v21, v5

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v15

    add-int v10, v21, v12

    if-nez v17, :cond_ff

    sget-boolean v21, Landroid/widget/ImageView;->sCompatAdjustViewBounds:Z

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_ff

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mMaxHeight:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v10, v1, v2}, Landroid/widget/ImageView;->resolveAdjustedSize(III)I

    move-result v8

    :cond_ff
    if-gt v10, v8, :cond_102

    move v8, v10

    :cond_102
    :goto_102
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/widget/ImageView;->setMeasuredDimension(II)V

    return-void

    :cond_10a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ImageView;->mDrawableWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-gtz v18, :cond_118

    const/16 v18, 0x1

    :cond_118
    if-gtz v7, :cond_11b

    const/4 v7, 0x1

    :cond_11b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2b

    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_141

    const/16 v17, 0x1

    :goto_12d
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v9, v0, :cond_144

    const/16 v16, 0x1

    :goto_135
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v7

    move/from16 v22, v0

    div-float v5, v21, v22

    goto/16 :goto_2b

    :cond_141
    const/16 v17, 0x0

    goto :goto_12d

    :cond_144
    const/16 v16, 0x0

    goto :goto_135

    :cond_147
    add-int v21, v13, v14

    add-int v18, v18, v21

    add-int v21, v15, v12

    add-int v7, v7, v21

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumWidth()I

    move-result v21

    move/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getSuggestedMinimumHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v19

    const/16 v21, 0x0

    move/from16 v0, p2

    move/from16 v1, v21

    invoke-static {v7, v0, v1}, Landroid/widget/ImageView;->resolveSizeAndState(III)I

    move-result v8

    goto :goto_102
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_c
    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_13
    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/ImageView;->mAdjustViewBounds:Z

    if-eqz p1, :cond_9

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_9
    return-void
.end method

.method public setAlpha(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    iget v0, p0, Landroid/widget/ImageView;->mAlpha:I

    if-eq v0, p1, :cond_11

    iput p1, p0, Landroid/widget/ImageView;->mAlpha:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_11
    return-void
.end method

.method public setBaseline(I)V
    .registers 3

    iget v0, p0, Landroid/widget/ImageView;->mBaseline:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/ImageView;->mBaseline:I

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setBaselineAlignBottom(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Landroid/widget/ImageView;->mBaselineAlignBottom:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_9
    return-void
.end method

.method public final setColorFilter(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_11

    iput-object p1, p0, Landroid/widget/ImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHasColorFilter:Z

    iput-boolean v1, p0, Landroid/widget/ImageView;->mColorMod:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_11
    return-void
.end method

.method public setCropToPadding(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    if-eq v0, p1, :cond_c

    iput-boolean p1, p0, Landroid/widget/ImageView;->mCropToPadding:Z

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_c
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ImageView;->mHaveFrame:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    return v0
.end method

.method public setImageAlpha(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(I)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1a

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :goto_14
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1a
    iget-object v0, p0, Landroid/widget/ImageView;->mRecycleableBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_1f

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/ImageView;->mResource:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0, p1}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_19

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1c

    :cond_19
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1c
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1f
    return-void
.end method

.method public setImageIcon(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageIconAsync"
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_7

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_7
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;)Ljava/lang/Runnable;
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/ImageView$ImageDrawableCallback;

    if-nez p1, :cond_b

    move-object v0, v1

    :goto_6
    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v2

    :cond_b
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6
.end method

.method public setImageLevel(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ImageView;->mLevel:I

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_e
    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p1, 0x0

    :cond_9
    if-nez p1, :cond_15

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_21

    :cond_15
    if-eqz p1, :cond_2c

    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2c

    :cond_21
    iget-object v0, p0, Landroid/widget/ImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-direct {p0}, Landroid/widget/ImageView;->configureBounds()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2c
    return-void
.end method

.method public setImageResource(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageResourceAsync"
    .end annotation

    const/4 v2, 0x0

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0, v2}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p1, p0, Landroid/widget/ImageView;->mResource:I

    iput-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_17

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_1a

    :cond_17
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_1a
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setImageResourceAsync(I)Ljava/lang/Runnable;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_12

    move-result-object v0

    :cond_b
    :goto_b
    new-instance v2, Landroid/widget/ImageView$ImageDrawableCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3, p1}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v2

    :catch_12
    move-exception v1

    const-string/jumbo v2, "ImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    goto :goto_b
.end method

.method public setImageState([IZ)V
    .registers 4

    iput-object p1, p0, Landroid/widget/ImageView;->mState:[I

    iput-boolean p2, p0, Landroid/widget/ImageView;->mMergeState:Z

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/widget/ImageView;->refreshDrawableState()V

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    :cond_e
    return-void
.end method

.method public setImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTint:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    return-void
.end method

.method public setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/ImageView;->mDrawableTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mHasDrawableTintMode:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyImageTint()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .registers 7
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setImageURIAsync"
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v2, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v2, :cond_10

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v2, p1, :cond_2c

    if-eqz p1, :cond_10

    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_2d

    :cond_10
    :goto_10
    invoke-direct {p0, v3}, Landroid/widget/ImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Landroid/widget/ImageView;->mResource:I

    iput-object p1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    iget v1, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    iget v0, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    invoke-direct {p0}, Landroid/widget/ImageView;->resolveUri()V

    iget v2, p0, Landroid/widget/ImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_26

    iget v2, p0, Landroid/widget/ImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_29

    :cond_26
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_29
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_2c
    return-void

    :cond_2d
    iget-object v2, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c

    goto :goto_10
.end method

.method public setImageURIAsync(Landroid/net/Uri;)Ljava/lang/Runnable;
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v1, p0, Landroid/widget/ImageView;->mResource:I

    if-nez v1, :cond_10

    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-eq v1, p1, :cond_26

    if-eqz p1, :cond_10

    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_1c

    :cond_10
    if-nez p1, :cond_27

    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_16

    const/4 p1, 0x0

    :cond_16
    new-instance v1, Landroid/widget/ImageView$ImageDrawableCallback;

    invoke-direct {v1, p0, v0, p1, v3}, Landroid/widget/ImageView$ImageDrawableCallback;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;I)V

    return-object v1

    :cond_1c
    iget-object v1, p0, Landroid/widget/ImageView;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_10

    :cond_26
    return-object v2

    :cond_27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;->getDrawableFromUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_13
.end method

.method public setMaxHeight(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ImageView;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/ImageView;->mMaxWidth:I

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 4

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_1e

    iput-object p1, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v0, p0, Landroid/widget/ImageView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setWillNotCacheDrawing(Z)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public setSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    invoke-direct {p0}, Landroid/widget/ImageView;->resizeFromDrawable()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    sget-boolean v0, Landroid/widget/ImageView;->sCompatDrawableVisibilityDispatch:Z

    if-eqz v0, :cond_14

    iget-object v2, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_14
    return-void

    :cond_15
    move v0, v1

    goto :goto_11
.end method

.method public final setXfermode(Landroid/graphics/Xfermode;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    if-eq v0, p1, :cond_f

    iput-object p1, p0, Landroid/widget/ImageView;->mXfermode:Landroid/graphics/Xfermode;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ImageView;->mColorMod:Z

    invoke-direct {p0}, Landroid/widget/ImageView;->applyColorMod()V

    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_f
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/ImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_9

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_8
.end method
