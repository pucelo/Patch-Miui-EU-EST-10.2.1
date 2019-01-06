.class Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;
.super Landroid/database/ContentObserver;
.source "UsbNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/systemui/Constants;->SUPPORT_DISABLE_USB_BY_SIM:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "disable_usb_by_sim"

    invoke-static {v1, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v4, v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-set0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)Z

    sget-boolean v1, Lcom/android/systemui/Constants;->SUPPORT_DISABLE_USB_BY_SIM:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get1(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "UsbNotificationController"

    const-string/jumbo v4, "not support disable usb by sim!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1, v3}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-set0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)Z

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "disable_usb_by_sim"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get1(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get2(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get4(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get4(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    iget-object v4, p0, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController$1;->this$0:Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;

    invoke-static {v4}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-get3(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    :goto_2
    invoke-static {v1, v2}, Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;->-wrap0(Lcom/android/systemui/miui/statusbar/policy/UsbNotificationController;Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method
