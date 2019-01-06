.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->startButtonLayoutAnimate(Landroid/animation/AnimatorSet;Landroid/view/View;Landroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field final synthetic val$tipsView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->val$tipsView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleBottomButtonClicked(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->val$tipsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleBottomButtonClicked(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->val$tipsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->val$tipsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$17;->val$tipsView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method
