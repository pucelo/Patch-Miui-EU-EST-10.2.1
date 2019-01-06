.class public Lcom/android/systemui/pip/phone/InputConsumerControllerHelper;
.super Ljava/lang/Object;
.source "InputConsumerControllerHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInputConsumer(Landroid/view/IWindowManager;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 1

    :try_start_0
    invoke-interface {p0, p2, p3}, Landroid/view/IWindowManager;->createInputConsumer(Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
