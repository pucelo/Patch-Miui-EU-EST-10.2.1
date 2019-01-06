.class public Lmiui/securitycenter/utils/MiAssistantUtil;
.super Ljava/lang/Object;
.source "MiAssistantUtil.java"


# static fields
.field private static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field private static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkinfo"

.field private static final INTERFACE_USBNET0:Ljava/lang/String; = "usbnet0"

.field private static final TAG:Ljava/lang/String; = "MiAssistantManager"

.field private static final USB_SHARE_NET_STATE_CHANGE:Ljava/lang/String; = "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveInterfaceName()Ljava/lang/String;
    .registers 5

    const-string/jumbo v3, "connectivity"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_c
    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_17

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_17
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_10

    :cond_1c
    const-string/jumbo v3, "MiAssistantManager"

    const-string/jumbo v4, "activeLink is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "null"

    return-object v3
.end method

.method public static usbnet0Down(Landroid/content/Context;)V
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.action.USB_SHARE_NET_STATE_CHANGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/net/NetworkInfo;

    const-string/jumbo v6, "ETHERNET"

    const-string/jumbo v7, ""

    const/16 v8, 0x9

    invoke-direct {v2, v8, v9, v6, v7}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v6, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "networkinfo"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    const-string/jumbo v6, "linkProperties"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v6, "network_management"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    :try_start_3e
    const-string/jumbo v6, "usbnet0"

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->setInterfaceDown(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v1

    const-string/jumbo v6, "MiAssistantManager"

    const-string/jumbo v7, "disable usbnet0 error"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
