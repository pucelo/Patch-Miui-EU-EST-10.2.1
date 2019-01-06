.class public final Landroid/net/wifi/SupplicantStateTrackerInjector;
.super Ljava/lang/Object;
.source "SupplicantStateTrackerInjector.java"


# static fields
.field private static sNetid:I

.field private static sNetworksDisabledDuringConnect:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleConnectNetwork(I)V
    .registers 2

    sput p0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    return-void
.end method

.method public static handleNetworkConnectionComplete()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    const/4 v0, -0x1

    sput v0, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    return-void
.end method

.method public static handleNetworkConnectionFailure(Landroid/content/Context;Ljava/util/List;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;I)V"
        }
    .end annotation

    const/4 v5, -0x1

    sget-boolean v4, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    if-eqz v4, :cond_13

    sget v4, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-ne v4, p2, :cond_13

    const/4 v4, 0x0

    sput-boolean v4, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    sput v5, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-eq p2, v5, :cond_12

    if-nez p1, :cond_14

    :cond_12
    return-void

    :cond_13
    return-void

    :cond_14
    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v4, p2, :cond_19

    move-object v3, v0

    :cond_2a
    if-eqz v3, :cond_31

    iget v4, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_32

    :cond_31
    return-void

    :cond_32
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "miui.intent.action.WIFI_CONNECTION_FAILURE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x14000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "wifiConfiguration"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static isConformAuthFailure(II)Z
    .registers 4

    const/4 v0, 0x0

    if-lez p1, :cond_f

    sget-boolean v1, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetworksDisabledDuringConnect:Z

    if-eqz v1, :cond_f

    const/4 v1, -0x1

    if-eq p0, v1, :cond_f

    sget v1, Landroid/net/wifi/SupplicantStateTrackerInjector;->sNetid:I

    if-ne v1, p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method
