.class public Lcom/miui/server/XSpaceManagerService;
.super Ljava/lang/Object;
.source "XSpaceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/XSpaceManagerService$1;
    }
.end annotation


# static fields
.field private static final EXTRA_XSPACE_CACHED_USERID:Ljava/lang/String; = "android.intent.extra.xspace_cached_uid"

.field private static final EXTRA_XSPACE_RESOLVE_INTENT_AGAIN:Ljava/lang/String; = "android.intent.extra.xspace_resolve_intent_again"

.field private static final EXTRA_XSPACE_USERID_SELECTED:Ljava/lang/String; = "android.intent.extra.xspace_userid_selected"

.field private static final MAX_COMPETE_XSPACE_NOTIFICATION_TIMES:I = 0x1

.field private static final PACKAGE_LINKER:Ljava/lang/String; = "@"

.field private static final SYSTEM_PROP_XSPACE_CREATED:Ljava/lang/String; = "persist.sys.xspace_created"

.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_GAMECENTER_SDK_PKGNAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static final XSPACE_APP_LIST_INIT_NUMBER:I

.field private static final XSPACE_SERVICE_COMPONENT:Ljava/lang/String; = "com.miui.securitycore/com.miui.xspace.service.XSpaceService"

.field private static mContext:Landroid/content/Context;

.field private static final sAddUserPackagesBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCachedCallingRelationSelfLocked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsXSpaceActived:Z

.field public static sIsXSpaceCreated:Z

.field private static final sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

.field private static final sPublicActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResolver:Landroid/content/ContentResolver;

.field private static final sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;
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
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/content/ContentResolver;
    .registers 1

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-class v0, Lcom/miui/server/XSpaceManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mi.android.globallauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.gsf.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.play.games"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sAddUserPackagesBlackList:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sAddUserPackagesBlackList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    new-instance v0, Lcom/miui/server/XSpaceManagerService$1;

    invoke-direct {v0}, Lcom/miui/server/XSpaceManagerService$1;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCallXSpacePermission(Ljava/lang/String;)Z
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_17

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_19

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_33

    :cond_17
    const/4 v2, 0x1

    return v2

    :catch_19
    move-exception v1

    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to read package info of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_33
    return v5
.end method

