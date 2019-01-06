.class public abstract Landroid/graphics/drawable/DrawableWrapper;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapper.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    }
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field private mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/DrawableWrapper;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method private inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_5
    :goto_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_21

    const/4 v3, 0x3

    if-ne v2, v3, :cond_15

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_21

    :cond_15
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget v3, v3, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    invoke-static {p1, p2, p3, v3, p4}, Landroid/graphics/drawable/Drawable;->createFromXmlInnerForDensity(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5

    :cond_21
    if-eqz v0, :cond_26

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_26
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v1, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v1, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-set0(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;[I)[I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v4, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    :cond_14
    iget-object v3, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-nez v3, :cond_19

    return-void

    :cond_19
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v2, :cond_41

    const/16 v1, 0xa0

    :goto_27
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    invoke-static {v3}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-get0(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-static {v3}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->-get0(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;)[I

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_40
    return-void

    :cond_41
    move v1, v2

    goto :goto_27
.end method

.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canApplyTheme()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public clearMutated()V
    .registers 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearMutated()V

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public getAlpha()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0xff

    goto :goto_a
.end method

.method public getChangingConfigurations()I
    .registers 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->getChangingConfigurations()I

    move-result v0

    :goto_e
    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    return-object v0

    :cond_18
    return-object v1
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9
.end method

.method public getIntrinsicHeight()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getIntrinsicWidth()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getOpacity()I
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x2

    goto :goto_a
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    goto :goto_a
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_9
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasFocusStateSpecified()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->hasFocusStateSpecified()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-nez v2, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    if-nez v1, :cond_29

    const/16 v3, 0xa0

    :goto_12
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->setDensity(I)V

    iget v4, p0, Landroid/graphics/drawable/DrawableWrapper;->mSrcDensityOverride:I

    iput v4, v2, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mSrcDensityOverride:I

    sget-object v4, Lcom/android/internal/R$styleable;->DrawableWrapper:[I

    invoke-static {p1, p4, p3, v4}, Landroid/graphics/drawable/DrawableWrapper;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_29
    move v3, v1

    goto :goto_12
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public isStateful()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    if-nez v1, :cond_2f

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_2f

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_1a
    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    :cond_2a
    iput-object v0, v1, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mMutated:Z

    :cond_2f
    return-object p0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_9
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onLevelChange(I)Z
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onStateChange([I)Z
    .registers 4

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_1b
    return v0

    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_9
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_9
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_a
    iput-object p1, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_41

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    if-eqz v0, :cond_41

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mState:Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_41
    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    return-void
.end method

.method public setHotspot(FF)V
    .registers 4

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_9
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 6

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_9
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/graphics/drawable/DrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    :goto_e
    or-int v2, v1, v0

    return v2

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4

    invoke-virtual {p0}, Landroid/graphics/drawable/DrawableWrapper;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_9
    return-void
.end method
