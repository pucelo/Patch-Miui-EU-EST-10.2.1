.class public Lmiui/security/WakePathChecker;
.super Ljava/lang/Object;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathChecker$WakePathRuleData;
    }
.end annotation


# static fields
.field private static final CALL_LIST_LOG_MAP_MAX_SIZE:I = 0xc8

.field private static final GET_CONTENT_PROVIDER_RULE_INFOS_LIST_INDEX:I = 0x2

.field private static final RULE_INFOS_LIST_COUNT:I = 0x4

.field private static final SEND_BROADCAST_RULE_INFOS_LIST_INDEX:I = 0x1

.field private static final START_ACTIVITY_RULE_INFOS_LIST_INDEX:I = 0x0

.field private static final START_SERVICE_RULE_INFOS_LIST_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLEE:I = 0x1

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLER:I = 0x2

.field private static sInstance:Lmiui/security/WakePathChecker;


# instance fields
.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mBindServiceCheckActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallListLogLocker:Ljava/lang/Object;

.field mCallListLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/app/IWakePathCallback;

.field mLauncherPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTrackCallListLogEnabled:Z

.field private mUpdatePkgsEnable:Z

.field private mUpdatePkgsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWakePathRuleDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathChecker$WakePathRuleData;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathCallerWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lmiui/security/WakePathChecker;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/security/WakePathChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v1, :cond_51

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    :cond_51
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string/jumbo v2, "com.mfashiongallery.express"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string/jumbo v2, "com.mi.dlabs.vr.thor"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string/jumbo v2, "com.miui.home"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string/jumbo v2, "com.miui.securitycenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    const-string/jumbo v2, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    const-string/jumbo v2, "android.media.browse.MediaBrowserService"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-void
.end method

.method public static declared-synchronized getInstance()Lmiui/security/WakePathChecker;
    .registers 2

    const-class v1, Lmiui/security/WakePathChecker;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    if-nez v0, :cond_e

    new-instance v0, Lmiui/security/WakePathChecker;

    invoke-direct {v0}, Lmiui/security/WakePathChecker;-><init>()V

    sput-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    :cond_e
    sget-object v0, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;
    .registers 6

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    :cond_9
    const/4 p1, 0x0

    :cond_a
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_d
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    if-nez v0, :cond_29

    new-instance v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    invoke-direct {v0, p0}, Lmiui/security/WakePathChecker$WakePathRuleData;-><init>(Lmiui/security/WakePathChecker;)V

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit v2

    return-object v0

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 18

    iget-object v11, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_f
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-WAKEPATH trackCallListInfo: invalid parameter caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callee="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_cd

    monitor-exit v11

    return-void

    :cond_37
    :try_start_37
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_c5

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_cd

    move-result v2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_47

    monitor-exit v11

    return-void

    :cond_47
    :try_start_47
    invoke-static/range {p1 .. p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_9f

    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-WAKEPATH trackCallListInfo: hashCode == 0,(action ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " className="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callee="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " wakeType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_47 .. :try_end_9d} :catchall_cd

    monitor-exit v11

    return-void

    :cond_9f
    :try_start_9f
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/security/WakePathRuleInfo;
    :try_end_ab
    .catchall {:try_start_9f .. :try_end_ab} :catchall_cd

    if-nez v10, :cond_c5

    :try_start_ad
    new-instance v1, Lmiui/security/WakePathRuleInfo;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lmiui/security/WakePathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_ba} :catch_c7
    .catchall {:try_start_ad .. :try_end_ba} :catchall_cd

    :goto_ba
    if-eqz v1, :cond_c5

    :try_start_bc
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c5
    .catchall {:try_start_bc .. :try_end_c5} :catchall_cd

    :cond_c5
    monitor-exit v11

    return-void

    :catch_c7
    move-exception v8

    :try_start_c8
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cd

    move-object v1, v10

    goto :goto_ba

    :catchall_cd
    move-exception v2

    monitor-exit v11

    throw v2
