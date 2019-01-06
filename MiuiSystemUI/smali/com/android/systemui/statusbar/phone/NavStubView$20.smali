.class Lcom/android/systemui/statusbar/phone/NavStubView$20;
.super Ljava/lang/Object;
.source "NavStubView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$20;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    return-void
.end method
