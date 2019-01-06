.class public Lcom/android/systemui/recents/model/RecentsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsPackageMonitor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
