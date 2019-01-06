.class public Landroid/content/pm/PackageManagerInjector;
.super Ljava/lang/Object;
.source "PackageManagerInjector.java"


# static fields
.field private static sCtsPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    sget-object v0, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    const-string/jumbo v1, "com.android.cts.usepermission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    const-string/jumbo v1, "com.android.cts.permissionapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    const-string/jumbo v1, "android.permission.cts.appthatrequestpermission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionControllerPackageName()Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v3, :cond_16

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_1f

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_1f

    :cond_16
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1f
    sget-object v3, Landroid/content/pm/PackageManagerInjector;->sCtsPackage:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_2b

    move-result v3

    if-nez v3, :cond_16

    :goto_27
    const-string/jumbo v3, "com.lbe.security.miui"

    return-object v3

    :catch_2b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
