.class Lcom/android/systemui/stackdivider/DividerView$4;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

.field final synthetic val$taskPositionSameAtEnd:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;ZLcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-boolean p2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$taskPositionSameAtEnd:Z

    iput-object p3, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$taskPositionSameAtEnd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isAndroidNorNewer()Z

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$snapTarget:Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/systemui/stackdivider/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    goto :goto_0
.end method
