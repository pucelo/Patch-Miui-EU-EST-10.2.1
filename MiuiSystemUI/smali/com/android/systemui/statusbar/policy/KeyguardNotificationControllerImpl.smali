.class public Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;
.super Ljava/lang/Object;
.source "KeyguardNotificationControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardNotificationController;


# instance fields
.field private mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NotificationChangeListener;->onAdd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NotificationChangeListener;->onClearAll()V

    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NotificationChangeListener;->onDelete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/systemui/statusbar/policy/NotificationChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardNotificationControllerImpl;->mNotificationListener:Lcom/android/systemui/statusbar/policy/NotificationChangeListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NotificationChangeListener;->onUpdate(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
