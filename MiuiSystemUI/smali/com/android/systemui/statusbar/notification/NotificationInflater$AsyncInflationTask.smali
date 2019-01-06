.class public Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;
.super Landroid/os/AsyncTask;
.source "NotificationInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;
.implements Lcom/android/systemui/statusbar/InflationTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncInflationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
        ">;",
        "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
        "Lcom/android/systemui/statusbar/InflationTask;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mContext:Landroid/content/Context;

.field private mError:Ljava/lang/Exception;

.field private mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

.field private final mIsChildInGroup:Z

.field private final mIsLowPriority:Z

.field private mReInflateFlags:I

.field private final mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

.field private final mUsesIncreasedHeadsUpHeight:Z

.field private final mUsesIncreasedHeight:Z


# direct methods
.method private constructor <init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsChildInGroup:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInflationTask(Lcom/android/systemui/statusbar/InflationTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "couldn\'t inflate view for notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    new-instance v3, Lcom/android/systemui/statusbar/notification/InflationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t inflate contentViews"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/notification/InflationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    return-void
.end method

.method private initAppInfo()V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/systemui/Util;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0xc2200

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppUid(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget v5, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setTargetSdk(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    const-class v4, Lcom/android/systemui/miui/AppIconsManager;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/miui/AppIconsManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v1, v2, v3}, Lcom/android/systemui/miui/AppIconsManager;->getAppIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v5, v6}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setRowIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAppName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->setRowIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->initAppInfo()V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getPackageContext(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Landroid/content/Context;

    move-result-object v7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mSbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0600da

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-static {v1, v9}, Landroid/app/NotificationCompat;->setBackgroundColorHint(Landroid/app/Notification$Builder;I)V

    :cond_0
    invoke-static {v11}, Landroid/app/NotificationCompat;->isMediaNotification(Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v11, v1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsLowPriority:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mIsChildInGroup:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeight:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->-wrap0(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method public getReInflateFlags()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    return v0
.end method

.method public handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->onInflationTaskFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onNotificationUpdated()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRedactAmbient:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mError:Ljava/lang/Exception;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    return-void
.end method

.method public supersedeTask(Lcom/android/systemui/statusbar/InflationTask;)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget v1, p1, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->mReInflateFlags:I

    :cond_0
    return-void
.end method
