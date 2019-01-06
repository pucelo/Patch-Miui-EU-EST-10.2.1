.class Lcom/android/systemui/statusbar/phone/NavStubView$4;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->initValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavStubView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const v4, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    move v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get3(Lcom/android/systemui/statusbar/phone/NavStubView;)F

    move-result v3

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float v2, v4, v3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$4;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    sub-float v4, v5, v1

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap4(Lcom/android/systemui/statusbar/phone/NavStubView;F)V

    return-void
.end method
