.class public interface abstract Lcom/android/systemui/miui/policy/NotificationsMonitor;
.super Ljava/lang/Object;
.source "NotificationsMonitor.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController",
        "<",
        "Lcom/android/systemui/miui/policy/NotificationsMonitor$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract notifyNotificationAdded(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract notifyNotificationArrived(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract notifyNotificationUpdated(Landroid/service/notification/StatusBarNotification;)V
.end method
