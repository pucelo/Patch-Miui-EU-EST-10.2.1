.class Lcom/android/keyguard/MiuiLockPatternView$4;
.super Ljava/lang/Object;
.source "MiuiLockPatternView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/MiuiLockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/MiuiLockPatternView;

.field final synthetic val$cellState:Lcom/android/keyguard/MiuiLockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/MiuiLockPatternView;Lcom/android/keyguard/MiuiLockPatternView$CellState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/MiuiLockPatternView$4;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    iput-object p2, p0, Lcom/android/keyguard/MiuiLockPatternView$4;->val$cellState:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v1, p0, Lcom/android/keyguard/MiuiLockPatternView$4;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$4;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v0}, Lcom/android/keyguard/MiuiLockPatternView;->-get3(Lcom/android/keyguard/MiuiLockPatternView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$4;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v0}, Lcom/android/keyguard/MiuiLockPatternView;->-get2(Lcom/android/keyguard/MiuiLockPatternView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    const-wide/16 v4, 0xc0

    iget-object v0, p0, Lcom/android/keyguard/MiuiLockPatternView$4;->this$0:Lcom/android/keyguard/MiuiLockPatternView;

    invoke-static {v0}, Lcom/android/keyguard/MiuiLockPatternView;->-get4(Lcom/android/keyguard/MiuiLockPatternView;)Landroid/view/animation/Interpolator;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/MiuiLockPatternView$4;->val$cellState:Lcom/android/keyguard/MiuiLockPatternView$CellState;

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/keyguard/MiuiLockPatternView;->-wrap4(Lcom/android/keyguard/MiuiLockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/keyguard/MiuiLockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method
