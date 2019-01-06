.class Lcom/android/keyguard/MiuiLockPatternView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiuiLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiLockPatternView;->startLineEndAnimation(Lcom/android/keyguard/MiuiLockPatternView$CellState;FFFF)V
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

    iput-object p1, p0, Lcom/android/keyguard/MiuiLockPatternView$6;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    iput-object p2, p0, Lcom/android/keyguard/MiuiLockPatternView$6;->val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$6;->val$state:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/MiuiLockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
