.class final Landroid/graphics/drawable/ColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/ColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mUseColor:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/ColorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/ColorDrawable$ColorState;)V
    .registers 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/graphics/drawable/ColorDrawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mBaseColor:I

    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mUseColor:I

    iget v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mThemeAttrs:[I

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x1

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getChangingConfigurations()I
    .registers 3

    iget v1, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/graphics/drawable/ColorDrawable$ColorState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_c
    or-int/2addr v0, v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(Landroid/graphics/drawable/ColorDrawable$ColorState;Landroid/content/res/Resources;Landroid/graphics/drawable/ColorDrawable;)V

    return-object v0
.end method
