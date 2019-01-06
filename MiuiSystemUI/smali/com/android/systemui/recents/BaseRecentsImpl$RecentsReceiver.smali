.class public Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentsReceiver"
.end annotation


# instance fields
.field private final pkgsAllowCallClear:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.miui.home"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.securitycenter"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.touchassistant"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.snapshot"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.keyguard"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.systemui"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.mi.android.globallauncher"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.xiaomi.mihomemanager"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.miui.voiceassist"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    return-void
.end method

.method private doClear(Ljava/util/List;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$1;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showCleanEndMsg(J)V
    .locals 13

    const-wide/16 v10, 0x400

    const/4 v1, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v8, Lmiui/widget/CircleProgressBar;

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Lmiui/widget/CircleProgressBar;-><init>(Landroid/content/Context;)V

    new-array v2, v5, [I

    const v3, 0x7f080087

    aput v3, v2, v4

    new-array v3, v5, [I

    const v6, 0x7f080088

    aput v6, v3, v4

    const/4 v6, 0x0

    invoke-virtual {v8, v2, v3, v6}, Lmiui/widget/CircleProgressBar;->setDrawablesForLevels([I[I[I)V

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    div-long/2addr v2, v10

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Lmiui/widget/CircleProgressBar;->setMax(I)V

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v2

    div-long/2addr v2, v10

    sub-long/2addr v2, p1

    long-to-int v2, v2

    invoke-virtual {v8, v2}, Lmiui/widget/CircleProgressBar;->setProgress(I)V

    const-string/jumbo v2, "RecentsReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "totalPhysicalMemory:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d6

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v1, v1, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const v1, 0x7f120006

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-interface {v9, v8, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;

    move-object v3, p0

    move-object v4, v8

    move-object v5, v9

    move-wide v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver$2;-><init>(Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;Lmiui/widget/CircleProgressBar;Landroid/view/WindowManager;J)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v8, v2, v4, v5}, Lmiui/widget/CircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "com.android.systemui.taskmanager.Clear"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getSender()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "RecentsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive: senderName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->pkgsAllowCallClear:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "show_toast"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "protected_pkgnames"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string/jumbo v5, "clean_type"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/CleanInRecentsEvents;

    invoke-direct {v6}, Lcom/android/systemui/recents/events/ui/CleanInRecentsEvents;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v4, v2, v1}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->removeAllTask(ZLjava/util/List;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "RecentsReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not allow to call clear"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeAllTask(ZLjava/util/List;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long v6, v12, v14

    const-string/jumbo v11, "RecentsReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "freeMemoryAtFirst:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lmiui/util/HardwareInfo;->getFreeMemory()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v11, v11, Lcom/android/systemui/recents/BaseRecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v12

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    const/4 v14, -0x2

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v14, v15, v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;

    move-result-object v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x3

    const/4 v12, 0x3

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    iget-boolean v11, v2, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v11, :cond_2

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v5

    iget-object v8, v5, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_3

    iget-boolean v11, v5, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v11, :cond_3

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v9, v1, v10}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->doClear(Ljava/util/List;ILjava/util/List;)V

    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/systemui/recents/BaseRecentsImpl$RecentsReceiver;->showCleanEndMsg(J)V

    :cond_4
    return-void

    :catch_0
    move-exception v4

    const-string/jumbo v11, "RecentsReceiver"

    const-string/jumbo v12, "getProtectedTaskPkg"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
