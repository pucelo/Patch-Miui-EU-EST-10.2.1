.class final Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;
.super Landroid/os/Handler;
.source "FindDeviceAliveChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FindDeviceAliveChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CheckFindDeviceHandler"
.end annotation


# static fields
.field private static final WHAT_CHECK_FINDDEVICE_ALIVE:I


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/FindDeviceAliveChecker$CheckFindDeviceHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_12

    :goto_8
    return-void

    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/FindDeviceAliveChecker;->-wrap0(Landroid/content/Context;)V

    goto :goto_8

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
