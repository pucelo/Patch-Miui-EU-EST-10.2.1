.class public Lmiui/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final FLAG_AC_ENABLED:I = 0x1

.field public static final FLAG_AC_PACKAGE_CANCELED:I = 0x8

.field public static final FLAG_AC_PACKAGE_ENABLED:I = 0x2

.field public static final FLAG_AC_PACKAGE_PASSED:I = 0x4

.field public static final MODE_EACH:I = 0x0

.field public static final MODE_LOCK_SCREEN:I = 0x1

.field public static final MODE_TIME_OUT:I = 0x2

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final SKIP_INTERCEPT:Ljava/lang/String; = "skip_interception"

.field public static final SKIP_INTERCEPT_ACTIVITY:Ljava/lang/String; = "com.miui.gallery.activity.ExternalPhotoPageActivity"

.field public static final SKIP_INTERCEPT_PACKAGE:Ljava/lang/String; = "com.miui.gallery"

.field private static final START_ACTIVITY_CALLEE_PKGNAME:Ljava/lang/String; = "CalleePkgName"

.field private static final START_ACTIVITY_CALLER_PKGNAME:Ljava/lang/String; = "CallerPkgName"

.field private static final START_ACTIVITY_USERID:Ljava/lang/String; = "UserId"

.field private static final TAG:Ljava/lang/String; = "SecurityManager"

.field private static sActivityFinishMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mService:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x13

    const-class v1, Lmiui/security/SecurityManager;

    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lmiui/security/SecurityManager;->-assertionsDisabled:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v6, :cond_2f

    :try_start_10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_3a

    const-class v1, Landroid/app/Activity;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    :goto_29
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_2f} :catch_4e

    :cond_2f
    :goto_2f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v1, v6, :cond_39

    const-string/jumbo v1, "sechook"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_39
    return-void

    :cond_3a
    :try_start_3a
    const-class v1, Landroid/app/Activity;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4d} :catch_4e

    goto :goto_29

    :catch_4e
    move-exception v0

    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, " SecurityManager static init error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public constructor <init>(Lmiui/security/ISecurityManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    return-void
.end method

.method private activityFinish(Landroid/app/Activity;)V
    .registers 7

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    :try_start_a
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_41

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_25

    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    :goto_24
    return-void

    :cond_25
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_35} :catch_36

    goto :goto_24

    :catch_36
    move-exception v0

    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, " FinishMethod.invoke error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_36

    goto :goto_24
.end method

.method public static checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z
    .registers 12

    const/4 v5, 0x0

    sget-boolean v4, Lmiui/security/SecurityManager;->-assertionsDisabled:Z

    if-nez v4, :cond_d

    if-nez p1, :cond_d

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    return v5

    :cond_1c
    array-length v7, v1

    move v6, v5

    :goto_1e
    if-ge v6, v7, :cond_37

    aget-object v0, v1, v6

    array-length v8, p1

    move v4, v5

    :goto_24
    if-ge v4, v8, :cond_33

    aget-object v3, p1, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    const/4 v4, 0x1

    return v4

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_33
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_1e

    :cond_37
    return v5
.end method

