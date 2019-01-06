.class Lcom/android/systemui/usb/UsbDebuggingActivity$1;
.super Ljava/lang/Object;
.source "UsbDebuggingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbDebuggingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbDebuggingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v5, -0x1

    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-static {v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->-get0(Lcom/android/systemui/usb/UsbDebuggingActivity;)Lmiui/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/app/AlertDialog;->isChecked()Z

    move-result v1

    :goto_1
    :try_start_0
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-static {v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->-get1(Lcom/android/systemui/usb/UsbDebuggingActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Landroid/hardware/usb/IUsbManager;->allowUsbDebugging(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/usb/UsbDebuggingActivity$1;->this$0:Lcom/android/systemui/usb/UsbDebuggingActivity;

    invoke-virtual {v5}, Lcom/android/systemui/usb/UsbDebuggingActivity;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/hardware/usb/IUsbManager;->denyUsbDebugging()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string/jumbo v5, "UsbDebuggingActivity"

    const-string/jumbo v6, "Unable to notify Usb service"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
