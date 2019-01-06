.class final Lcom/android/server/VibratorServiceInjector$1;
.super Landroid/service/notification/NotificationListenerService;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorServiceInjector;->init(Lcom/android/server/VibratorService;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/server/VibratorServiceInjector;->-get6()Lcom/android/server/VibratorServiceInjector$WorkerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/VibratorServiceInjector$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
