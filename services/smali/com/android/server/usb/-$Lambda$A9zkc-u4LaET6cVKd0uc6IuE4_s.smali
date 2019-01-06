.class final synthetic Lcom/android/server/usb/-$Lambda$A9zkc-u4LaET6cVKd0uc6IuE4_s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/usb/-$Lambda$A9zkc-u4LaET6cVKd0uc6IuE4_s;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/usb/UsbPortManager;

    iget-object v1, p0, Lcom/android/server/usb/-$Lambda$A9zkc-u4LaET6cVKd0uc6IuE4_s;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbPortManager;->lambda$-com_android_server_usb_UsbPortManager_30586(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/-$Lambda$A9zkc-u4LaET6cVKd0uc6IuE4_s;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/usb/-$Lambda$A9zkc-u4LaET6cVKd0uc6IuE4_s;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/-$Lambda$A9zkc-u4LaET6cVKd0uc6IuE4_s;->$m$0()V

    return-void
.end method