.method private static checkTime(JLjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    const-string/jumbo v2, "SecurityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    return-void
.end method

.method public static getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;
    .registers 15

    const/high16 v8, 0x20000000

    const/high16 v7, 0x8000000

    const/high16 v6, 0x10000000

    const/high16 v5, 0x2000000

    const/4 v4, 0x0

    const-string/jumbo v0, "miui.intent.action.CHECK_ACCESS_CONTROL"

    if-nez p0, :cond_11

    const-string/jumbo v0, "com.miui.gamebooster.action.ACCESS_WINDOWCALLACTIVITY"

    :cond_11
    const-string/jumbo v2, "com.miui.securitycenter"

    const-string/jumbo v3, "is_pad"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string/jumbo v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    const-string/jumbo v2, "com.android.settings"

    :cond_23
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_77

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_42

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_42
    const/high16 v3, 0x1000000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p4, :cond_70

    if-ltz p3, :cond_4e

    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_4e
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_69

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_58
    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_5e
    const/16 v3, 0x3e7

    if-ne p5, v3, :cond_68

    const-string/jumbo v3, "originating_uid"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_68
    return-object v1

    :cond_69
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_58

    :cond_70
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_58

    :cond_77
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_5e
.end method

.method public static getUserHandle(I)I
    .registers 2

    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    return p0
.end method

.method private static native hook()V
.end method

.method public static init()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    invoke-static {}, Lmiui/security/SecurityManager;->hook()V

    :cond_9
    return-void
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->activityResume(Landroid/content/Intent;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public addAccessControlPassForUser(Ljava/lang/String;I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->addAccessControlPassForUser(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "addAccessControlPassForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addMiuiFirewallSharedUid(I)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->addMiuiFirewallSharedUid(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkAccessControl(Landroid/app/Activity;I)V
    .registers 15

    if-eqz p1, :cond_90

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_90

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "com.miui.gallery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "com.miui.gallery.activity.ExternalPhotoPageActivity"

    invoke-virtual {p1}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    :try_start_3b
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    if-eqz v10, :cond_4f

    const-string/jumbo v0, "skip_interception"

    const-string/jumbo v2, "skip_interception"

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v11, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_4f} :catch_5c

    :cond_4f
    :goto_4f
    invoke-virtual {p0, v11}, Lmiui/security/SecurityManager;->activityResume(Landroid/content/Intent;)I

    move-result v8

    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_5b

    and-int/lit8 v0, v8, 0x2

    if-nez v0, :cond_67

    :cond_5b
    return-void

    :catch_5c
    move-exception v7

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v2, "checkAccessControl sourceIntent"

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4f

    :cond_67
    and-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_73

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-direct {p0, p1}, Lmiui/security/SecurityManager;->activityFinish(Landroid/app/Activity;)V

    return-void

    :cond_73
    and-int/lit8 v0, v8, 0x4

    if-eqz v0, :cond_78

    return-void

    :cond_78
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v0, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    const/4 v0, -0x1

    const/4 v2, 0x0

    :try_start_8d
    invoke-virtual {p1, v9, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_90
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8d .. :try_end_90} :catch_91

    :cond_90
    :goto_90
    return-void

    :catch_91
    move-exception v6

    const-string/jumbo v0, "SecurityManager"

    const-string/jumbo v2, "checkAccessControl"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    :goto_7
    return v1

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2, p3}, Lmiui/security/ISecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    :goto_7
    return v1

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lmiui/security/ISecurityManager;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x0

    :try_start_5
    iget-object v4, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v4, p1, p2, p3, p4}, Lmiui/security/ISecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_12

    move-result v1

    :goto_b
    const-string/jumbo v4, "checkAllowStartActivity"

    invoke-static {v2, v3, v4}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    return v1

    :catch_12
    move-exception v0

    goto :goto_b
.end method

.method public checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 7

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "checkGameBoosterAntimsgPassAsUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public finishAccessControl(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lmiui/security/ISecurityManager;->finishAccessControl(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public finishAccessControl(Ljava/lang/String;I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->finishAccessControl(Ljava/lang/String;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "finishAccessControl has failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAccessControlPasswordType()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lmiui/security/ISecurityManager;->getAccessControlPasswordType(I)Ljava/lang/String;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    return-object v1

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAllPrivacyApps(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getAllPrivacyApps(I)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAppPermissionControlOpen(I)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getAppPermissionControlOpen(I)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    :catch_b
    move-exception v0

    return v1
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    :goto_7
    return v1

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    :goto_7
    return v1

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    :goto_7
    return v1

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    return v1

    :catch_8
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "getApplicationMaskNotificationEnabledAsUser exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;
    .registers 12

    if-eqz p1, :cond_f

    instance-of v4, p1, Landroid/app/Activity;

    :goto_4
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;
    .registers 15

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p0, p1, p6}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    :cond_b
    return-object v2

    :cond_c
    const/4 v7, 0x0

    :try_start_d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1, p6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_42

    move-result-object v7

    :goto_16
    if-nez v7, :cond_19

    return-object v2

    :cond_19
    if-eqz p3, :cond_26

    if-eqz v7, :cond_26

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_26

    :cond_25
    return-object v2

    :cond_26
    invoke-virtual {p0, p2, p3, p6}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    if-nez v0, :cond_25

    if-eqz p3, :cond_37

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-nez v0, :cond_25

    :cond_37
    const/4 v0, 0x1

    move-object v1, p2

    move-object v2, p3

    move v3, p5

    move v4, p4

    move v5, p6

    invoke-static/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :catch_42
    move-exception v6

    goto :goto_16
.end method

.method public getCheckGameBoosterAntimsgIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;
    .registers 16

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_15

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {p0, p7}, Lmiui/security/SecurityManager;->isGameBoosterActived(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    :cond_15
    return-object v3

    :cond_16
    const/4 v7, 0x0

    :try_start_17
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p3, v2, p7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1f} :catch_34

    move-result-object v7

    :goto_20
    if-nez v7, :cond_23

    return-object v3

    :cond_23
    invoke-virtual {p0, p3, p4, p7}, Lmiui/security/SecurityManager;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-object v3

    :cond_2a
    move-object v1, p3

    move-object v2, p4

    move v3, p6

    move v4, p5

    move v5, p7

    invoke-static/range {v0 .. v5}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :catch_34
    move-exception v6

    goto :goto_20
.end method

.method public getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;
    .registers 24

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {p1, v0, v1, v2, v3}, Lmiui/security/AppRunningControlManager;->getBlockActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_f

    return-object v12

    :cond_f
    invoke-virtual/range {p0 .. p10}, Lmiui/security/SecurityManager;->getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_16

    return-object v12

    :cond_16
    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p9

    invoke-virtual/range {v4 .. v11}, Lmiui/security/SecurityManager;->getCheckGameBoosterAntimsgIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_2b

    return-object v12

    :cond_2b
    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-virtual/range {v4 .. v10}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v12

    return-object v12
.end method

.method public getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;
    .registers 22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    if-eqz p5, :cond_12

    if-nez p8, :cond_12

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v7

    if-nez v7, :cond_12

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v7, :cond_14

    :cond_12
    const/4 v7, 0x0

    return-object v7

    :cond_14
    if-nez p2, :cond_3a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x0

    return-object v7

    :cond_1e
    :try_start_1e
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v7, p3, v10, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_2f

    move-result-object p2

    :goto_2b
    if-nez p2, :cond_3a

    const/4 v7, 0x0

    return-object v7

    :catch_2f
    move-exception v5

    const-string/jumbo v7, "SecurityManager"

    const-string/jumbo v10, "getCheckStartActivityIntent"

    invoke-static {v7, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    :cond_3a
    iget v7, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-nez v7, :cond_46

    iget v7, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x2710

    if-ge v7, v10, :cond_48

    :cond_46
    const/4 v7, 0x0

    return-object v7

    :cond_48
    const/4 v3, 0x0

    :try_start_49
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v10, 0x0

    move/from16 v0, p9

    invoke-interface {v7, p4, v10, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_53} :catch_58

    move-result-object v3

    :goto_54
    if-nez v3, :cond_63

    const/4 v7, 0x0

    return-object v7

    :catch_58
    move-exception v5

    const-string/jumbo v7, "SecurityManager"

    const-string/jumbo v10, "getCheckStartActivityIntent"

    invoke-static {v7, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    :cond_63
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-nez v7, :cond_6f

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x2710

    if-ge v7, v10, :cond_71

    :cond_6f
    const/4 v7, 0x0

    return-object v7

    :cond_71
    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_87

    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p5

    move/from16 v1, p9

    invoke-virtual {p0, v7, p4, v0, v1}, Lmiui/security/SecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v7

    if-eqz v7, :cond_89

    :cond_87
    const/4 v7, 0x0

    return-object v7

    :cond_89
    const-string/jumbo v2, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    const-string/jumbo v7, "is_pad"

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_98

    const/4 v7, 0x0

    return-object v7

    :cond_98
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "CallerPkgName"

    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "CalleePkgName"

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "UserId"

    move/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v7, 0x800000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v7, "com.miui.securitycenter"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_ea

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x2000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_d0

    const/high16 v7, 0x2000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_d0
    const/high16 v7, 0x1000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p6, :cond_f1

    if-ltz p7, :cond_e2

    const/high16 v7, 0x2000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_e2
    :goto_e2
    const-string/jumbo v7, "android.intent.extra.INTENT"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_ea
    const-string/jumbo v7, "getCheckStartActivityIntent"

    invoke-static {v8, v9, v7}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    return-object v6

    :cond_f1
    const/high16 v7, 0x10000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_e2
.end method

.method public getIncompatibleAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getIncompatibleAppList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getPackageNameByPid(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getSysAppCracked()I
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getSysAppCracked()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTopActivity()Landroid/os/IBinder;
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getTopActivity()Landroid/os/IBinder;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .registers 3

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getWakePathComponents(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathComponent;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1}, Lmiui/security/ISecurityManager;->getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_a

    return-object v3

    :cond_a
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "security manager has died."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getWakeUpTime(Ljava/lang/String;)J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    return-wide v2

    :catch_7
    move-exception v0

    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->grantRuntimePermission(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public haveAccessControlPassword()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lmiui/security/ISecurityManager;->haveAccessControlPassword(I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    return v1

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAccessControlActived(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isAccessControlActived(Landroid/content/Context;I)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_lock_enabled"

    invoke-static {v2, v3, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public isAllowStartService(Landroid/content/Intent;I)Z
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->isAllowStartService(Landroid/content/Intent;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAppHide()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->isAppHide()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAppPrivacyEnabled(Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->isAppPrivacyEnabled(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isFunctionOpen()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->isFunctionOpen()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isGameBoosterActived(I)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getGameMode(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "isGameBoosterActived exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isPrivacyApp(Ljava/lang/String;I)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, p1, p2}, Lmiui/security/ISecurityManager;->isPrivacyApp(Ljava/lang/String;I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    return v1

    :catch_8
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "security manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isRestrictedAppNet(Landroid/content/Context;)Z
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, v1}, Lmiui/security/ISecurityManager;->isRestrictedAppNet(Ljava/lang/String;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    return v2

    :catch_b
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "security manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isValidDevice()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->isValidDevice()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public moveTaskToStack(IIZ)I
    .registers 8

    const-string/jumbo v1, "SecurityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveTaskToStack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isOnTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_30
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->moveTaskToStack(IIZ)I
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_37

    move-result v1

    return v1

    :catch_37
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->needFinishAccessControl(Landroid/os/IBinder;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->pushUpdatePkgsData(Ljava/util/List;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "pushWakePathConfirmDialogWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathWhiteList(Ljava/util/List;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeWakePathData(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->removeWakePathData(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)I
    .registers 7

    const-string/jumbo v1, "SecurityManager"

    const-string/jumbo v2, "resizeTask"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_9
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->resizeTask(ILandroid/graphics/Rect;I)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    return v1

    :catch_10
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "saveIcon exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Lmiui/security/ISecurityManager;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAppHide(Z)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setAppHide(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAppPermissionControlOpen(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setAppPermissionControlOpen(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setAppPrivacyStatus(Ljava/lang/String;Z)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setAppPrivacyStatus(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setApplicationAccessControlEnabledForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setApplicationMaskNotificationEnabledForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setCoreRuntimePermissionEnabled(ZI)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCurrentNetworkState(I)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setCurrentNetworkState(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "setGameBoosterIBinder exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIncompatibleAppList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setIncompatibleAppList(Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;III)Z
    .registers 8

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lmiui/security/ISecurityManager;->setMiuiFirewallRule(Ljava/lang/String;III)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPrivacyApp(Ljava/lang/String;IZ)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setPrivacyApp(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->setTrackWakePathCallListLogEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setWakeUpTime(Ljava/lang/String;J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, v1, p2, p3}, Lmiui/security/ISecurityManager;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    return v2

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    return v2
.end method

.method public stopInterceptSmsBySender()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->stopInterceptSmsBySender()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    return v1
.end method

.method public watchGreenGuardProcess()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->watchGreenGuardProcess()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeAppHideConfig(Z)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->writeAppHideConfig(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
