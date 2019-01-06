.class public Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;
.super Ljava/lang/Object;
.source "NotificationsMonitorImpl.java"

# interfaces
.implements Lcom/android/systemui/miui/policy/NotificationsMonitor;


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->addCallback(Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;)V

    return-void
.end method

.method public notifyNotificationAdded(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;->onNotificationAdded(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyNotificationArrived(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;->onNotificationArrived(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;->onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/miui/policy/NotificationsMonitorImpl;->removeCallback(Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;)V

    return-void
.end method
