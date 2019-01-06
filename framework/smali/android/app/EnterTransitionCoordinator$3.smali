.class Landroid/app/EnterTransitionCoordinator$3;
.super Ljava/lang/Object;
.source "EnterTransitionCoordinator.java"

# interfaces
.implements Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EnterTransitionCoordinator;->onTakeSharedElements()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EnterTransitionCoordinator;

.field final synthetic val$sharedElementState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    iput-object p2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_app_EnterTransitionCoordinator$3_17761(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    new-instance v1, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0, p1}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/EnterTransitionCoordinator;->startTransition(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$-android_app_EnterTransitionCoordinator$3_17809(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-static {v0, p1}, Landroid/app/EnterTransitionCoordinator;->-wrap4(Landroid/app/EnterTransitionCoordinator;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSharedElementsReady()V
    .registers 5

    iget-object v1, p0, Landroid/app/EnterTransitionCoordinator$3;->this$0:Landroid/app/EnterTransitionCoordinator;

    invoke-virtual {v1}, Landroid/app/EnterTransitionCoordinator;->getDecor()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v1, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;

    iget-object v2, p0, Landroid/app/EnterTransitionCoordinator$3;->val$sharedElementState:Landroid/os/Bundle;

    const/4 v3, 0x3

    invoke-direct {v1, v3, p0, v2}, Landroid/app/-$Lambda$Pcw-0289sroTvc5U7X-pS90OouM;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/view/OneShotPreDrawListener;->add(Landroid/view/View;ZLjava/lang/Runnable;)Lcom/android/internal/view/OneShotPreDrawListener;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_17
    return-void
.end method
