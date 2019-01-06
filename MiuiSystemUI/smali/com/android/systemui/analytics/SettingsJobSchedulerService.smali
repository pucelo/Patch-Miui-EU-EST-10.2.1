.class public Lcom/android/systemui/analytics/SettingsJobSchedulerService;
.super Landroid/app/job/JobService;
.source "SettingsJobSchedulerService.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasNavigationBar:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/analytics/SettingsJobSchedulerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->settingsStatusMonitor()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private settingsStatusMonitor()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    sget-boolean v6, Lcom/android/systemui/Constants;->SUPPORT_AOD:Z

    if-eqz v6, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "aod_mode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "aod_mode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "aod_mode_time"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "aod_mode_time"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "aod"

    invoke-static {v6, v3}, Lcom/android/systemui/AnalyticsHelper;->trackSettings(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    sget-boolean v6, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v6, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-ge v6, v7, :cond_1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "force_black"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "force_black"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "notch"

    invoke-static {v6, v3}, Lcom/android/systemui/AnalyticsHelper;->trackSettings(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHasNavigationBar:Z

    if-eqz v6, :cond_2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "force_fsg_nav_bar"

    invoke-static {v0, v6}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v6, "fullScreen"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_gesture_appswitch_feature"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v6, "appswitch"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "systemui_settings_status"

    invoke-static {v6, v3}, Lcom/android/systemui/AnalyticsHelper;->trackSettingsCountEvent(Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->trackMaxAspectChangedApps()V

    :cond_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sget-boolean v6, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-eqz v6, :cond_4

    const-string/jumbo v5, "shortcut_international"

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "status_bar_notification_shade_shortcut"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "notification_shade_shortcut"

    invoke-static {v6, v4}, Lcom/android/systemui/AnalyticsHelper;->trackSettings(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getNotificationStyle()I

    move-result v6

    invoke-static {v6}, Lcom/android/systemui/AnalyticsHelper;->trackSettingsNotificationStyle(I)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "shortcut"

    goto :goto_1
.end method

.method private trackMaxAspectChangedApps()V
    .locals 11

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, v1, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_0

    invoke-static {v2}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v2}, Lmiui/os/MiuiInit;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    :cond_1
    if-eqz v5, :cond_0

    const-string/jumbo v9, "maxaspect_off"

    invoke-static {v9, v2}, Lcom/android/systemui/AnalyticsHelper;->trackMaxAspectChangedEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_1

    const/4 v9, 0x5

    if-eq v8, v9, :cond_3

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    :cond_3
    if-nez v5, :cond_0

    const-string/jumbo v9, "maxaspect_on"

    invoke-static {v9, v2}, Lcom/android/systemui/AnalyticsHelper;->trackMaxAspectChangedEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private trackSettings()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/analytics/SettingsJobSchedulerService$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService$1;-><init>(Lcom/android/systemui/analytics/SettingsJobSchedulerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "SettingsJobSchedulerService"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHandler:Landroid/os/Handler;

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHasNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/analytics/SettingsJobSchedulerService;->trackSettings()V

    const/4 v0, 0x0

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
