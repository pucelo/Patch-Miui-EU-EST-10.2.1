.class Lcom/android/systemui/recents/BaseRecentsImpl$4;
.super Landroid/app/IMiuiActivityObserver$Stub;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$4;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/app/IMiuiActivityObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public activityIdle(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public activityPaused(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public activityResumed(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$4;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v1, v1, Lcom/android/systemui/recents/BaseRecentsImpl;->mKM:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lmiui/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$4;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V

    return-void
.end method

.method public activityStopped(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method
