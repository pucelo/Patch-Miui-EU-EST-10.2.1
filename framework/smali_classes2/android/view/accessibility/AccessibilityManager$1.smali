.class Landroid/view/accessibility/AccessibilityManager$1;
.super Landroid/view/accessibility/IAccessibilityManagerClient$Stub;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method constructor <init>(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_view_accessibility_AccessibilityManager$1_9450(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-interface {p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;->onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public notifyServicesStateChanged()V
    .registers 7

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->-get0(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_7
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->-get1(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->isEmpty()Z
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_4b

    move-result v4

    if-eqz v4, :cond_15

    monitor-exit v5

    return-void

    :cond_15
    :try_start_15
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->-get1(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_4b

    monitor-exit v5

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v3, :cond_4e

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->-get1(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->-get1(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    new-instance v5, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;

    invoke-direct {v5, p0, v1}, Landroid/view/accessibility/-$Lambda$T3m_l9_RA18vCOcakSWp1lZCy5g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :catchall_4b
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_4e
    return-void
.end method

.method public setRelevantEventTypes(I)V
    .registers 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iput p1, v0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    return-void
.end method

.method public setState(I)V
    .registers 5

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager$1;->this$0:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, v0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
