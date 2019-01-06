.class public Landroid/widget/ToggleButton;
.super Landroid/widget/CompoundButton;
.source "ToggleButton.java"


# static fields
.field private static final NO_ALPHA:I = 0xff


# instance fields
.field private mDisabledAlpha:F

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mTextOff:Ljava/lang/CharSequence;

.field private mTextOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v1, Lcom/android/internal/R$styleable;->ToggleButton:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private syncTextState()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    if-nez v0, :cond_f

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/ToggleButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f
.end method

.method private updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_11

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_10
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 4

    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    iget-object v0, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    iget-object v1, p0, Landroid/widget/ToggleButton;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xff

    :goto_11
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_14
    return-void

    :cond_15
    iget v0, p0, Landroid/widget/ToggleButton;->mDisabledAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_11
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/ToggleButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1}, Landroid/widget/ToggleButton;->updateReferenceToIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Landroid/widget/ToggleButton;->syncTextState()V

    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOff:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ToggleButton;->mTextOn:Ljava/lang/CharSequence;

    return-void
.end method
