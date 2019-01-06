.class final Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;
.super Ljava/lang/Object;
.source "PropertyAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/PropertyAnimator$AnimatableProperty;FLcom/android/systemui/statusbar/stack/AnimationProperties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$property:Landroid/util/Property;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/util/Property;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$property:Landroid/util/Property;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$property:Landroid/util/Property;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/PropertyAnimator$1;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v1, v2, v0}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
