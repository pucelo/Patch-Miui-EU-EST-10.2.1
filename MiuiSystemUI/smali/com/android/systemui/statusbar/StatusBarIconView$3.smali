.class Lcom/android/systemui/statusbar/StatusBarIconView$3;
.super Ljava/lang/Object;
.source "StatusBarIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/StatusBarIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->-get0(Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarIconView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->-get1(Lcom/android/systemui/statusbar/StatusBarIconView;)I

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarIconView$3;->this$0:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->-wrap1(Lcom/android/systemui/statusbar/StatusBarIconView;I)V

    return-void
.end method
