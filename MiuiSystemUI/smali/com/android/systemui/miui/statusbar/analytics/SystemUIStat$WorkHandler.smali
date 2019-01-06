.class final Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;
.super Landroid/os/Handler;
.source "SystemUIStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;

    invoke-interface {v3}, Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;->getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "SystemUIStat"

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "com.xiaomi.xmsf.push.XMSF_UPLOAD_ACTIVE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.xiaomi.xmsf"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "pkgname"

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getPkg()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "category"

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "name"

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "data"

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v6}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get1(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v8, "com.xiaomi.xmsf.permission.USE_XMSF_UPLOAD"

    invoke-virtual {v6, v4, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SystemUIStat"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uploadTinyData failed {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;

    invoke-static {}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SystemUIStat"

    iget-object v7, v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;->adId:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "miui.intent.adblock"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.miui.systemAdSolution"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "adid"

    iget-object v7, v0, Lcom/android/systemui/miui/statusbar/analytics/ADBlock;->adId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v6}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get1(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    invoke-static {v6, v7, v8}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Ljava/util/Map;

    invoke-static {v6, v7, v10, v11, v8}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordCalculateEventAnonymous(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v7, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-wrap0(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v7, p0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat$WorkHandler;->this$0:Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v7}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-get1(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "pref_notification_time"

    const-wide/16 v10, 0x0

    invoke-interface {v7, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->-set0(Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;J)J

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    iget-object v6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/android/systemui/miui/analytics/AnalyticsWrapper;->recordStringPropertyEventAnonymous(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
