.class public Landroid/provider/SettingsCompat;
.super Ljava/lang/Object;
.source "SettingsCompat.java"


# static fields
.field public static final ACTION_VPN_SETTINGS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "android.settings.VPN_SETTINGS"

    :goto_0
    sput-object v0, Landroid/provider/SettingsCompat;->ACTION_VPN_SETTINGS:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "android.net.vpn.SETTINGS"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
