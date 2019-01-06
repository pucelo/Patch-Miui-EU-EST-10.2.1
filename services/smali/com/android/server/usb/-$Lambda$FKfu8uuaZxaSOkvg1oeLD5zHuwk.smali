.class final synthetic Lcom/android/server/usb/-$Lambda$FKfu8uuaZxaSOkvg1oeLD5zHuwk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/hardware/usb/UsbDevice;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/-$Lambda$FKfu8uuaZxaSOkvg1oeLD5zHuwk;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->lambda$-com_android_server_usb_UsbProfileGroupSettingsManager_25456(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$Lambda$FKfu8uuaZxaSOkvg1oeLD5zHuwk;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onOpenInApp(Landroid/hardware/usb/UsbDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usb/-$Lambda$FKfu8uuaZxaSOkvg1oeLD5zHuwk;->$m$0(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
