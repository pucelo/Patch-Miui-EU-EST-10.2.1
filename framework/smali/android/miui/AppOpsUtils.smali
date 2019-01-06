.class public Landroid/miui/AppOpsUtils;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# static fields
.field public static final ACTION_ACCEPT:I = 0x3

.field public static final ACTION_DEFAULT:I = 0x0

.field public static final ACTION_PROMPT:I = 0x2

.field public static final ACTION_REJECT:I = 0x1

.field private static final AUTHORITY:Ljava/lang/String; = "com.lbe.security.miui.permmgr"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final EXTRA_ACTION:Ljava/lang/String; = "extra_action"

.field private static final EXTRA_FLAGS:Ljava/lang/String; = "extra_flags"

.field private static final EXTRA_PACKAGE:Ljava/lang/String; = "extra_package"

.field private static final EXTRA_PERMISSION:Ljava/lang/String; = "extra_permission"

.field public static final PERM_ID_NOTIFICATION:J = 0x8000L

.field public static final SET_APPLICATION_PERMISSION:I = 0x6

.field private static final TAG:Ljava/lang/String; = "AppOpsUtils"


# direct methods
.method static synthetic -get0()Landroid/net/Uri;
    .registers 1

    sget-object v0, Landroid/miui/AppOpsUtils;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "content://com.lbe.security.miui.permmgr"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/miui/AppOpsUtils;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I
    .registers 9

    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, p1, v4}, Landroid/content/pm/PackageManagerCompat;->getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_21

    move-result v3

    const-string/jumbo v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v4, 0x2718

    invoke-virtual {v0, v4, v3, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    return v4

    :catch_21
    move-exception v1

    const-string/jumbo v4, "AppOpsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t obtain the uid for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    return v4
.end method

.method public static getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5

    const-string/jumbo v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0x2718

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static isXOptMode()Z
    .registers 3

    const-string/jumbo v0, "persist.sys.miui_optimization"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.miui.cts"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 10

    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, p1, v4}, Landroid/content/pm/PackageManagerCompat;->getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_23

    move-result v3

    const-string/jumbo v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    if-eqz p2, :cond_3f

    const/4 v4, 0x0

    :goto_1d
    const/16 v5, 0x2718

    invoke-virtual {v0, v5, v3, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void

    :catch_23
    move-exception v1

    const-string/jumbo v4, "AppOpsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t obtain the uid for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3f
    const/4 v4, 0x2

    goto :goto_1d
.end method

.method public static setMode(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Landroid/miui/AppOpsUtils$1;

    invoke-direct {v0, p3, p2, p0}, Landroid/miui/AppOpsUtils$1;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/miui/AppOpsUtils$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
