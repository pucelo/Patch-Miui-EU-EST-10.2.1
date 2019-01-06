.class public Lmiui/util/NotificationFilterHelper;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"


# static fields
.field private static final APP_NOTIFICATION:Ljava/lang/String; = "app_notification"

.field private static final CHANNEL_FLAG:Ljava/lang/String; = "_channel_flag"

.field private static final CHANNEL_IMPORTANCE_BACKUP:Ljava/lang/String; = "_channel_importance_backup"

.field public static final DISABLE_ALL:I = 0x3

.field public static final DISABLE_FLOATING:I = 0x1

.field public static final ENABLE:I = 0x2

.field public static final IMPORTANCE:Ljava/lang/String; = "_importance"

.field public static final IMPORTANCE_DEFAULT:I = 0x0

.field public static final IMPORTANCE_HIGH:I = 0x1

.field public static final IMPORTANCE_LOW:I = -0x1

.field public static final KEYGUARD:Ljava/lang/String; = "_keyguard"

.field private static final KEY_FLOAT_VERSION:Ljava/lang/String; = "sysui_float_version"

.field public static final KEY_FLOAT_WHITELIST:Ljava/lang/String; = "float_whitelist"

.field private static final KEY_KEYGUARD_VERSION:Ljava/lang/String; = "sysui_keyguard_version"

.field public static final KEY_KEYGUARD_WHITELIST:Ljava/lang/String; = "keyguard_whitelist"

.field public static final LED:Ljava/lang/String; = "_led"

.field public static final MESSAGE:Ljava/lang/String; = "_message"

.field public static final NONE:I = 0x0

.field public static final SOUND:Ljava/lang/String; = "_sound"

.field private static final SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "NotificationFilterHelper"

.field public static final VIBRATE:Ljava/lang/String; = "_vibrate"

.field private static nm:Landroid/app/INotificationManager;

.field private static sFloatVersionCode:J

.field private static sFloatWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsSystemApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sKeyguardVersionCode:J

.field private static sKeyguardWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationCanBeBlockedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationCannotSetImportanceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationForcedEnabledChannelList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNotificationForcedEnabledPkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide/16 v2, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    sput-wide v2, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    sput-wide v2, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    const-string/jumbo v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    sput-object v1, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.fm"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.antispam"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.incallui"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.deskclock"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.mms"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.bluetooth"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.updater"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.providers.downloads"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.miui.hybrid"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.xiaomi.xmsf"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    const-string/jumbo v2, "com.android.incallui"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    sget-object v2, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    :goto_7
    return v0

    :catch_8
    move-exception v1

    goto :goto_7
.end method

.method public static canNotificationSetImportance(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCannotSetImportanceList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static canSendNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static canSystemNotificationBeBlocked(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static containNonBlockableChannel(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V
    .registers 10

    const/4 v3, 0x0

    if-nez p3, :cond_a

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    return-void

    :cond_a
    :try_start_a
    invoke-static {p2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, v4, p1, p3}, Lmiui/util/NotificationFilterHelper;->resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V

    :cond_15
    :goto_15
    sget-object v4, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v4, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_54

    :try_start_1a
    sget-boolean v4, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v4, :cond_24

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_3c

    :cond_24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3c

    if-eqz p3, :cond_56

    :goto_37
    const/16 v4, 0xb

    invoke-static {p0, v4, p1, v3}, Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_3c} :catch_58
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_3c} :catch_54

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    :try_start_3d
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-nez v4, :cond_15

    invoke-static {p0, p1}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    new-instance v4, Landroid/os/UserHandle;

    const/16 v5, 0x3e7

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v4, p1, p3}, Lmiui/util/NotificationFilterHelper;->resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_53} :catch_54

    goto :goto_15

    :catch_54
    move-exception v1

    goto :goto_3c

    :cond_56
    const/4 v3, 0x1

    goto :goto_37

    :catch_58
    move-exception v0

    goto :goto_3c
.end method

.method public static enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method private static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string/jumbo v2, "%s_%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object p2, v3, v1

    const-string/jumbo v4, "_channel_flag"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_1c

    :goto_18
    invoke-static {p0, v2, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1c
    move v0, v1

    goto :goto_18
.end method

.method public static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_7

    const/4 v0, 0x2

    :goto_3
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_7
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I
    .registers 8

    const/4 v3, 0x0

    if-eqz p3, :cond_1c

    invoke-static {p0, p1, p2}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    :goto_7
    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    :cond_18
    if-nez v1, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    const/4 v0, 0x1

    goto :goto_7

    :cond_1e
    const/4 v1, 0x3

    goto :goto_1b
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 4

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v0

    return v0
.end method

.method private static getAppUid(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_d} :catch_e

    :goto_d
    return v2

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public static getBackupChannelImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "_channel_importance_backup"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getChannelFlag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 13

    const/4 v7, 0x0

    if-eqz p4, :cond_31

    invoke-static {p0, p1, p3}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    :goto_7
    const/4 v1, 0x0

    if-eqz v0, :cond_33

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "%s_%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string/jumbo v5, "_channel_flag"

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p0, p1, v7}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    :cond_2d
    if-nez v1, :cond_30

    const/4 v1, 0x1

    :cond_30
    :goto_30
    return v1

    :cond_31
    const/4 v0, 0x1

    goto :goto_7

    :cond_33
    const/4 v1, 0x3

    goto :goto_30
.end method

