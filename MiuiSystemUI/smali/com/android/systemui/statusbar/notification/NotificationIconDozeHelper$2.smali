.class Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$2;
.super Ljava/lang/Object;
.source "NotificationIconDozeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeImageAlpha(Landroid/widget/ImageView;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$2;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$2;->val$target:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper$2;->this$0:Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->-get0(Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method
