.class public Lcom/miui/server/enterprise/ApplicationManagerService;
.super Lcom/miui/enterprise/IApplicationManager$Stub;
.source "ApplicationManagerService.java"


# static fields
.field private static final ACTION_APP_RUNNING_BLOCK:Ljava/lang/String; = "com.miui.securitycore.APP_RUNNING_BLOCK"

.field private static final PACKAGE_SECURITY_CORE:Ljava/lang/String; = "com.miui.securitycore"

.field private static final TAG:Ljava/lang/String; = "Enterprise-App"


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

.field private mDisAllowRunningHandleIntent:Landroid/content/Intent;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method static synthetic -get0(Lcom/miui/server/enterprise/ApplicationManagerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/miui/enterprise/IApplicationManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v0, "ProcessManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessManagerService;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    const-string/jumbo v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.securitycore.APP_RUNNING_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.securitycore"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private forceCloseTask(Ljava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    const/16 v8, 0x3e9

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, p2}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    :cond_16
    if-eqz v6, :cond_1e

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v3, v0}, Lcom/miui/server/enterprise/ApplicationManagerService;->getResolveInfoFromTask(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_23

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_23

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget v8, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->removeTask(I)Z

    goto :goto_23

    :cond_4d
    return-void
.end method

.method private getAccessibilityServiceFromPackage(Ljava/lang/String;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.accessibilityservice.AccessibilityService"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v5, :cond_1f

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_40
    return-object v4
.end method

.method private getResolveInfoFromTask(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .registers 6

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_10

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_10
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method private readEnabeledAccessibilityService()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    return-object v7

    :cond_11
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x3a

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v4, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_20
    :goto_20
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_34
    return-object v2
.end method

.method private restoreAppRunningControl(I)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/server/enterprise/ApplicationManagerService;->getDisallowedRunningAppList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_15

    :cond_d
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    return-void

    :cond_15
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0, v2}, Lmiui/security/AppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public addTrustedAppStore(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_trusted_app_stores"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public bootComplete()V
    .registers 3

    const-string/jumbo v0, "Enterprise-App"

    const-string/jumbo v1, "ApplicationManagerService init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/enterprise/ApplicationManagerService;->restoreAppRunningControl(I)V

    return-void
.end method

.method public clearApplicationCache(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    return-void
.end method

.method public deletePackage(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;I)V
    .registers 8

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    const-string/jumbo v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2, p4}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method public enableAccessibilityService(Landroid/content/ComponentName;Z)V
    .registers 13

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/miui/server/enterprise/ApplicationManagerService;->getAccessibilityServiceFromPackage(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {p0}, Lcom/miui/server/enterprise/ApplicationManagerService;->readEnabeledAccessibilityService()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_19

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_19
    if-eqz p2, :cond_40

    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x3a

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_40
    invoke-interface {v2, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1e

    :cond_44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4f

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4f
    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enabled_accessibility_services"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v7, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "accessibility_enabled"

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_72

    :goto_6e
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_72
    const/4 v6, 0x1

    goto :goto_6e
.end method

.method public enableTrustedAppStore(ZI)V
    .registers 6

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ep_trusted_app_store_enabled"

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_d
    invoke-static {v1, v2, v0, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getApplicationBlackList(I)Ljava/util/List;
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

    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ep_app_black_list"

    invoke-static {v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getApplicationRestriction(I)I
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_app_restriction_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getApplicationSettings(Ljava/lang/String;I)I
    .registers 6

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getApplicationWhiteList(I)Ljava/util/List;
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

    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "ep_app_white_list"

    invoke-static {v1, v2, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getDisallowedRunningAppList(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_app_disallow_running_list"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedAppStore(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_trusted_app_stores"

    invoke-static {v0, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->parseListSettings(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public installPackage(Ljava/lang/String;ILandroid/content/pm/IPackageInstallObserver2;I)V
    .registers 11

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    const-string/jumbo v0, "Enterprise-App"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "install package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v4, "Enterprise"

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy;->installPackageAsUser(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    return-void
.end method

.method public installPackageWithPendingIntent(Ljava/lang/String;Landroid/app/PendingIntent;I)V
    .registers 10

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Lcom/miui/server/enterprise/ApplicationManagerService$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/miui/server/enterprise/ApplicationManagerService$1;-><init>(Lcom/miui/server/enterprise/ApplicationManagerService;ILandroid/app/PendingIntent;)V

    const-string/jumbo v4, "Enterprise"

    const/4 v3, 0x2

    move-object v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/server/enterprise/ApplicationManagerServiceProxy;->installPackageAsUser(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V

    return-void
.end method

.method public isTrustedAppStoreEnabled(I)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "ep_trusted_app_store_enabled"

    invoke-static {v2, v3, v1, p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12
.end method

.method public killProcess(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    return-void
.end method

.method public removeDeviceAdmin(Landroid/content/ComponentName;I)Z
    .registers 7

    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    :try_start_5
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    invoke-interface {v1, p1, p2}, Landroid/app/admin/IDevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    const-string/jumbo v1, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove device admin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_2d

    const/4 v1, 0x1

    return v1

    :catch_2d
    move-exception v0

    const-string/jumbo v1, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove device admin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setApplicationBlackList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_app_black_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setApplicationEnabled(Ljava/lang/String;ZI)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    if-eqz p2, :cond_14

    move v2, v3

    :goto_b
    const-string/jumbo v5, "Enterprise"

    move-object v1, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    return-void

    :cond_14
    const/4 v2, 0x2

    goto :goto_b
.end method

.method public setApplicationRestriction(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_app_restriction_mode"

    invoke-static {v0, v1, p1, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

.method public setApplicationSettings(Ljava/lang/String;II)V
    .registers 19

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    if-gez p2, :cond_37

    :cond_d
    const-string/jumbo v11, "Enterprise-App"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalidate param packageName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", flags:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/miui/enterprise/ApplicationHelper;->buildPackageSettingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v12, v0, v1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putInt(Landroid/content/Context;Ljava/lang/String;II)V

    and-int/lit8 v11, p2, 0x8

    if-eqz v11, :cond_172

    const-string/jumbo v11, "Enterprise-App"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "allowed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " auto start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "extra_permission"

    const-wide/16 v12, 0x4000

    invoke-virtual {v4, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v11, "extra_action"

    const/4 v12, 0x3

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "extra_package"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "content://com.lbe.security.miui.permmgr"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "6"

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :goto_9f
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.PACKAGE_ADDED"

    const-string/jumbo v12, "package"

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v11, "android.intent.extra.user_handle"

    move/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v11, "com.lbe.security.miui"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x10000000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    move/from16 v0, p3

    invoke-direct {v12, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mPMS:Lcom/android/server/pm/PackageManagerService;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v11, v0, v12, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    and-int/lit8 v11, p2, 0x10

    if-eqz v11, :cond_1a8

    const/4 v9, 0x1

    :goto_e0
    if-eqz v5, :cond_fb

    if-eqz v9, :cond_1ab

    const/4 v8, 0x0

    :goto_e5
    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v12, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0x2b

    move-object/from16 v0, p1

    invoke-virtual {v11, v13, v12, v0, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v12, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0x2726

    move-object/from16 v0, p1

    invoke-virtual {v11, v13, v12, v0, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_fb
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "userId"

    move/from16 v0, p3

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "pkgName"

    move-object/from16 v0, p1

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "bgControl"

    and-int/lit8 v11, p2, 0x1

    if-eqz v11, :cond_1ae

    const-string/jumbo v11, "noRestrict"

    :goto_11a
    invoke-virtual {v2, v12, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_11d
    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "content://com.miui.powerkeeper.configure"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "userTable"

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "userTableupdate"

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_138
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11d .. :try_end_138} :catch_1b3

    :goto_138
    and-int/lit8 v11, p2, 0x1

    if-eqz v11, :cond_1d2

    const/4 v11, 0x1

    :goto_13d
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1, v11}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v11

    const/16 v12, 0x1000

    invoke-virtual {v11, v12}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v10

    const/4 v7, 0x0

    and-int/lit8 v11, p2, 0x1

    if-eqz v11, :cond_1d5

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_163

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :cond_163
    :goto_163
    if-eqz v7, :cond_171

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v11

    const/16 v12, 0x1000

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v10, v13}, Lcom/android/server/am/ProcessPolicy;->addWhiteList(ILjava/util/List;Z)V

    :cond_171
    return-void

    :cond_172
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "extra_permission"

    const-wide/16 v12, 0x4000

    invoke-virtual {v4, v11, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v11, "extra_action"

    const/4 v12, 0x0

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "extra_package"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v11, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "content://com.lbe.security.miui.permmgr"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const-string/jumbo v13, "6"

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_9f

    :cond_1a8
    const/4 v9, 0x0

    goto/16 :goto_e0

    :cond_1ab
    const/4 v8, 0x3

    goto/16 :goto_e5

    :cond_1ae
    const-string/jumbo v11, "miuiAuto"

    goto/16 :goto_11a

    :catch_1b3
    move-exception v3

    const-string/jumbo v11, "Enterprise-App"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to process powerkeeper config for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_138

    :cond_1d2
    const/4 v11, 0x0

    goto/16 :goto_13d

    :cond_1d5
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_163

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_163
.end method

.method public setApplicationWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "ep_app_white_list"

    invoke-static {p1}, Lcom/miui/enterprise/settings/EnterpriseSettings;->generateListSettings(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setDeviceAdmin(Landroid/content/ComponentName;I)Z
    .registers 8

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    :try_start_6
    iget-object v1, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDevicePolicyManager:Landroid/app/admin/IDevicePolicyManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2, p2}, Landroid/app/admin/IDevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;ZI)V

    const-string/jumbo v1, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add device admin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2d} :catch_2e

    return v4

    :catch_2e
    move-exception v0

    const-string/jumbo v1, "Enterprise-App"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add device admin["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setDisallowedRunningAppList(Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/server/enterprise/ServiceUtils;->checkPermission(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_12

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/miui/server/enterprise/ApplicationManagerService;->forceCloseTask(Ljava/util/List;I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_19

    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_44

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_44
    iget-object v3, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "ep_app_disallow_running_list"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, p2}, Lcom/miui/enterprise/settings/EnterpriseSettings;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    :goto_5d
    return-void

    :cond_5e
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/server/enterprise/ApplicationManagerService;->mDisAllowRunningHandleIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1, v4}, Lmiui/security/AppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V

    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/security/AppRunningControlManager;->setBlackListEnable(Z)V

    goto :goto_5d
.end method
