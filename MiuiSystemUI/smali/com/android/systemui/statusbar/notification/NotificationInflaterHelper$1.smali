.class final Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;
.super Ljava/lang/Object;
.source "NotificationInflaterHelper.java"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->applyRemoteViewAsync(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

.field final synthetic val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

.field final synthetic val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field final synthetic val$existingView:Landroid/view/View;

.field final synthetic val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field final synthetic val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

.field final synthetic val$inflationId:I

.field final synthetic val$isNewView:Z

.field final synthetic val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$reInflateFlags:I

.field final synthetic val$redactAmbient:Z

.field final synthetic val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$runningInflations:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Landroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    iput p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inflationId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$isNewView:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    iput-object p12, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    iput-object p13, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iput-object p14, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object p15, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inflationId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$isNewView:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$remoteViewClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$parentLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-object/from16 v16, p1

    invoke-static/range {v1 .. v16}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->-wrap0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 12

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inflationId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$isNewView:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$existingWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$applyCallback:Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;

    iget-object v11, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper;->-wrap1(Landroid/view/View;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;IILcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$reInflateFlags:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$runningInflations:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$callback:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$redactAmbient:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/NotificationInflaterHelper$1;->val$inCallCallback:Lcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILjava/util/HashMap;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/InCallNotificationView$InCallCallback;)Z

    return-void
.end method
