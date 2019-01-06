.class Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;
.super Ljava/lang/Object;
.source "DrawableAnimators.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/DrawableAnimators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CornerRadiiTypeEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator",
        "<[F>;"
    }
.end annotation


# instance fields
.field private mFallbackStartValue:[F

.field private mResult:[F


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v0}, Landroid/graphics/drawable/GradientDrawableCompat;->getCornerRadii(Landroid/graphics/drawable/GradientDrawable;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mFallbackStartValue:[F

    iget-object v0, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mFallbackStartValue:[F

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->getFallBackArray(Landroid/graphics/drawable/Drawable;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mFallbackStartValue:[F

    :cond_1
    return-void
.end method

.method private getFallBackArray(Landroid/graphics/drawable/Drawable;)[F
    .locals 3

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1}, Landroid/graphics/drawable/GradientDrawableCompat;->getCornerRadius(Landroid/graphics/drawable/GradientDrawable;)F

    move-result v0

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v0, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    return-object v1
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->evaluate(F[F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public evaluate(F[F[F)[F
    .locals 5

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mFallbackStartValue:[F

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mResult:[F

    if-nez v1, :cond_1

    array-length v1, p2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mResult:[F

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mResult:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mResult:[F

    aget v2, p2, v0

    aget v3, p3, v0

    aget v4, p2, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/miui/DrawableAnimators$CornerRadiiTypeEvaluator;->mResult:[F

    return-object v1
.end method
