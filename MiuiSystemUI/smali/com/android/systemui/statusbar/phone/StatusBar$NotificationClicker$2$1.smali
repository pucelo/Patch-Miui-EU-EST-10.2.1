.class Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$parentToCancelFinal:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field final synthetic val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get19(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    move/from16 v0, v16

    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternUtilsCompat;->isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/MiuiMultiWindowUtils;->getActivityOptions(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v14

    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "click notification, sending intent, key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$intent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1}, Lcom/android/systemui/assist/AssistManager;->hideAssist()V

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v15, v9, v2}, Lcom/android/internal/statusbar/NotificationVisibilityCompat;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$notificationKey:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/android/internal/statusbar/StatusBarServiceCompat;->onNotificationClick(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->val$parentToCancelFinal:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getActivityOptions()Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v8

    goto/16 :goto_1

    :catch_0
    move-exception v10

    const-string/jumbo v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending contentIntent failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v12

    goto :goto_3

    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method
