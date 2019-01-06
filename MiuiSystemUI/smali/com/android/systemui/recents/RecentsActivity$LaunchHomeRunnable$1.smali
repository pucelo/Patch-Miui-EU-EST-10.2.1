.class Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v1, v2, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mOpts:Landroid/app/ActivityOptions;

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const v3, 0x7f0100b9

    const v4, 0x7f0100ba

    invoke-static {v2, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    const-string/jumbo v3, "com.miui.home"

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RecentsActivity"

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable$1;->this$1:Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "Home"

    aput-object v5, v4, v6

    const v5, 0x7f110547

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
