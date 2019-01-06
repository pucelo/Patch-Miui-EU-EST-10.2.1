.class public Landroid/webkit/UserPackage;
.super Ljava/lang/Object;
.source "UserPackage.java"


# instance fields
.field private final mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mUserInfo:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;Landroid/content/pm/PackageInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/UserPackage;->mUserInfo:Landroid/content/pm/UserInfo;

    iput-object p2, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method private static getAllUsers(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/webkit/UserPackage;->getAllUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    :try_start_1e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, p1, p2, v7}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_27} :catch_32

    move-result-object v1

    :goto_28
    new-instance v6, Landroid/webkit/UserPackage;

    invoke-direct {v6, v2, v1}, Landroid/webkit/UserPackage;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_31
    return-object v4

    :catch_32
    move-exception v0

    goto :goto_28
.end method

.method public static hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getUserInfo()Landroid/content/pm/UserInfo;
    .registers 2

    iget-object v0, p0, Landroid/webkit/UserPackage;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public isEnabledPackage()Z
    .registers 2

    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return v0
.end method

.method public isInstalledPackage()Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method
