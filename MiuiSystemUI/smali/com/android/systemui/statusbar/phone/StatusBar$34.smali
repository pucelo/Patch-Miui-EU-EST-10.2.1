.class Lcom/android/systemui/statusbar/phone/StatusBar$34;
.super Landroid/widget/AbstractOnClickHandler;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/StatusBar$34;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$34;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/widget/AbstractOnClickHandler;-><init>()V

    return-void
.end method

.method private findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object v0
.end method

.method private getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 24

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->getRemoteInputTag(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v15

    const/4 v9, 0x0

    instance-of v0, v15, [Landroid/app/RemoteInput;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object v9, v15

    check-cast v9, [Landroid/app/RemoteInput;

    :cond_0
    if-nez v9, :cond_1

    const/16 v20, 0x0

    return v20

    :cond_1
    const/4 v8, 0x0

    const/16 v20, 0x0

    array-length v0, v9

    move/from16 v21, v0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    aget-object v6, v9, v20

    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object v8, v6

    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    const/16 v20, 0x0

    return v20

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const/4 v13, 0x0

    :goto_1
    if-eqz v10, :cond_5

    instance-of v0, v10, Landroid/view/View;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object v11, v10

    check-cast v11, Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isRootNamespace()Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/phone/StatusBar$34;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v13

    :cond_5
    const/4 v14, 0x0

    :goto_2
    if-eqz v10, :cond_6

    instance-of v0, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v20, v0

    if-eqz v20, :cond_8

    move-object v14, v10

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :cond_6
    if-nez v14, :cond_9

    const/16 v20, 0x0

    return v20

    :cond_7
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_1

    :cond_8
    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    goto :goto_2

    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mAllowLockscreenRemoteInput:Z

    move/from16 v20, v0

    if-nez v20, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    const/16 v20, 0x1

    return v20

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get35(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/os/UserManager;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    const/16 v20, 0x1

    return v20

    :cond_b
    if-nez v13, :cond_d

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$34;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v13

    if-nez v13, :cond_c

    const/16 v20, 0x0

    return v20

    :cond_c
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->isShown()Z

    move-result v20

    if-nez v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    const/16 v20, 0x1

    return v20

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v16, p1

    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    if-eqz v20, :cond_e

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v7, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v20

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v21

    add-int v20, v20, v21

    add-int v7, v7, v20

    move/from16 v0, v19

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v19

    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v20

    div-int/lit8 v21, v19, 0x2

    add-int v3, v20, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    add-int v4, v20, v21

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getWidth()I

    move-result v18

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->getHeight()I

    move-result v5

    add-int v20, v3, v4

    sub-int v21, v5, v4

    add-int v21, v21, v3

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    sub-int v21, v18, v3

    add-int v21, v21, v4

    sub-int v22, v18, v3

    sub-int v23, v5, v4

    add-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v13, v3, v4, v12}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    invoke-virtual {v13, v9, v8}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;)V

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focusAnimated()V

    const/16 v20, 0x1

    return v20
.end method

.method private logActionClick(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/StatusBar$34;->getNotificationKeyForParent(Landroid/view/ViewParent;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v8, "StatusBar"

    const-string/jumbo v9, "Couldn\'t determine notification for click."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x1020176

    if-ne v8, v9, :cond_1

    if-eqz v6, :cond_1

    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8, v4}, Lcom/android/systemui/statusbar/NotificationData;->getRank(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v8, 0x1

    invoke-static {v4, v7, v1, v8}, Lcom/android/internal/statusbar/NotificationVisibilityCompat;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {v8, v4, v3, v5}, Lcom/android/internal/statusbar/StatusBarServiceCompat;->onNotificationActionClick(Lcom/android/internal/statusbar/IStatusBarService;Ljava/lang/String;ILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, v0}, Landroid/widget/AbstractOnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->wakeUpIfDozing(JLandroid/view/View;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$34;->handleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v6

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification click handler invoked for intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$34;->logActionClick(Landroid/view/View;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerCompat;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mCurrentUserId:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$34;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v4, Lcom/android/systemui/statusbar/phone/StatusBar$34$1;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$34$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$34;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    return v6

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBar$34;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v3

    return v3

    :catch_0
    move-exception v1

    goto :goto_0
.end method
