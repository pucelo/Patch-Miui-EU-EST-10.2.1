.class public Lcom/android/internal/net/VpnConfig;
.super Ljava/lang/Object;
.source "VpnConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/VpnConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/VpnConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIALOGS_PACKAGE:Ljava/lang/String; = "com.android.vpndialogs"

.field public static final LEGACY_VPN:Ljava/lang/String; = "[Legacy VPN]"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.net.VpnService"


# instance fields
.field public addresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field public allowBypass:Z

.field public allowIPv4:Z

.field public allowIPv6:Z

.field public allowedApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blocking:Z

.field public configureIntent:Landroid/app/PendingIntent;

.field public disallowedApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public dnsServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public interfaze:Ljava/lang/String;

.field public legacy:Z

.field public mtu:I

.field public routes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field public searchDomains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public session:Ljava/lang/String;

.field public startTime:J

.field public underlyingNetworks:[Landroid/net/Network;

.field public user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/net/VpnConfig$1;

    invoke-direct {v0}, Lcom/android/internal/net/VpnConfig$1;-><init>()V

    sput-object v0, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    return-void
.end method

.method public static getIntentForConfirmation()Landroid/content/Intent;
    .registers 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1
.end method

.method public static getIntentForStatusPanel(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.vpndialogs"

    const-string/jumbo v3, "com.android.vpndialogs.ManageDialog"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x50800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move-object v0, p0

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.net.VpnService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    :cond_28
    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addLegacyAddresses(Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_1b
    if-ge v3, v4, :cond_33

    aget-object v1, v2, v3

    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_33
    return-void
.end method

.method public addLegacyRoutes(Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    return-void

    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_1b
    if-ge v3, v4, :cond_3d

    aget-object v1, v2, v3

    new-instance v0, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    invoke-direct {v5, v1}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;)V

    iget-object v5, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/net/VpnConfig;->updateAllowedFamilies(Ljava/net/InetAddress;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_3d
    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public updateAllowedFamilies(Ljava/net/InetAddress;)V
    .registers 4

    const/4 v1, 0x1

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    :goto_7
    return-void

    :cond_8
    iput-boolean v1, p0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    goto :goto_7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/net/VpnConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->allowedApplications:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->disallowedApplications:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->configureIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v4, p0, Lcom/android/internal/net/VpnConfig;->startTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v0, :cond_6b

    move v0, v1

    :goto_43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->blocking:Z

    if-eqz v0, :cond_6d

    move v0, v1

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowBypass:Z

    if-eqz v0, :cond_6f

    move v0, v1

    :goto_53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv4:Z

    if-eqz v0, :cond_71

    move v0, v1

    :goto_5b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/net/VpnConfig;->allowIPv6:Z

    if-eqz v0, :cond_73

    :goto_62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/net/VpnConfig;->underlyingNetworks:[Landroid/net/Network;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void

    :cond_6b
    move v0, v2

    goto :goto_43

    :cond_6d
    move v0, v2

    goto :goto_4b

    :cond_6f
    move v0, v2

    goto :goto_53

    :cond_71
    move v0, v2

    goto :goto_5b

    :cond_73
    move v1, v2

    goto :goto_62
.end method
