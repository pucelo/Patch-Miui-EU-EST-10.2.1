.class Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;
.super Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;
.source "AppTransitionAnimationSpecsFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    invoke-direct {p0}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public get()[Landroid/view/AppTransitionAnimationSpec;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    invoke-static {v4}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->-get0(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)Ljava/util/concurrent/FutureTask;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    invoke-static {v4}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->-get1(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    invoke-static {v5}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->-get0(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)Ljava/util/concurrent/FutureTask;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    invoke-static {v4}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->-get0(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;)Ljava/util/concurrent/FutureTask;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture$2;->this$0:Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;->-set0(Lcom/android/systemui/recents/views/AppTransitionAnimationSpecsFuture;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    if-nez v3, :cond_1

    return-object v6

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Landroid/view/AppTransitionAnimationSpec;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/AppTransitionAnimationSpec;

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v1

    return-object v6
.end method
