.class public Lcom/android/systemui/miui/statusbar/InCallUtils;
.super Ljava/lang/Object;
.source "InCallUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v2
.end method

.method public static goInCallScreen(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->goInCallScreen(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method public static goInCallScreen(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 v2, 0x10840000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.android.incallui"

    const-string/jumbo v3, "com.android.incallui.InCallActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    :try_start_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "com.miui.voip"

    const-string/jumbo v3, "com.miui.voiptalk.activity.VoipCallActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static isCallScreenShowing(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v2, "com.miui.voiptalk.activity.VoipCallActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public static isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isPhoneInCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isVoipInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isInCallNotificationHeadsUp(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInCallScreenShowing(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->getTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v4, "com.android.phone.MiuiInCallScreen"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "com.android.incallui.InCallActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    return v2

    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "com.miui.voiptalk.activity.VoipCallActivity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v4

    if-ne v4, v2, :cond_4

    :goto_2
    return v2

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    return v3
.end method

.method public static isPhoneInCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.incallui"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.android.phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const-string/jumbo v2, "incall"

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isPhoneInCallNotificationInVideo(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isPhoneInCallNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "hasVideoCall"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoipInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.miui.voip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "voip_incall"

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static needShowReturnToInVoipCallScreenButton(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->isVoipCallUiOnBack()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isCallScreenShowing(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getInstance(Landroid/content/Context;)Lcom/miui/voiptalk/service/MiuiVoipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/voiptalk/service/MiuiVoipManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
