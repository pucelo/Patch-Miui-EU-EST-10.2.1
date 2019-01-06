.class final Lcom/android/systemui/recents/misc/RecentsPushEventHelper$3;
.super Ljava/lang/Object;
.source "RecentsPushEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendTaskStackChangedEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v14, 0x3

    const/4 v15, 0x3

    const/16 v16, 0x0

    :try_start_0
    invoke-static/range {v14 .. v16}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    if-eqz v4, :cond_0

    iget-boolean v14, v3, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v14, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v8, v7, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    :goto_1
    if-eqz v8, :cond_6

    iget-boolean v14, v7, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v14, :cond_6

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    invoke-virtual {v14, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->-get1()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {v13}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->-set1(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v14, "topTaskChanged"

    invoke-static {v14, v13}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->-get0()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->-set0(Ljava/lang/String;)Ljava/lang/String;

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string/jumbo v14, "pkg"

    invoke-virtual {v12, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v14, "resizeMode"

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    const-string/jumbo v14, "bottomTaskChanged"

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendMultiWindowEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x2

    :try_start_2
    invoke-static/range {v14 .. v16}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v10

    if-eqz v10, :cond_7

    iget-object v11, v10, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    :goto_4
    if-eqz v11, :cond_1

    iget-boolean v14, v10, Landroid/app/ActivityManager$StackInfo;->visible:Z

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget v2, v9, Landroid/content/pm/ActivityInfo;->resizeMode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    :catch_0
    move-exception v5

    const-string/jumbo v14, "RecentsPushEventHelper"

    const-string/jumbo v15, "sendTaskStackChangedEvent error"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method