.method private static getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "%s_%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCustomSoundUri(Landroid/content/Context;Landroid/net/Uri;Landroid/service/notification/StatusBarNotification;)Landroid/net/Uri;
    .registers 3

    return-object p1
.end method

.method private static getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->initFilterList(Landroid/content/Context;)V

    if-nez p2, :cond_12

    sget-object v2, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f

    :cond_12
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method public static getImportance(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_importance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "_importance"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getNotificationForcedEnabledList()Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    return-object v0
.end method

.method private static getRealPackageName(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "com.xiaomi.xmsf"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_14

    :try_start_a
    const-string/jumbo v1, "com.android.systemui"

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_32

    move-result-object p0

    :cond_14
    :goto_14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    :try_start_21
    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_28} :catch_3d

    move-result-object p0

    :cond_29
    :goto_29
    const-string/jumbo v1, "app_notification"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    :catch_32
    move-exception v0

    const-string/jumbo v1, "NotificationFilterHelper"

    const-string/jumbo v2, "Can\'t find pkg: com.android.systemui"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_29
.end method

.method private static getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result-object v1

    :goto_a
    return-object v1

    :catch_b
    move-exception v0

    const-string/jumbo v2, "NotificationFilterHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error get whiteList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method private static initFilterList(Landroid/content/Context;)V
    .registers 13

    const-wide/16 v10, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sysui_float_version"

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v7, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1b

    sget-wide v8, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_38

    :cond_1b
    sput-wide v4, Lmiui/util/NotificationFilterHelper;->sFloatVersionCode:J

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "float_whitelist"

    invoke-static {p0, v7}, Lmiui/util/NotificationFilterHelper;->getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_6f

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_6f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_36
    sput-object v1, Lmiui/util/NotificationFilterHelper;->sFloatWhiteList:Ljava/util/ArrayList;

    :cond_38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sysui_keyguard_version"

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    sget-object v7, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_51

    sget-wide v8, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_6e

    :cond_51
    sput-wide v4, Lmiui/util/NotificationFilterHelper;->sKeyguardVersionCode:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "keyguard_whitelist"

    invoke-static {p0, v7}, Lmiui/util/NotificationFilterHelper;->getWhiteListFromCache(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_82

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_82

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_6c
    sput-object v3, Lmiui/util/NotificationFilterHelper;->sKeyguardWhiteList:Ljava/util/ArrayList;

    :cond_6e
    return-void

    :cond_6f
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1106000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_36

    :cond_82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1106000f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_6c
.end method

.method public static isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z
    .registers 5

    invoke-static {p1}, Lmiui/util/NotificationInjector;->getChannelId(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string/jumbo v1, "_message"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lmiui/util/NotificationFilterHelper;->getRealPackageName(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0, p2}, Lmiui/util/NotificationFilterHelper;->isAllowedWithChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_1f
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lmiui/util/NotificationFilterHelper;->getRealPackageName(Landroid/service/notification/StatusBarNotification;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v4, "_keyguard"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "_sound"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    :cond_15
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3b

    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    if-ne v4, v6, :cond_39

    :goto_38
    return v2

    :cond_39
    move v2, v3

    goto :goto_38

    :cond_3b
    const-string/jumbo v4, "_led"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6a

    invoke-static {p0, p1, v3}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v4

    if-ne v4, v6, :cond_68

    :goto_67
    return v2

    :cond_68
    move v2, v3

    goto :goto_67

    :cond_6a
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Boolean;

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9d

    const-string/jumbo v3, "NotificationFilterHelper"

    const-string/jumbo v4, "got non boolean values, return true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9d
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public static isAllowedWithChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "_keyguard"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "_sound"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    :cond_15
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2e

    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    if-ne v2, v4, :cond_2c

    :goto_2b
    return v0

    :cond_2c
    move v0, v1

    goto :goto_2b

    :cond_2e
    const-string/jumbo v2, "_led"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_50

    invoke-static {p0, p1, v1}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v2

    if-ne v2, v4, :cond_4e

    :goto_4d
    return v0

    :cond_4e
    move v0, v1

    goto :goto_4d

    :cond_50
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v2, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledPkgList:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    return v4

    :cond_b
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->canSystemNotificationBeBlocked(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    return v3

    :cond_12
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_22

    const/16 v2, 0x3e9

    if-ne v0, v2, :cond_23

    :cond_22
    return v4

    :cond_23
    if-eqz v0, :cond_22

    return v3
.end method

.method public static isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledChannelList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_1a

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->containNonBlockableChannel(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledAllChannelList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public static isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .registers 7

    const/4 v3, 0x0

    sget-object v4, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_23

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {p1, p0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_10} :catch_28

    move-result-object v1

    :goto_11
    if-eqz v1, :cond_1a

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    :catch_28
    move-exception v0

    goto :goto_11
.end method

.method private static resolveAssociatedUid(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Z)V
    .registers 11

    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p0, p2, v4, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-interface {v4, p2, v3, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    const-string/jumbo v4, "NotificationFilterHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t find pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catch_2b
    move-exception v1

    const-string/jumbo v4, "NotificationFilterHelper"

    const-string/jumbo v5, "Can\'t talk to NotificationManagerService"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e
.end method

.method public static saveBackupChannelImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "_channel_importance_backup"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setImportance(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_importance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setImportance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "_importance"

    invoke-static {p1, p2, v1}, Lmiui/util/NotificationFilterHelper;->getChannelKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateFloatWhiteList(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_float_version"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "float_whitelist"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateKeyguardWhitelist(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_keyguard_version"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "keyguard_whitelist"

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
