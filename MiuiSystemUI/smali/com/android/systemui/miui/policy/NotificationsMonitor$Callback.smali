.class public interface abstract Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;
.super Ljava/lang/Object;
.source "NotificationsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/policy/NotificationsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onNotificationAdded(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationArrived(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
.end method
