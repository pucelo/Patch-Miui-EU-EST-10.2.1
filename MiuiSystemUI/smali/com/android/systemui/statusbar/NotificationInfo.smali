.class public Lcom/android/systemui/statusbar/NotificationInfo;
.super Lcom/android/systemui/statusbar/BaseGutsContentView;
.source "NotificationInfo.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;
    }
.end annotation


# instance fields
.field private mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

.field private mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

.field private mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIsDefaultChannel:Z

.field private mNotificationChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelCompat;",
            ">;"
        }
    .end annotation
.end field

.field private mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field private mSecondaryTextView:Landroid/widget/TextView;

.field private mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

.field private mStartingUserImportance:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationInfo;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationInfo;)Landroid/app/NotificationChannelCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseGutsContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getChannelNameText()Ljava/lang/CharSequence;
    .locals 5

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isSubstituteNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x7f0f001c

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    invoke-virtual {v1}, Landroid/app/NotificationChannelCompat;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private getSelectedImportance()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    return v0
.end method

.method private hasImportanceChanged()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initSlidingButton()V
    .locals 4

    const/4 v2, 0x0

    const v1, 0x7f0a007f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lmiui/widget/SlidingButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    new-instance v2, Lcom/android/systemui/statusbar/NotificationInfo$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/NotificationInfo$3;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method private saveImportance()V
    .locals 9

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppUid()I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    if-eqz v6, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v7}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v7

    invoke-static {v6, v0, v7}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v6}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.action_refresh_notification"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "com.android.systemui"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "com.miui.app.ExtraStatusBarManager.extra_forbid_notification"

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v7}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "app_packageName"

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v6}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getMessageId(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "messageId"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-class v6, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6, v7}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onBlock(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v6

    if-nez v6, :cond_4

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    sub-int v7, v5, v7

    const/16 v8, 0x123

    invoke-static {v6, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->isSubstituteNotification()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v6, v0, v7}, Lcom/android/systemui/Util;->getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_5
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-static {v6, v5, v7, v0, v1}, Landroid/app/NotificationChannelCompat;->saveImportance(Landroid/app/NotificationChannelCompat;ILandroid/app/INotificationManager;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateSecondaryText()V
    .locals 8

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getSelectedImportance()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getChannelNameText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSecondaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const v2, 0x7f110451

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v6}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSecondaryTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    const v2, 0x7f120141

    :goto_2
    invoke-virtual {v3, v4, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const v2, 0x7f110452

    goto :goto_1

    :cond_3
    const v2, 0x10301fe

    goto :goto_2
.end method


# virtual methods
.method public bindNotification(Landroid/app/INotificationManager;Ljava/util/List;ILcom/android/systemui/miui/statusbar/ExpandedNotification;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/INotificationManager;",
            "Ljava/util/List",
            "<",
            "Landroid/app/NotificationChannelCompat;",
            ">;I",
            "Lcom/android/systemui/miui/statusbar/ExpandedNotification;",
            "Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mINotificationManager:Landroid/app/INotificationManager;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    move/from16 v0, p3

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mStartingUserImportance:I

    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppUid()I

    move-result v3

    const v11, 0x7f0a0209

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-static {v11, v0, v7}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyAppIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/widget/ImageView;)V

    const/4 v8, 0x1

    const/4 v11, 0x0

    :try_start_0
    invoke-static {p1, v2, v3, v11}, Landroid/app/NotificationChannelCompat;->getNumNotificationChannelsForPackage(Landroid/app/INotificationManager;Ljava/lang/String;IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :goto_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "bindNotification requires at least one channel"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mNotificationChannels:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationChannelCompat;

    iput-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    invoke-virtual {v11}, Landroid/app/NotificationChannelCompat;->getId()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "miscellaneous"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    :goto_1
    const/4 v6, 0x0

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    if-eqz v11, :cond_1

    :try_start_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    invoke-static {v11, p1, v2, v3}, Landroid/app/NotificationChannelCompat;->getGroupName(Landroid/app/NotificationChannelCompat;Landroid/app/INotificationManager;Ljava/lang/String;I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_1
    :goto_2
    const v11, 0x7f0a02d6

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    :goto_3
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->initSlidingButton()V

    const v11, 0x7f0a0281

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSecondaryTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->updateSecondaryText()V

    const v11, 0x7f0a0064

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-ltz v3, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    const v11, 0x7f110461

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    new-instance v11, Lcom/android/systemui/statusbar/NotificationInfo$1;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, v0, v3}, Lcom/android/systemui/statusbar/NotificationInfo$1;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;I)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v11, 0x1

    if-le v8, v11, :cond_4

    const v11, 0x7f110438

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    const v11, 0x7f0a0065

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/NotificationInfo;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v11, 0x7f110449

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(I)V

    new-instance v11, Lcom/android/systemui/statusbar/NotificationInfo$2;

    move-object/from16 v0, p5

    invoke-direct {v11, p0, v0}, Lcom/android/systemui/statusbar/NotificationInfo$2;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSingleNotificationChannel:Landroid/app/NotificationChannelCompat;

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mIsDefaultChannel:Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v6, v12, v13

    const v13, 0x7f11044b

    invoke-virtual {v11, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const v11, 0x7f110461

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_5
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :catch_1
    move-exception v5

    goto/16 :goto_2
.end method

.method public handleCloseControls(ZZ)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->hasImportanceChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mClickListener:Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationInfo$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationInfo$4;-><init>(Lcom/android/systemui/statusbar/NotificationInfo;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;->onClickCheckSave(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationInfo;->saveImportance()V

    goto :goto_0
.end method

.method public isLeavebehind()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseGutsContentView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->isExposed()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f11043d

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f11043c

    goto :goto_0
.end method

.method public setGutsParent(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mGutsContainer:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method public willBeRemoved()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationInfo;->mChannelEnabledSwitch:Lmiui/widget/SlidingButton;

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
