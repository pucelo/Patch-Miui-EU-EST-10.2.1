.class public Lmiui/securityspace/XSpaceConstant;
.super Ljava/lang/Object;
.source "XSpaceConstant.java"


# static fields
.field public static final GMS_RELATED_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUIRED_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPECIAL_APPS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final XSPACE_WHITELIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.keychain"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.webview"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.securitycore"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.analytics"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.miui.rom"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.tencent.soter.soterserver"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_70

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.android.chrome"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "com.android.packageinstaller.permission.ui.GrantPermissionsActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.android.packageinstaller.permission.ui.ManagePermissionsActivity"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    const-string/jumbo v3, "com.google.android.packageinstaller"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "com.miui.xspace.receiver.MediaScannerReceiver"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.miui.xspace.receiver.InstallShortcutReceiver"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    const-string/jumbo v3, "com.miui.securitycore"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.gsf"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.gms"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v2, v3, :cond_c0

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.google.android.gsf.login"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c0
    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.whatsapp"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.facebook.katana"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.instagram.android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.facebook.orca"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.king.candycrushsaga"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.facebook.lite"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.mobile.legends"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.supercell.clashofclans"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.vkontakte.android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "com.viber.voip"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "jp.naver.line.android"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lmiui/securityspace/XSpaceConstant;->XSPACE_WHITELIST:Ljava/util/ArrayList;

    const-string/jumbo v3, "org.telegram.messenger"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
