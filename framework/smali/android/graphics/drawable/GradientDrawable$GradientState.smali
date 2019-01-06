.class final Landroid/graphics/drawable/GradientDrawable$GradientState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/GradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GradientState"
.end annotation


# instance fields
.field public mAngle:I

.field mAttrCorners:[I

.field mAttrGradient:[I

.field mAttrPadding:[I

.field mAttrSize:[I

.field mAttrSolid:[I

.field mAttrStroke:[I

.field mCenterX:F

.field mCenterY:F

.field public mChangingConfigurations:I

.field mDensity:I

.field public mDither:Z

.field public mGradient:I

.field public mGradientColors:[I

.field mGradientRadius:F

.field mGradientRadiusType:I

.field public mHeight:I

.field public mInnerRadius:I

.field public mInnerRadiusRatio:F

.field mOpaqueOverBounds:Z

.field mOpaqueOverShape:Z

.field public mOpticalInsets:Landroid/graphics/Insets;

.field public mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

.field public mPadding:Landroid/graphics/Rect;

.field public mPositions:[F

.field public mRadius:F

.field public mRadiusArray:[F

.field public mShape:I

.field public mSolidColors:Landroid/content/res/ColorStateList;

.field public mStrokeColors:Landroid/content/res/ColorStateList;

.field public mStrokeDashGap:F

.field public mStrokeDashWidth:F

.field public mStrokeWidth:I

.field public mTempColors:[I

.field public mTempPositions:[F

.field mThemeAttrs:[I

.field public mThickness:I

.field public mThicknessRatio:F

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mUseLevel:Z

.field mUseLevelForShape:Z

.field public mWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/graphics/drawable/GradientDrawable$GradientState;)V
    .registers 1

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V
    .registers 8

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v0, :cond_6e

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    :cond_6e
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    if-eqz v0, :cond_7c

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPositions:[F

    :cond_7c
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v0, :cond_9e

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    :cond_9e
    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v0, :cond_ab

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    :cond_ab
    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iget-boolean v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    iget-object v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p2, v0}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v1, :cond_124

    iget v0, p1, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    :cond_124
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V
    .registers 8

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAngle:I

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadiusRatio:F

    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThicknessRatio:F

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    iput v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDither:Z

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    iput v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mUseLevelForShape:Z

    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOrientation:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable$GradientState;->setGradientColors([I)V

    return-void
.end method

.method private applyDensityScaling(II)V
    .registers 14

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    if-lez v4, :cond_11

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mInnerRadius:I

    :cond_11
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    if-lez v4, :cond_1d

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThickness:I

    :cond_1d
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    sget-object v5, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-eq v4, v5, :cond_49

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->left:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v1

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v3

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v2

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpticalInsets:Landroid/graphics/Insets;

    :cond_49
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    if-eqz v4, :cond_7d

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, p1, p2, v7}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    :cond_7d
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_8b

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    :cond_8b
    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-eqz v4, :cond_c7

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v7

    float-to-int v5, v5

    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v6

    float-to-int v5, v5

    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v6

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v9

    float-to-int v5, v5

    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v9

    iget-object v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    iget-object v5, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    aget v5, v5, v10

    float-to-int v5, v5

    invoke-static {v5, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v10

    :cond_c7
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    if-lez v4, :cond_d3

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    :cond_d3
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_e1

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    :cond_e1
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_ef

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    :cond_ef
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    if-nez v4, :cond_fb

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    invoke-static {v4, p1, p2}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(FII)F

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    :cond_fb
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    if-lez v4, :cond_107

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    :cond_107
    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    if-lez v4, :cond_113

    iget v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    invoke-static {v4, p1, p2, v6}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    :cond_113
    return-void
.end method

.method private computeOpacity()V
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    iput-boolean v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-eqz v3, :cond_1e

    const/4 v0, 0x0

    :goto_b
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1e

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    aget v3, v3, v0

    invoke-static {v3}, Landroid/graphics/drawable/GradientDrawable;->isOpaque(I)Z

    move-result v3

    if-nez v3, :cond_1b

    return-void

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1e
    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    if-nez v3, :cond_27

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_27

    return-void

    :cond_27
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverShape:Z

    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    if-nez v3, :cond_3d

    iget v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3d

    iget-object v3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez v3, :cond_3b

    :goto_38
    iput-boolean v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mOpaqueOverBounds:Z

    return-void

    :cond_3b
    move v1, v2

    goto :goto_38

    :cond_3d
    move v1, v2

    goto :goto_38
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mThemeAttrs:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSize:[I

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrGradient:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrSolid:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrStroke:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrCorners:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mAttrPadding:[I

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_2a
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_36

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_36
    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_42

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_42
    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    goto :goto_9
.end method

.method public getChangingConfigurations()I
    .registers 4

    const/4 v1, 0x0

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_d
    or-int/2addr v2, v0

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_18
    or-int/2addr v0, v2

    iget-object v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_23

    iget-object v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    :cond_23
    or-int/2addr v0, v1

    return v0

    :cond_25
    move v0, v1

    goto :goto_d

    :cond_27
    move v0, v1

    goto :goto_18
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 6

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-static {p1, v2}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v0

    iget v2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v0, v2, :cond_16

    new-instance v1, Landroid/graphics/drawable/GradientDrawable$GradientState;

    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;)V

    :goto_f
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, p1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$GradientState;Landroid/content/res/Resources;Landroid/graphics/drawable/GradientDrawable;)V

    return-object v2

    :cond_16
    move-object v1, p0

    goto :goto_f
.end method

.method public setCornerRadii([F)V
    .registers 3

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    if-nez p1, :cond_7

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    :cond_7
    return-void
.end method

.method public setCornerRadius(F)V
    .registers 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    const/4 p1, 0x0

    :cond_6
    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadius:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mRadiusArray:[F

    return-void
.end method

.method public final setDensity(I)V
    .registers 4

    iget v1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    if-eq v1, p1, :cond_b

    iget v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mDensity:I

    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/GradientDrawable$GradientState;->applyDensityScaling(II)V

    :cond_b
    return-void
.end method

.method public setGradientCenter(FF)V
    .registers 3

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterX:F

    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mCenterY:F

    return-void
.end method

.method public setGradientColors([I)V
    .registers 3

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setGradientRadius(FI)V
    .registers 3

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadius:F

    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientRadiusType:I

    return-void
.end method

.method public setGradientType(I)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradient:I

    return-void
.end method

.method public setShape(I)V
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mShape:I

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setSize(II)V
    .registers 3

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mWidth:I

    iput p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mHeight:I

    return-void
.end method

.method public setSolidColors(Landroid/content/res/ColorStateList;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mGradientColors:[I

    iput-object p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mSolidColors:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method

.method public setStroke(ILandroid/content/res/ColorStateList;FF)V
    .registers 5

    iput p1, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeWidth:I

    iput-object p2, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeColors:Landroid/content/res/ColorStateList;

    iput p3, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashWidth:F

    iput p4, p0, Landroid/graphics/drawable/GradientDrawable$GradientState;->mStrokeDashGap:F

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable$GradientState;->computeOpacity()V

    return-void
.end method
