.class Lcom/android/systemui/statusbar/phone/NavStubView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    const-string/jumbo v1, "startAppAnimation-1"

    const/4 v2, 0x1

    invoke-static {v0, v3, v3, v2, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-wrap2(Lcom/android/systemui/statusbar/phone/NavStubView;ZZZLjava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setIsFsGestureAnimating(Z)V

    const-string/jumbo v0, "home"

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->recordJankyFrames(Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->setIsFsGestureAnimating(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView$11;->this$0:Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->-get17(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->notifyMiuiAnimationStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
