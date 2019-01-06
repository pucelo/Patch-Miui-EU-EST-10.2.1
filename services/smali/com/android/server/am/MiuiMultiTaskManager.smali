.class public Lcom/android/server/am/MiuiMultiTaskManager;
.super Ljava/lang/Object;
.source "MiuiMultiTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    }
.end annotation


# static fields
.field private static final FEATURE_SUPPORT:Z

.field public static final FLAG_LAUNCH_APP_IN_ONE_TASK_GROUP:Ljava/lang/String; = "miui_launch_app_in_one_task_group"

.field public static final TASK_RETURN_TO_TARGET:Ljava/lang/String; = "miui_task_return_to_target"

.field private static sSupportUI:[Ljava/lang/String;

.field private static sTargetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    const-string/jumbo v0, "miui.multitask.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/android/server/am/MiuiMultiTaskManager;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkMultiTaskAffinity(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .registers 9

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    if-nez v1, :cond_6

    return v2

    :cond_6
    sget-object v3, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_a
    if-ge v1, v4, :cond_2f

    aget-object v0, v3, v1

    if-eqz p1, :cond_2c

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2c

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    if-eqz p0, :cond_2c

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v1, 0x1

    return v1

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2f
    return v2
.end method

.method private static getLaunchAppInfoByName(Ljava/lang/String;)Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
    .registers 5

    const-string/jumbo v2, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.tencent.mm.ui.chatting.ChattingUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.tencent.mm.plugin.sns.ui.SnsTimeLineUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.tencent.mm.plugin.readerapp.ui.ReaderAppUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.tencent.mm.ui.conversation.BizConversationUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "com.tencent.mm.plugin.webview.ui.tools.WebViewUI"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.tencent.mm"

    const-string/jumbo v3, "com.tencent.mm.ui.LauncherUI"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    invoke-direct {v2, v1, v0}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;-><init>(Ljava/util/ArrayList;Landroid/content/ComponentName;)V

    return-object v2

    :cond_43
    const/4 v2, 0x0

    return-object v2
.end method

.method private static init()V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    sget-object v1, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/android/server/am/MiuiMultiTaskManager;->getLaunchAppInfoByName(Ljava/lang/String;)Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return-void
.end method

.method static isMultiTaskSupport(Lcom/android/server/am/ActivityRecord;)Z
    .registers 7

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    if-nez v1, :cond_6

    return v2

    :cond_6
    sget-object v3, Lcom/android/server/am/MiuiMultiTaskManager;->sSupportUI:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_a
    if-ge v1, v4, :cond_23

    aget-object v0, v3, v1

    if-eqz p0, :cond_20

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    const/4 v1, 0x1

    return v1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_23
    return v2
.end method

.method static isVersionSupport()Z
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static updateMultiTaskInfoIfNeed(Lcom/android/server/am/ActivityStack;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .registers 8

    sget-boolean v3, Lcom/android/server/am/MiuiMultiTaskManager;->FEATURE_SUPPORT:Z

    if-nez v3, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/server/am/MiuiMultiTaskManager;->isVersionSupport()Z

    move-result v3

    if-eqz v3, :cond_6c

    if-eqz p1, :cond_6c

    sget-object v3, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    if-eqz p2, :cond_6c

    sget-object v3, Lcom/android/server/am/MiuiMultiTaskManager;->sTargetMap:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    :goto_29
    :try_start_29
    invoke-static {v1}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->-get1(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_6c

    invoke-static {v1}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->-get0(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_6c

    if-eqz v2, :cond_6c

    invoke-static {v1}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->-get1(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const v4, -0x8000001

    and-int/2addr v3, v4

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v3, 0x8000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x80000

    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "miui_launch_app_in_one_task_group"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "miui_task_return_to_target"

    invoke-static {v1}, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->-get0(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_6c} :catch_6f

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    const/4 v2, 0x0

    goto :goto_29

    :catch_6f
    move-exception v0

    goto :goto_6c
.end method
