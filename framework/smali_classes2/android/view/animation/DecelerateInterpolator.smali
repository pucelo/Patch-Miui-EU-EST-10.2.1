.class public Landroid/view/animation/DecelerateInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "DecelerateInterpolator.java"

# interfaces
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    iput p1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .registers 8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    iput v3, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    if-eqz p2, :cond_21

    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_10
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/animation/DecelerateInterpolator;->setChangingConfiguration(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_21
    sget-object v1, Lcom/android/internal/R$styleable;->DecelerateInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_10
.end method


# virtual methods
.method public createNativeInterpolator()J
    .registers 3

    iget v0, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createDecelerateInterpolator(F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .registers 8

    const/high16 v3, 0x3f800000    # 1.0f

    iget v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_10

    sub-float v1, v3, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    sub-float v0, v3, v1

    :goto_f
    return v0

    :cond_10
    sub-float v1, v3, p1

    float-to-double v2, v1

    iget v1, p0, Landroid/view/animation/DecelerateInterpolator;->mFactor:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    double-to-float v0, v2

    goto :goto_f
.end method