.method public static checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;
    .registers 15

    const/16 v7, 0x3e7

    invoke-static {p2}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkXSpaceControl, from:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", to:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", with act:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", callingUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", toUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5c

    if-eq v3, v7, :cond_5c

    return-object p2

    :cond_5c
    if-nez v3, :cond_6b

    if-nez p5, :cond_6b

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6b

    return-object p2

    :cond_6b
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->isScreenLocked(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_75

    sget-boolean v4, Lmiui/util/OldmanUtil;->IS_ELDER_MODE:Z

    if-eqz v4, :cond_76

    :cond_75
    return-object p2

    :cond_76
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_90

    :cond_88
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_90
    return-object p2

    :cond_91
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCrossUserDisableComponentActionWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-static {p1, v7}, Lcom/miui/server/XSpaceManagerService;->isComponentEnabled(Landroid/content/pm/ActivityInfo;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a2

    return-object p2

    :cond_a2
    const-string/jumbo v4, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c0

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "from XSpace ResolverActivity"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-static {p2, v3}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V

    :goto_bf
    return-object p2

    :cond_c0
    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_d7

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "using cached calling relation"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_bf

    :cond_d7
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_da
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_109

    const-string/jumbo v4, "android.intent.extra.auth_to_call_xspace"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fb

    invoke-static {p6}, Lcom/miui/server/XSpaceManagerService;->checkCallXSpacePermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fb

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "call XSpace directly"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catchall {:try_start_da .. :try_end_f9} :catchall_12f

    monitor-exit v5

    return-object p2

    :cond_fb
    :try_start_fb
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "pop up ResolverActivity"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, v1, p4}, Lcom/miui/server/XSpaceManagerService;->getResolverActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_106
    .catchall {:try_start_fb .. :try_end_106} :catchall_12f

    move-result-object p2

    :cond_107
    :goto_107
    monitor-exit v5

    goto :goto_bf

    :cond_109
    :try_start_109
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v4, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_107

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "XSpace installed App to normal App"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sAddUserPackagesBlackList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_124

    invoke-static {p2, v3}, Lmiui/securityspace/XSpaceIntentCompat;->prepareToLeaveUser(Landroid/content/Intent;I)V

    :cond_124
    const-string/jumbo v4, "android.intent.extra.xspace_cached_uid"

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12e
    .catchall {:try_start_109 .. :try_end_12e} :catchall_12f

    goto :goto_107

    :catchall_12f
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private static getAimPkg(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_10
    return-object v0
.end method

.method public static getCachedUserId(Landroid/content/Intent;Ljava/lang/String;)I
    .registers 6

    const/16 v1, -0x2710

    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string/jumbo v2, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string/jumbo v2, "android.intent.extra.xspace_cached_uid"

    const/16 v3, -0x2710

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_24
    return v1
.end method

.method private static getPackageActionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResolverActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 7

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-ltz p2, :cond_10

    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_10
    const-string/jumbo v1, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.xspace_resolver_activity_original_intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.xspace_resolver_activity_aim_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android"

    const-string/jumbo v2, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method private static getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    const/16 v0, -0x2710

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_54

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "got callingRelationKey :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", cachedToUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_56

    :cond_54
    monitor-exit v4

    return v0

    :catchall_56
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static init(Landroid/content/Context;)V
    .registers 6

    sput-object p0, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->initXSpaceAppList()V

    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "xspace_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/miui/server/XSpaceManagerService$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/miui/server/XSpaceManagerService$2;-><init>(Landroid/os/Handler;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    sget-object v1, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "XSpace init, active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lmiui/securityspace/CrossUserUtils;->hasXSpaceUser(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    sget-boolean v1, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v1, :cond_66

    const-string/jumbo v1, "persist.sys.xspace_created"

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V

    :cond_62
    :goto_62
    invoke-static {p0}, Lcom/android/server/pm/ExtraPackageManagerService;->checkExtraRestoreconFlag(Landroid/content/Context;)V

    return-void

    :cond_66
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/XSpaceManagerService;->needSetBootXSpaceGuideTaskForCompete(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_62

    const-string/jumbo v1, "param_intent_value_compete_boot_xspace_guide"

    invoke-static {p0, v1}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_62
.end method

.method private static initXSpaceAppList()V
    .registers 9

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x3e7

    invoke-interface {v6, v7, v8}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_44

    move-result-object v5

    :goto_c
    if-eqz v5, :cond_4a

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    sget-object v7, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_19

    sget-object v6, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_19

    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_41

    goto :goto_19

    :catchall_41
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_44
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c

    :cond_49
    monitor-exit v7

    :cond_4a
    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sget v7, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    if-le v6, v7, :cond_57

    const/4 v6, 0x1

    sput-boolean v6, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    :cond_57
    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "xspace_enabled"

    sget-boolean v8, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-static {v6, v7, v8}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    sget-object v6, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initXSpaceAppList sXSpaceInstalledPackagesSelfLocked ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "    XSPACE_APP_LIST_INIT_NUMBER ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Reset XSpace enable, active:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static isComponentEnabled(Landroid/content/pm/ActivityInfo;I)Z
    .registers 8

    if-nez p0, :cond_4

    const/4 v3, 0x1

    return v3

    :cond_4
    const/4 v2, 0x0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4, p1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_41

    move-result-object v3

    if-eqz v3, :cond_1a

    const/4 v2, 0x1

    :cond_1a
    :goto_1a
    if-nez v2, :cond_40

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Component not enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    return v2

    :catch_41
    move-exception v1

    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public static isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    return v5

    :cond_14
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v3, 0x0

    :try_start_1a
    invoke-static {v3}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_23} :catch_27
    .catchall {:try_start_1a .. :try_end_23} :catchall_34

    invoke-static {v6}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    return v6

    :catch_27
    move-exception v1

    :try_start_28
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Private intent"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_34

    invoke-static {v6}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    return v5

    :catchall_34
    move-exception v3

    invoke-static {v6}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    throw v3
.end method

.method private static isScreenLocked(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method private static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_e

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method

.method private static needSetBootXSpaceGuideTaskForCompete(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    const-string/jumbo v1, "key_xspace_boot_guide_times"

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$XSpace;->getGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ge v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static needSetInstallXSpaceGuideTaskForCompete(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    const-string/jumbo v1, "key_xspace_compete_guide_times"

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$XSpace;->getGuideNotificationTimes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ge v1, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x1

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update XSpace App: packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    :cond_48
    sput-boolean v6, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    const-string/jumbo v3, "persist.sys.xspace_created"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ae

    const/4 v2, 0x0

    :try_start_5d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x3e7

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_6b

    return-void

    :cond_6b
    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_6e} :catch_93

    move-result v2

    :goto_6f
    if-nez v2, :cond_79

    sget-object v3, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    :cond_79
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "XSpace ignore system or GMS package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_93
    move-exception v1

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PMS died"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6f

    :cond_9d
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_a1
    invoke-static {v3}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catchall {:try_start_a1 .. :try_end_a9} :catchall_ab

    :goto_a9
    monitor-exit v4

    :cond_aa
    :goto_aa
    return-void

    :catchall_ab
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_ae
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, p0}, Landroid/provider/MiuiSettings$XSpace;->resetDefaultSetting(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_b6
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_c0

    goto :goto_a9

    :catchall_c0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_c3
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_aa

    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    sget-object v3, Landroid/provider/MiuiSettings$XSpace;->sCompeteXSpaceApps:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/server/XSpaceManagerService;->needSetInstallXSpaceGuideTaskForCompete(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_aa

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/securityspace/CrossUserUtils;->hasXSpaceUser(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_aa

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "param_intent_value_compete_install_xspace_guide"

    invoke-static {v3, v4}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_aa
.end method

.method private static putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putCachedCallingRelationm, callingRelationKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", cachedUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    monitor-exit v3

    return-void

    :catchall_4e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static shouldResolveAgain(Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :try_start_a
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2b

    const-string/jumbo v3, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_21

    const/4 v3, 0x1

    return v3

    :catch_21
    move-exception v1

    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Private intent: "

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_2b
    return v5
.end method

.method private static startXSpaceService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.securitycore/com.miui.xspace.service.XSpaceService"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_17

    const-string/jumbo v1, "param_intent_key_has_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_17
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static updateXSpaceStatusLocked(Z)V
    .registers 4

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    if-ne v0, v1, :cond_57

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateXSpaceStatusLocked sXSpaceInstalledPackagesSelfLocked ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "    XSPACE_APP_LIST_INIT_NUMBER ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update XSpace Enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "xspace_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_57
    return-void
.end method