.end method

.method private updateLauncherPackageNames(Landroid/content/Context;)V
    .registers 14

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.category.HOME"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v9, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateLauncherPackageNames ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_50} :catch_51

    goto :goto_20

    :catch_51
    move-exception v0

    sget-object v9, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateLauncherPackageNames"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5a
    iget-object v10, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v10

    :try_start_5d
    iget-object v9, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    if-eqz v5, :cond_83

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_83

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catchall {:try_start_5d .. :try_end_7f} :catchall_80

    goto :goto_6e

    :catchall_80
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_83
    monitor-exit v10

    return-void
.end method

.method private wakeTypeToRuleInfosListIndex(I)I
    .registers 4

    const/4 v0, -0x1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    const/4 v0, 0x3

    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    const/4 v1, 0x4

    if-ne p1, v1, :cond_11

    const/4 v0, 0x2

    goto :goto_6

    :cond_11
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_6
.end method


# virtual methods
.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    return v4

    :cond_f
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v3

    :try_start_12
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2a

    move-result v2

    if-eqz v2, :cond_1c

    monitor-exit v3

    return v4

    :cond_1c
    monitor-exit v3

    iget-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v3

    :try_start_20
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_3b

    move-result v2

    if-eqz v2, :cond_2d

    monitor-exit v3

    return v4

    :catchall_2a
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2d
    monitor-exit v3

    iget-object v3, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v3

    :try_start_31
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_5a

    move-result v2

    if-eqz v2, :cond_3e

    monitor-exit v3

    return v4

    :catchall_3b
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3e
    monitor-exit v3

    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v1

    monitor-enter v1

    :try_start_44
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v2, :cond_5d

    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5d

    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_75

    move-result v2

    if-eqz v2, :cond_5d

    monitor-exit v1

    return v4

    :catchall_5a
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_5d
    :try_start_5d
    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz v2, :cond_73

    iget-object v2, v1, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_73

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_75

    move-result v2

    if-eqz v2, :cond_73

    monitor-exit v1

    return v4

    :cond_73
    monitor-exit v1

    return v5

    :catchall_75
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z
    .registers 14

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    return v3

    :cond_a
    const-string/jumbo v4, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v5, -0x1

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_30
    if-eqz p4, :cond_4c

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4c

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_48

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_48
    iget-object v0, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_4c
    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    return v3

    :cond_53
    const/4 v6, 0x2

    move-object v0, p0

    move-object v3, p2

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v5, "========================================WAKEPATH DUMP BEGIN========================================"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_9
    iget-object v6, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_a9

    :try_start_c
    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_e8

    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v5, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathChecker$WakePathRuleData;

    const-string/jumbo v5, "----------------------------------------"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "userId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v5, :cond_9f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whitelist="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_72
    const/4 v1, 0x0

    :goto_73
    const/4 v5, 0x4

    if-ge v1, v5, :cond_1e

    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_b9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rule info index="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " size=0"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_9f
    const-string/jumbo v5, "whitelist is null."

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_c .. :try_end_a5} :catchall_a6

    goto :goto_72

    :catchall_a6
    move-exception v5

    :try_start_a7
    monitor-exit v6

    throw v5
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_a9} :catch_a9

    :catch_a9
    move-exception v0

    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "dump"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b2
    const-string/jumbo v5, "========================================WAKEPATH DUMP END========================================"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b9
    :try_start_b9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "rule info index="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_b9 .. :try_end_e7} :catchall_a6

    goto :goto_9c

    :cond_e8
    :try_start_e8
    monitor-exit v6
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_e9} :catch_a9

    goto :goto_b2
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-boolean v2, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v2, :cond_1f

    iget-object v3, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_1e

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_22

    :try_start_18
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_2b

    move-object v0, v1

    :cond_1e
    monitor-exit v3

    :cond_1f
    if-nez v0, :cond_25

    return-object v4

    :catchall_22
    move-exception v2

    :goto_23
    monitor-exit v3

    throw v2

    :cond_25
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2

    :catchall_2b
    move-exception v2

    move-object v0, v1

    goto :goto_23
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method public matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 28

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-static {v0, v1}, Lmiui/security/AppRunningControlManager;->matchRule(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6a

    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AppRunningControl, Reject userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " caller= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " callee= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " classname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " wakeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    return v5

    :cond_6a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v5, :cond_7f

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lmiui/security/WakePathChecker;->trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7f
    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v18

    monitor-enter v18

    :try_start_88
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b0

    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v5, :cond_d0

    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d0

    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    move-object/from16 v0, p4

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d0

    :cond_b0
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_b4
    .catchall {:try_start_88 .. :try_end_b4} :catchall_cd

    if-eqz v5, :cond_c5

    :try_start_b6
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_c5} :catch_c8
    .catchall {:try_start_b6 .. :try_end_c5} :catchall_cd

    :cond_c5
    :goto_c5
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    :catch_c8
    move-exception v12

    :try_start_c9
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_c5

    :catchall_cd
    move-exception v5

    monitor-exit v18

    throw v5

    :cond_d0
    const/16 v5, 0x8

    move/from16 v0, p6

    if-ne v0, v5, :cond_16d

    if-lez p5, :cond_16d

    if-eqz p4, :cond_16d

    :try_start_da
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16d

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_16d

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v5, :cond_16d

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_f7
    .catchall {:try_start_da .. :try_end_f7} :catchall_cd

    move-result-wide v10

    :try_start_f8
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v6, 0x2718

    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-interface {v5, v6, v0, v1}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_16a

    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUILOG-AutoStart, BindService Reject userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " caller= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " callee= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " classname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " wakeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_164} :catch_185
    .catchall {:try_start_f8 .. :try_end_164} :catchall_192

    :try_start_164
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_cd

    const/4 v5, 0x1

    monitor-exit v18

    return v5

    :cond_16a
    :try_start_16a
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_16d
    :goto_16d
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-direct {v0, v1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v15

    if-ltz v15, :cond_17a

    const/4 v5, 0x4

    if-lt v15, v5, :cond_197

    :cond_17a
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "MIUILOG-WAKEPATH invalid parameter"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catchall {:try_start_16a .. :try_end_182} :catchall_cd

    const/4 v5, 0x0

    monitor-exit v18

    return v5

    :catch_185
    move-exception v13

    :try_start_186
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "checkOperation"

    invoke-static {v5, v6, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18e
    .catchall {:try_start_186 .. :try_end_18e} :catchall_192

    :try_start_18e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_16d

    :catchall_192
    move-exception v5

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_197
    move-object/from16 v0, v18

    iget-object v5, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1ac

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I
    :try_end_1a9
    .catchall {:try_start_18e .. :try_end_1a9} :catchall_cd

    move-result v5

    if-nez v5, :cond_1af

    :cond_1ac
    const/4 v5, 0x0

    monitor-exit v18

    return v5

    :cond_1af
    :try_start_1af
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    const/4 v14, 0x0

    :goto_1b4
    move/from16 v0, v17

    if-ge v14, v0, :cond_24d

    move-object/from16 v0, v19

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/security/WakePathRuleInfo;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Lmiui/security/WakePathRuleInfo;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_249

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_1d4
    .catchall {:try_start_1af .. :try_end_1d4} :catchall_cd

    if-eqz v5, :cond_1e5

    :try_start_1d6
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onRejectCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1e5
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1e5} :catch_244
    .catchall {:try_start_1d6 .. :try_end_1e5} :catchall_cd

    :cond_1e5
    :goto_1e5
    :try_start_1e5
    sget-object v5, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIUILOG-WAKEPATH: call was rejected by wakepath. userId= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p7

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " caller= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " callee= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " classname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " wakeType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_241
    .catchall {:try_start_1e5 .. :try_end_241} :catchall_cd

    const/4 v5, 0x1

    monitor-exit v18

    return v5

    :catch_244
    move-exception v12

    :try_start_245
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e5

    :cond_249
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1b4

    :cond_24d
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;
    :try_end_251
    .catchall {:try_start_245 .. :try_end_251} :catchall_cd

    if-eqz v5, :cond_262

    :try_start_253
    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-interface {v5, v0, v1, v2, v3}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_262
    .catch Landroid/os/RemoteException; {:try_start_253 .. :try_end_262} :catch_265
    .catchall {:try_start_253 .. :try_end_262} :catchall_cd

    :cond_262
    :goto_262
    monitor-exit v18

    const/4 v5, 0x0

    return v5

    :catch_265
    move-exception v12

    :try_start_266
    invoke-virtual {v12}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_269
    .catchall {:try_start_266 .. :try_end_269} :catchall_cd

    goto :goto_262
.end method

.method public onPackageAdded(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lmiui/security/WakePathChecker$1;

    invoke-direct {v0, p0, p1}, Lmiui/security/WakePathChecker$1;-><init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/security/WakePathChecker$1;->start()V

    return-void
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-boolean p2, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v1

    :try_start_e
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1a

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    :goto_19
    monitor-exit v1

    :cond_1a
    return-void

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1a

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v1

    :try_start_24
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2f

    goto :goto_19

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pushWakePathRuleInfos(ILjava/util/List;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v5, 0x0

    sget-object v6, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "MIUILOG-WAKEPATH pushWakePathRuleInfos: wakeType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p2, :cond_77

    :goto_27
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v4

    monitor-enter v4

    const/16 v5, 0x11

    if-ne p1, v5, :cond_7c

    :try_start_3b
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz p2, :cond_8a

    const/4 v0, 0x0

    :goto_45
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_8a

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathRuleInfo;

    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_6d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCallerExpress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catchall {:try_start_3b .. :try_end_74} :catchall_8c

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_77
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_27

    :cond_7c
    :try_start_7c
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v1

    if-ltz v1, :cond_8a

    const/4 v5, 0x4

    if-ge v1, v5, :cond_8a

    iget-object v5, v4, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_8c

    :cond_8a
    monitor-exit v4

    return-void

    :catchall_8c
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-WAKEPATH pushWakePathWhiteList: userId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_30

    const/4 v1, 0x0

    :goto_1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    monitor-enter v0

    :try_start_2c
    iput-object p1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;
    :try_end_2e
    .catchall {:try_start_2c .. :try_end_2e} :catchall_35

    monitor-exit v0

    return-void

    :cond_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1c

    :catchall_35
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .registers 2

    iput-object p1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    return-void
.end method

.method public removeWakePathData(I)V
    .registers 6

    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MIUILOG-WAKEPATH removeWakePathData: userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_21

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v1

    if-eqz v1, :cond_22

    :cond_21
    return-void

    :cond_22
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_25
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathChecker$WakePathRuleData;

    if-eqz v0, :cond_38

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit v2

    return-void

    :catchall_3a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .registers 4

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iput-boolean p1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-nez v0, :cond_19

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1a

    :cond_18
    monitor-exit v1

    :cond_19
    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updatePath(Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)V
    .registers 9

    const/4 v1, 0x1

    if-ne p3, v1, :cond_5

    if-eqz p4, :cond_6

    :cond_5
    return-void

    :cond_6
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v2

    :try_start_16
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    iget-object v3, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_2c

    move-result v1

    if-nez v1, :cond_22

    monitor-exit v2

    return-void

    :cond_22
    monitor-exit v2

    :try_start_23
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    iget-object v2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v3, p1, v2}, Lcom/android/internal/app/IWakePathCallback;->onUpdateCall(ILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2f

    :cond_2b
    :goto_2b
    return-void

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2f
    move-exception v0

    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePath error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
