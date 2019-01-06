.class Lcom/android/keyguard/MiuiLockPatternView$7;
.super Ljava/lang/Object;
.source "MiuiLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiLockPatternView;->startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/keyguard/MiuiLockPatternView$CellState;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiLockPatternView;

.field final synthetic val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiLockPatternView;Lcom/android/keyguard/MiuiLockPatternView$CellState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiLockPatternView$7;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    iput-object p2, p0, Lcom/android/keyguard/MiuiLockPatternView$7;->val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$7;->val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/keyguard/MiuiLockPatternView$CellState;->radius:F

    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$7;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/MiuiLockPatternView;->invalidate()V

    return-void
.end method
