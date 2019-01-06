.class Lcom/android/keyguard/MiuiLockPatternView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiLockPatternView.java"


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

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiLockPatternView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiLockPatternView$8;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    iput-object p2, p0, Lcom/android/keyguard/MiuiLockPatternView$8;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$8;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
