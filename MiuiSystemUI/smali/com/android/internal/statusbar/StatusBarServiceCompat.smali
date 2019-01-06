.class public Lcom/android/internal/statusbar/StatusBarServiceCompat;
.super Ljava/lang/Object;
.source "StatusBarServiceCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNotificationActionClick(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationActionClick(Ljava/lang/String;I)V

    return-void
.end method

.method public static onNotificationClear(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static onNotificationClick(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V

    return-void
.end method
