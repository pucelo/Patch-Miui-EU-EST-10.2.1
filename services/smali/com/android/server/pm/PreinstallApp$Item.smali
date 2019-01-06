.class Lcom/android/server/pm/PreinstallApp$Item;
.super Ljava/lang/Object;
.source "PreinstallApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PreinstallApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# static fields
.field static final TYPE_CLUSTER:I = 0x2

.field static final TYPE_MONOLITHIC:I = 0x1


# instance fields
.field apkFile:Ljava/io/File;

.field app:Ljava/io/File;

.field packageName:Ljava/lang/String;

.field pkg:Landroid/content/pm/PackageParser$Package;

.field pkgLite:Landroid/content/pm/PackageParser$PackageLite;

.field type:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Landroid/content/pm/PackageParser$PackageLite;Landroid/content/pm/PackageParser$Package;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/PreinstallApp$Item;->app:Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/pm/PreinstallApp;->-wrap0(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iput-object p4, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    :goto_18
    iput v0, p0, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    return-void

    :cond_1b
    const/4 v0, 0x1

    goto :goto_18
.end method

.method static betterThan(Lcom/android/server/pm/PreinstallApp$Item;Lcom/android/server/pm/PreinstallApp$Item;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_13

    iget-object v2, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v2, v2, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v3, v3, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    if-le v2, v3, :cond_2d

    return v0

    :cond_13
    iget v2, p0, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    iget v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    if-le v2, v3, :cond_1a

    return v0

    :cond_1a
    iget v2, p0, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    iget v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->type:I

    if-ne v2, v3, :cond_2d

    iget-object v2, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v2, v2, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    iget-object v3, p1, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v3, v3, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    if-le v2, v3, :cond_2b

    :goto_2a
    return v0

    :cond_2b
    move v0, v1

    goto :goto_2a

    :cond_2d
    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PreinstallApp$Item;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PreinstallApp$Item;->apkFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PreinstallApp$Item;->pkgLite:Landroid/content/pm/PackageParser$PackageLite;

    iget v1, v1, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
