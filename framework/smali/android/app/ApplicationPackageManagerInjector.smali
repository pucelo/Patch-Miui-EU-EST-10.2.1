.class public Landroid/app/ApplicationPackageManagerInjector;
.super Ljava/lang/Object;
.source "ApplicationPackageManagerInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManagerInjector"

.field private static final sNetflixPackage:Ljava/lang/String; = "com.netflix.mediaclient"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookGetBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Z
    .registers 4

    instance-of v0, p0, Lmiui/maml/MamlDrawable;

    if-eqz v0, :cond_b

    check-cast p0, Lmiui/maml/MamlDrawable;

    invoke-virtual {p0, p1, p2}, Lmiui/maml/MamlDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static hookGetPackageInfo(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Landroid/content/pm/PackageInfo;
    .registers 7

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_5

    return-object p1

    :cond_5
    if-eqz p1, :cond_14

    const-string/jumbo v1, "com.netflix.mediaclient"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_15

    :cond_14
    return-object p1

    :cond_15
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    return-object p1

    :cond_1e
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v0, v1, :cond_31

    return-object p1

    :cond_31
    const-string/jumbo v1, "ApplicationPackageManagerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "HookPackageInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " with version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from appId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v1

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v1, v2, :cond_7f

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_7f
    return-object p1
.end method
