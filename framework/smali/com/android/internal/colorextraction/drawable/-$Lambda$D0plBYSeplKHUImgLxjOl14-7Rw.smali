.class final synthetic Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:I

.field private final synthetic -$f3:I

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .registers 8

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f4:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f0:I

    iget v2, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f1:I

    iget v3, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f2:I

    iget v4, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f3:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->lambda$-com_android_internal_colorextraction_drawable_GradientDrawable_3291(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(IIIILjava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f0:I

    iput p2, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f1:I

    iput p3, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f2:I

    iput p4, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f3:I

    iput-object p5, p0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
