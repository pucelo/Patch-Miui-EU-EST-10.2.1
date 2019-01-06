.class public Lcom/android/systemui/statusbar/notification/NotificationInflater;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationExecutor;,
        Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    }
.end annotation


# static fields
.field static final FLAG_REINFLATE_ALL:I = -0x1

.field static final FLAG_REINFLATE_EXPANDED_VIEW:I = 0x2


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field private mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

.field private mIsChildInGroup:Z

.field private mIsLowPriority:Z

.field private mRedactAmbient:Z

.field private mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private final mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mUsesIncreasedHeadsUpHeight:Z

.field private mUsesIncreasedHeight:Z


# direct methods
.method static synthetic -wrap0(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 1

    invoke-static/range {p0 .. p8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method

.method public static apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Landroid/os/CancellationSignal;
    .locals 41

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v24

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v11

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v15, p6

    invoke-static/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    :cond_0
    const/4 v3, 0x2

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v11

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v15, p6

    invoke-static/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    :cond_1
    const/4 v3, 0x4

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v11

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v15, p6

    invoke-static/range {v1 .. v15}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    :cond_2
    const/16 v3, 0x8

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v25

    const/4 v1, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v26

    move-object/from16 v15, p0

    move/from16 v16, p1

    move/from16 v17, v3

    move-object/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, v6

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, v9

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, p6

    invoke-static/range {v15 .. v29}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    const/16 v3, 0x10

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    if-eqz p3, :cond_5

    move-object/from16 v34, v24

    :goto_0
    invoke-static/range {p2 .. p3}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v2, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    :goto_1
    new-instance v14, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V

    invoke-virtual/range {v34 .. v34}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v35

    const/4 v1, 0x4

    move-object/from16 v0, v34

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v36

    move-object/from16 v25, p0

    move/from16 v26, p1

    move/from16 v27, v3

    move-object/from16 v28, p2

    move/from16 v29, p3

    move/from16 v30, v6

    move-object/from16 v31, p4

    move-object/from16 v32, p5

    move-object/from16 v33, v9

    move-object/from16 v37, v13

    move-object/from16 v38, v14

    move-object/from16 v39, p6

    invoke-static/range {v25 .. v39}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteView(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    :cond_4
    move-object/from16 v15, p0

    move/from16 v16, p1

    move-object/from16 v17, v13

    move-object/from16 v18, p5

    move-object/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, p6

    invoke-static/range {v15 .. v21}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Z

    new-instance v40, Landroid/os/CancellationSignal;

    invoke-direct/range {v40 .. v40}, Landroid/os/CancellationSignal;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;

    invoke-direct {v1, v13}, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;-><init>(Ljava/util/HashMap;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object v40

    :cond_5
    move-object/from16 v34, v10

    goto :goto_0

    :cond_6
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private static canReapplyAmbient(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getAmbientChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static compareRemoteViews(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;-><init>()V

    if-eqz p2, :cond_5

    xor-int/lit8 p2, p3, 0x1

    :goto_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p4, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createContentView(Landroid/app/Notification$Builder;ZZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    invoke-static {p1, p2, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createExpandedView(Landroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    invoke-static {p1, p5, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createHeadsUpView(Landroid/app/Notification$Builder;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    invoke-static {p1, p8}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createPublicContentView(Landroid/app/Notification$Builder;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    invoke-static {p1, p6}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->createAmbientView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_4
    iput-object p7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->packageContext:Landroid/content/Context;

    return-object v0

    :cond_5
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Z",
            "Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v8

    iget-object v10, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpandable(Z)V

    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    :cond_4
    :goto_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    :cond_5
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_7

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    :cond_6
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    :cond_7
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_9

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-static {v7, v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    if-eqz p5, :cond_e

    move-object v9, v13

    :goto_3
    if-nez p5, :cond_f

    move-object v11, v13

    :goto_4
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAmbientChild(Landroid/view/View;)V

    :cond_8
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v8, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    :cond_9
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    const/4 v4, 0x1

    :goto_5
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/StatusBar;->sIsStatusBarHidden:Z

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->optimizeHeadsUpViewIfNeed(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    if-eqz p3, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_a
    const/4 v1, 0x1

    return v1

    :cond_b
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_e
    move-object v9, v12

    goto :goto_3

    :cond_f
    move-object v11, v12

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    goto :goto_5

    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private static inflateInCallHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Lcom/android/systemui/statusbar/notification/InCallNotificationView;
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d004b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->updateInfo(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/InCallNotificationView;->setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    return-object v0
.end method

.method private static inflateOptimizedHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;
    .locals 12

    if-nez p1, :cond_0

    const-string/jumbo v10, "NotificationInflater"

    const-string/jumbo v11, "inflateOptimizedHeadsUpNotification() oldHeadsUpView is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return-object v10

    :cond_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v10

    if-eqz v10, :cond_2

    const v10, 0x1020006

    :goto_0
    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v10, 0x1020016

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x1020438

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v10, 0x1020453

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-nez v9, :cond_3

    if-nez v7, :cond_3

    if-nez v8, :cond_3

    :cond_1
    const-string/jumbo v10, "NotificationInflater"

    const-string/jumbo v11, "inflateOptimizedHeadsUpNotification() invalid content"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return-object v10

    :cond_2
    const v10, 0x10203b8

    goto :goto_0

    :cond_3
    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v10, 0x7f0d009e

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapIconView(Landroid/widget/ImageView;)V

    invoke-virtual {v6, v9, p3}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapTitleView(Landroid/widget/TextView;Z)V

    if-eqz v7, :cond_6

    invoke-virtual {v6, v7, p3}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapTextView(Landroid/widget/TextView;Z)V

    :goto_1
    const v10, 0x7f0a0096

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;

    invoke-direct {v10, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$7;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v10, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v10}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v11, "miui.showAction"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getExpandedContentView()Landroid/view/View;

    move-result-object v10

    const v11, 0x1020176

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->getActionView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_7

    const v10, 0x7f0600ee

    invoke-virtual {p0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    new-instance v10, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;

    invoke-direct {v10, v5}, Lcom/android/systemui/statusbar/notification/NotificationInflater$8;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v10, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->setRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-object v6

    :cond_6
    invoke-virtual {v6, v8, p3}, Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;->wrapTextView(Landroid/widget/TextView;Z)V

    goto :goto_1

    :cond_7
    const v10, 0x7f0600f1

    invoke-virtual {p0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method public static isAsyncApplySupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static optimizeHeadsUpViewIfNeed(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationContentView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/StatusBar;->sGameMode:Z

    if-nez v6, :cond_1

    if-eqz p3, :cond_0

    :goto_0
    xor-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v6}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    return-void

    :cond_0
    const/4 p4, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getViewForVisibleType(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v6, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v6}, Lcom/android/systemui/miui/statusbar/InCallUtils;->isInCallNotification(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v0, v2, v1, p5}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateInCallHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Lcom/android/systemui/statusbar/notification/InCallNotificationView;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    :goto_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    :goto_3
    return-void

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v0, v2, v1, p2}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateOptimizedHeadsUpNotification(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/NotificationData$Entry;Z)Lcom/android/systemui/statusbar/notification/OptimizedHeadsUpNotificationView;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "NotificationInflater"

    const-string/jumbo v7, "optimizeHeadsUpViewIfNeed() can not inflate optimized heads up child"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static processChildView(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->applyLegacyRowIcon(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020426

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    return-void
.end method


# virtual methods
.method inflateNotificationViews(ILandroid/app/Notification$Builder;Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
    .locals 10

    const/4 v9, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move v0, p1

    move-object v1, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZZZLandroid/content/Context;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move v1, p1

    move-object v5, v9

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Landroid/os/CancellationSignal;

    return-object v0
.end method

.method public inflateNotificationViews()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    return-void
.end method

.method inflateNotificationViews(I)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    const/4 v12, 0x0

    move v2, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;-><init>(Lcom/android/systemui/miui/statusbar/ExpandedNotification;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZZZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$AsyncInflationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedAmbientContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedBigContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedHeadsUpContentView:Landroid/widget/RemoteViews;

    iput-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->cachedPublicContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews()V

    return-void
.end method

.method public setInCallCallback(Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mInCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    return-void
.end method

.method public setInflationCallback(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    return-void
.end method

.method public setIsChildInGroup(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsChildInGroup:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    :cond_0
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mIsLowPriority:Z

    return-void
.end method

.method public setRedactAmbient(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRedactAmbient:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->inflateNotificationViews(I)V

    :cond_1
    return-void
.end method

.method public setRemoteViewClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mRemoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method

.method public setUsesIncreasedHeadsUpHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeadsUpHeight:Z

    return-void
.end method

.method public setUsesIncreasedHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater;->mUsesIncreasedHeight:Z

    return-void
.end method
