.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field private mCheckedOpacity:Z

.field private mCheckedStateful:Z

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field mDensity:I

.field private mIsStateful:Z

.field mNumChildren:I

.field private mOpacity:I

.field mOpacityOverride:I

.field mPaddingBottom:I

.field mPaddingEnd:I

.field mPaddingLeft:I

.field private mPaddingMode:I

.field mPaddingRight:I

.field mPaddingStart:I

.field mPaddingTop:I

.field private mThemeAttrs:[I


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .registers 2

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return v0
.end method

.method static synthetic -get2(Landroid/graphics/drawable/LayerDrawable$LayerState;)[I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic -set0(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic -set1(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I
    .registers 2

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p1
.end method

.method static synthetic -set2(Landroid/graphics/drawable/LayerDrawable$LayerState;[I)[I
    .registers 2

    iput-object p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    return-object p1
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    if-eqz p1, :cond_47

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    :goto_1c
    invoke-static {p3, v4}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v4

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eqz p1, :cond_8f

    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    new-array v4, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    const/4 v1, 0x0

    :goto_37
    if-ge v1, v0, :cond_49

    aget-object v2, v3, v1

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v2, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_47
    move v4, v5

    goto :goto_1c

    :cond_49
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v4, v5, :cond_8e

    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iget v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-direct {p0, v4, v5}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    :cond_8e
    :goto_8e
    return-void

    :cond_8f
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iput-object v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    goto :goto_8e
.end method

.method private applyDensityScaling(II)V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    if-lez v0, :cond_d

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    :cond_d
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    if-lez v0, :cond_19

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    :cond_19
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    if-lez v0, :cond_25

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    :cond_25
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    if-lez v0, :cond_31

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    :cond_31
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    if-lez v0, :cond_3d

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    :cond_3d
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    if-lez v0, :cond_49

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    :cond_49
    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 7

    const/4 v5, 0x1

    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    if-nez v4, :cond_b

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    return v5

    :cond_c
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1f

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1c

    return v5

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    const/4 v4, 0x0

    return v4
.end method

.method public final canConstantState()Z
    .registers 6

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_18

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_15

    const/4 v4, 0x0

    return v4

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    const/4 v4, 0x1

    return v4
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getOpacity()I
    .registers 8

    iget-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    return v6

    :cond_7
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v0, :cond_16

    aget-object v6, v1, v4

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_35

    move v3, v4

    :cond_16
    if-ltz v3, :cond_38

    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    :goto_20
    add-int/lit8 v4, v3, 0x1

    :goto_22
    if-ge v4, v0, :cond_3a

    aget-object v6, v1, v4

    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    :cond_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_38
    const/4 v5, -0x2

    goto :goto_20

    :cond_3a
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    return v5
.end method

.method public final hasFocusStateSpecified()Z
    .registers 6

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_18

    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    return v4

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_18
    const/4 v4, 0x0

    return v4
.end method

.method invalidateCache()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedOpacity:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    return-void
.end method

.method public final isStateful()Z
    .registers 7

    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    return v5

    :cond_7
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNumChildren:I

    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_1c

    aget-object v5, v1, v3

    iget-object v2, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_22

    const/4 v4, 0x1

    :cond_1c
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mCheckedStateful:Z

    return v4

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_d
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected onDensityChanged(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable$LayerState;->applyDensityScaling(II)V

    return-void
.end method

.method public final setDensity(I)V
    .registers 4

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    if-eq v1, p1, :cond_b

    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mDensity:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$LayerState;->onDensityChanged(II)V

    :cond_b
    return-void
.end method
