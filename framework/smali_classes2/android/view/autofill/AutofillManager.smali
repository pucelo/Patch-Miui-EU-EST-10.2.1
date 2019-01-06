.class public final Landroid/view/autofill/AutofillManager;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillCallback;,
        Landroid/view/autofill/AutofillManager$AutofillClient;,
        Landroid/view/autofill/AutofillManager$AutofillManagerClient;,
        Landroid/view/autofill/AutofillManager$TrackedViews;
    }
.end annotation


# static fields
.field public static final ACTION_START_SESSION:I = 0x1

.field public static final ACTION_VALUE_CHANGED:I = 0x4

.field public static final ACTION_VIEW_ENTERED:I = 0x2

.field public static final ACTION_VIEW_EXITED:I = 0x3

.field private static final AUTHENTICATION_ID_DATASET_ID_MASK:I = 0xffff

.field private static final AUTHENTICATION_ID_DATASET_ID_SHIFT:I = 0x10

.field public static final AUTHENTICATION_ID_DATASET_ID_UNDEFINED:I = 0xffff

.field public static final EXTRA_ASSIST_STRUCTURE:Ljava/lang/String; = "android.view.autofill.extra.ASSIST_STRUCTURE"

.field public static final EXTRA_AUTHENTICATION_RESULT:Ljava/lang/String; = "android.view.autofill.extra.AUTHENTICATION_RESULT"

.field public static final EXTRA_CLIENT_STATE:Ljava/lang/String; = "android.view.autofill.extra.CLIENT_STATE"

.field public static final EXTRA_RESTORE_SESSION_TOKEN:Ljava/lang/String; = "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

.field public static final FLAG_ADD_CLIENT_DEBUG:I = 0x2

.field public static final FLAG_ADD_CLIENT_ENABLED:I = 0x1

.field public static final FLAG_ADD_CLIENT_VERBOSE:I = 0x4

.field private static final LAST_AUTOFILLED_DATA_TAG:Ljava/lang/String; = "android:lastAutoFilledData"

.field public static final NO_SESSION:I = -0x80000000

.field public static final PENDING_UI_OPERATION_CANCEL:I = 0x1

.field public static final PENDING_UI_OPERATION_RESTORE:I = 0x2

.field private static final SESSION_ID_TAG:Ljava/lang/String; = "android:sessionId"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_FINISHED:I = 0x2

.field public static final STATE_SHOWING_SAVE_UI:I = 0x3

.field private static final STATE_TAG:Ljava/lang/String; = "android:state"

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AutofillManager"


# instance fields
.field private mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFillableIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAutofilledData:Landroid/view/autofill/ParcelableMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mService:Landroid/view/autofill/IAutoFillManager;

.field private mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSessionId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/autofill/AutofillManager;)Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)[I
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getViewIds([Landroid/view/autofill/AutofillId;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/view/autofill/AutofillManager;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->setSaveUiState(IZ)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/view/autofill/AutofillManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->setSessionFinished(I)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/view/autofill/AutofillManager;ZZZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->setState(ZZZ)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/autofill/AutofillManager;Ljava/util/List;)[I
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->getViewIds(Ljava/util/List;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->autofill(ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/view/autofill/AutofillManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/autofill/IAutoFillManager;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const-string/jumbo v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    return-void
.end method

.method private authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .registers 8

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne p1, v1, :cond_10

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0, p2, p3, p4}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackAuthenticate(ILandroid/content/IntentSender;Landroid/content/Intent;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v2

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private autofill(ILjava/util/List;Ljava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move/from16 v17, v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_a1

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    monitor-exit v18

    return-void

    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_a1

    move-result-object v4

    if-nez v4, :cond_1d

    monitor-exit v18

    return-void

    :cond_1d
    :try_start_1d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillManager;->getViewIds(Ljava/util/List;)[I

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->findViewsByAutofillIdTraversal([I)[Landroid/view/View;

    move-result-object v15

    const/4 v5, 0x0

    :goto_33
    if-ge v5, v7, :cond_d3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v14

    aget-object v13, v15, v5

    if-nez v13, :cond_70

    const-string/jumbo v17, "AutofillManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "autofill(): no View with id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    :cond_70
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v17

    if-eqz v17, :cond_a4

    if-nez v16, :cond_7f

    new-instance v16, Landroid/util/ArrayMap;

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Landroid/util/ArrayMap;-><init>(I)V

    :cond_7f
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    if-nez v12, :cond_97

    new-instance v12, Landroid/util/SparseArray;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/util/SparseArray;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_97
    invoke-virtual {v6}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a0
    .catchall {:try_start_1d .. :try_end_a0} :catchall_a1

    goto :goto_6d

    :catchall_a1
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_a4
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    move-object/from16 v17, v0

    if-nez v17, :cond_bd

    new-instance v17, Landroid/view/autofill/ParcelableMap;

    sub-int v19, v7, v5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    :cond_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v11}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v11}, Landroid/view/View;->autofill(Landroid/view/autofill/AutofillValue;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Landroid/view/autofill/AutofillManager;->setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_6d

    :cond_d3
    if-eqz v16, :cond_fa

    const/4 v5, 0x0

    :goto_d6
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_fa

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v10, v3}, Landroid/view/View;->autofill(Landroid/util/SparseArray;)V

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v17

    add-int v9, v9, v17

    add-int/lit8 v5, v5, 0x1

    goto :goto_d6

    :cond_fa
    new-instance v17, Landroid/metrics/LogMaker;

    const/16 v19, 0x391

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x392

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x393

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/autofill/AutofillManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_142
    .catchall {:try_start_a4 .. :try_end_142} :catchall_a1

    monitor-exit v18

    return-void
.end method

.method private cancelSessionLocked()V
    .registers 5

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_22

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelSessionLocked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    :try_start_29
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->cancelSession(II)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_3a

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    return-void

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private ensureServiceClientAddedIfNeededLocked()V
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v4

    if-nez v4, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-nez v4, :cond_36

    new-instance v4, Landroid/view/autofill/AutofillManager$AutofillManagerClient;

    invoke-direct {v4, p0}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;-><init>(Landroid/view/autofill/AutofillManager;)V

    iput-object v4, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    :try_start_14
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/view/autofill/IAutoFillManager;->addClient(Landroid/view/autofill/IAutoFillManagerClient;I)I

    move-result v1

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_37

    move v4, v2

    :goto_27
    iput-boolean v4, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_39

    move v4, v2

    :goto_2e
    sput-boolean v4, Landroid/view/autofill/Helper;->sDebug:Z

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_3b

    :goto_34
    sput-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_36} :catch_3d

    :cond_36
    return-void

    :cond_37
    move v4, v3

    goto :goto_27

    :cond_39
    move v4, v3

    goto :goto_2e

    :cond_3b
    move v2, v3

    goto :goto_34

    :catch_3d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method private findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->findViewByAutofillIdTraversal(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private finishSessionLocked()V
    .registers 5

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_22

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishSessionLocked(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-nez v1, :cond_29

    return-void

    :cond_29
    :try_start_29
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->finishSession(II)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_36} :catch_3a

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    return-void

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;
    .registers 3

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/view/autofill/AutofillId;-><init>(I)V

    return-object v0
.end method

.method private static getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;
    .registers 4

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0}, Landroid/view/View;->getAutofillViewId()I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/view/autofill/AutofillId;-><init>(II)V

    return-object v0
.end method

.method private getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAutofillClient()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    return-object v0
.end method

.method private getComponentNameFromContext(Landroid/view/autofill/AutofillManager$AutofillClient;)Landroid/content/ComponentName;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->getComponentNameForAutofill()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_3
.end method

.method public static getDatasetIdFromAuthenticationId(I)I
    .registers 2

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getRequestIdFromAuthenticationId(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method private getStateAsStringLocked()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    packed-switch v0, :pswitch_data_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "INVALID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "STATE_UNKNOWN"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "STATE_ACTIVE"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "STATE_FINISHED"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "STATE_SHOWING_SAVE_UI"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method private getViewIds(Ljava/util/List;)[I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_18

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-object v2
.end method

.method private getViewIds([Landroid/view/autofill/AutofillId;)[I
    .registers 6

    array-length v1, p1

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_11

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-object v2
.end method

.method private isActiveLocked()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isFinishedLocked()Z
    .registers 3

    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static makeAuthenticationId(II)I
    .registers 4

    shl-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method

.method private notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V
    .registers 10

    const/4 v5, 0x3

    sget-boolean v2, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_35

    const-string/jumbo v2, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyNoFillUi(): sessionId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", autofillId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", finished="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3c

    return-void

    :cond_3c
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_40
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_4c

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v2

    if-eqz v2, :cond_4c

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_63

    :cond_4c
    monitor-exit v3

    if-eqz v1, :cond_5c

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v1, v0, v2, v5}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_5c
    :goto_5c
    if-eqz p3, :cond_62

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/view/autofill/AutofillManager;->setSessionFinished(I)V

    :cond_62
    return-void

    :catchall_63
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_66
    invoke-virtual {v1, v0, v5}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_5c
.end method

.method private notifyViewEntered(Landroid/view/View;I)V
    .registers 11

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_4f

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_4f

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4d

    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyViewEntered(flags="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", view="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "): ignored on state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_79

    :cond_4d
    monitor-exit v7

    return-void

    :cond_4f
    :try_start_4f
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_66

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_5c

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_79

    :cond_5c
    :goto_5c
    monitor-exit v7

    if-eqz v6, :cond_65

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v2}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    :cond_65
    return-void

    :cond_66
    :try_start_66
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_7c

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v3, p2}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    :try_end_78
    .catchall {:try_start_66 .. :try_end_78} :catchall_79

    goto :goto_5c

    :catchall_79
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_7c
    const/4 v2, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move v5, p2

    :try_start_80
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_79

    goto :goto_5c
.end method

.method private notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isFinishedLocked()Z

    move-result v0

    if-eqz v0, :cond_5a

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_5a

    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_58

    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyViewEntered(flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", virtualId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): ignored on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_7e

    :cond_58
    monitor-exit v7

    return-void

    :cond_5a
    :try_start_5a
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_6f

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v0, :cond_67

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_7e

    :cond_67
    :goto_67
    monitor-exit v7

    if-eqz v6, :cond_6e

    const/4 v0, 0x3

    invoke-virtual {v6, p1, p2, v0}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_6e
    return-void

    :cond_6f
    :try_start_6f
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-nez v0, :cond_81

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0, p4}, Landroid/view/autofill/AutofillManager;->startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_7e

    goto :goto_67

    :catchall_7e
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_81
    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v2, p3

    move v5, p4

    :try_start_86
    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_7e

    goto :goto_67
.end method

.method private notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V
    .registers 10

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_52

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_52

    if-eqz p4, :cond_54

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v0

    :goto_13
    if-nez p3, :cond_49

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-eqz v1, :cond_49

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_46

    const-string/jumbo v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Hidding UI when view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " became invisible"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    invoke-direct {p0, v0, p1}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    :cond_49
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v1, :cond_52

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v1, v0, p3}, Landroid/view/autofill/AutofillManager$TrackedViews;->notifyViewVisibilityChanged(Landroid/view/autofill/AutofillId;Z)V
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_59

    :cond_52
    monitor-exit v2

    return-void

    :cond_54
    :try_start_54
    invoke-virtual {p1}, Landroid/view/View;->getAutofillId()Landroid/view/autofill/AutofillId;
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_59

    move-result-object v0

    goto :goto_13

    :catchall_59
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private post(Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-nez v0, :cond_14

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_13

    const-string/jumbo v1, "AutofillManager"

    const-string/jumbo v2, "ignoring post() because client is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void

    :cond_14
    invoke-interface {v0, p1}, Landroid/view/autofill/AutofillManager$AutofillClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2d

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestHideFillUi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): anchor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    if-nez v0, :cond_30

    return-void

    :cond_30
    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V

    return-void
.end method

.method private requestHideFillUi(Landroid/view/autofill/AutofillId;Landroid/view/View;)V
    .registers 8

    const/4 v4, 0x2

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackRequestHideFillUi()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_17

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_28

    :cond_17
    monitor-exit v3

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v0, p2, v2, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2b
    invoke-virtual {v0, p2, v4}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_27
.end method

.method private requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .registers 16

    const/4 v8, 0x1

    invoke-direct {p0, p2}, Landroid/view/autofill/AutofillManager;->findView(Landroid/view/autofill/AutofillId;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_c
    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v2, p1, :cond_26

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v0

    if-eqz v0, :cond_26

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackRequestShowFillUi(Landroid/view/View;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)Z

    move-result v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_26

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_37

    :cond_26
    monitor-exit v7

    if-eqz v6, :cond_36

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->isVirtual()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-virtual {p2}, Landroid/view/autofill/AutofillId;->getVirtualChildId()I

    move-result v2

    invoke-virtual {v6, v1, v2, v8}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;II)V

    :cond_36
    :goto_36
    return-void

    :catchall_37
    move-exception v2

    monitor-exit v7

    throw v2

    :cond_3a
    invoke-virtual {v6, v1, v8}, Landroid/view/autofill/AutofillManager$AutofillCallback;->onAutofillEvent(Landroid/view/View;I)V

    goto :goto_36
.end method

.method private resetSessionLocked()V
    .registers 3

    const/4 v1, 0x0

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    return-void
.end method

.method private setAutofilledIfValuesIs(Landroid/view/View;Landroid/view/autofill/AutofillValue;)V
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_e
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v1, :cond_1a

    new-instance v1, Landroid/view/autofill/ParcelableMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/view/autofill/ParcelableMap;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    :cond_1a
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Landroid/view/autofill/ParcelableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_28

    monitor-exit v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setAutofilled(Z)V

    :cond_27
    return-void

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private setSaveUiState(IZ)V
    .registers 7

    const/high16 v3, -0x80000000

    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "AutofillManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSaveUiState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2e
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v0, v3, :cond_6e

    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSaveUiState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") called on existing session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; cancelling it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V

    :cond_6e
    if-eqz p2, :cond_77

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_75
    .catchall {:try_start_2e .. :try_end_75} :catchall_7f

    :goto_75
    monitor-exit v1

    return-void

    :cond_77
    const/high16 v0, -0x80000000

    :try_start_79
    iput v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_7f

    goto :goto_75

    :catchall_7f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setSessionFinished(I)V
    .registers 6

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSessionFinished(): from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    iput p1, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_35

    monitor-exit v1

    return-void

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setState(ZZZ)V
    .registers 6

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_b

    if-eqz p2, :cond_e

    :cond_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->resetSessionLocked()V

    :cond_e
    if-eqz p3, :cond_13

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    :cond_13
    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .registers 10

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v1, :cond_62

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-ne v1, p1, :cond_62

    if-eqz p3, :cond_30

    new-instance v1, Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-direct {v1, p0, p2}, Landroid/view/autofill/AutofillManager$TrackedViews;-><init>(Landroid/view/autofill/AutofillManager;[Landroid/view/autofill/AutofillId;)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    :goto_14
    if-eqz p4, :cond_62

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    if-nez v1, :cond_22

    new-instance v1, Landroid/util/ArraySet;

    array-length v3, p4

    invoke-direct {v1, v3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    :cond_22
    const/4 v1, 0x0

    array-length v3, p4

    :goto_24
    if-ge v1, v3, :cond_37

    aget-object v0, p4, v1

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_30
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_34

    goto :goto_14

    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_37
    :try_start_37
    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_62

    const-string/jumbo v1, "AutofillManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTrackedViews(): fillableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mFillableIds"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_34

    :cond_62
    monitor-exit v2

    return-void
.end method

.method private startSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;I)V
    .registers 18

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_52

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    iget v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v1, :cond_88

    and-int/lit8 v1, p4, 0x1

    if-nez v1, :cond_88

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_87

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not automatically starting session for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    return-void

    :cond_88
    :try_start_88
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/view/autofill/AutofillManager;->getComponentNameFromContext(Landroid/view/autofill/AutofillManager$AutofillClient;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_af

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): context is not activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_af
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v4, :cond_e3

    const/4 v8, 0x1

    :goto_c8
    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v9, p4

    invoke-interface/range {v1 .. v10}, Landroid/view/autofill/IAutoFillManager;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;)I

    move-result v1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget v1, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_dd

    const/4 v1, 0x1

    iput v1, p0, Landroid/view/autofill/AutofillManager;->mState:I

    :cond_dd
    if-eqz v11, :cond_e2

    invoke-interface {v11}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V
    :try_end_e2
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_e2} :catch_e5

    :cond_e2
    return-void

    :cond_e3
    const/4 v8, 0x0

    goto :goto_c8

    :catch_e5
    move-exception v12

    invoke-virtual {v12}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .registers 23

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_59

    const/4 v1, 0x3

    move/from16 v0, p4

    if-eq v0, v1, :cond_59

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSessionLocked(): id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    and-int/lit8 v1, p5, 0x1

    if-eqz v1, :cond_8c

    const/16 v16, 0x1

    :goto_5f
    if-eqz v16, :cond_112

    :try_start_61
    invoke-direct/range {p0 .. p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/view/autofill/AutofillManager;->getComponentNameFromContext(Landroid/view/autofill/AutofillManager$AutofillClient;)Landroid/content/ComponentName;

    move-result-object v10

    if-nez v10, :cond_8f

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSessionLocked(): context is not activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8c
    const/16 v16, 0x0

    goto :goto_5f

    :cond_8f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v4, :cond_10e

    const/4 v8, 0x1

    :goto_b2
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v9, p5

    move/from16 v12, p4

    invoke-interface/range {v1 .. v12}, Landroid/view/autofill/IAutoFillManager;->updateOrRestartSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;IZILandroid/content/ComponentName;II)I

    move-result v15

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v15, v1, :cond_10d

    sget-boolean v1, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_f7

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Session restarted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_110

    const/4 v1, 0x0

    :goto_104
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v13, :cond_10d

    invoke-interface {v13}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V

    :cond_10d
    :goto_10d
    return-void

    :cond_10e
    const/4 v8, 0x0

    goto :goto_b2

    :cond_110
    const/4 v1, 0x1

    goto :goto_104

    :cond_112
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Landroid/view/autofill/IAutoFillManager;->updateSession(ILandroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;III)V
    :try_end_12f
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_12f} :catch_130

    goto :goto_10d

    :catch_130
    move-exception v14

    invoke-virtual {v14}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public cancel()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_18

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_1d

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    monitor-exit v1

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->cancelSessionLocked()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public commit()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-nez v0, :cond_18

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_1d

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    monitor-exit v1

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->finishSessionLocked()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public disableAutofillServices()V
    .registers 4

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/autofill/IAutoFillManager;->disableOwnedAutofillServices(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableOwnedAutofillServices()V
    .registers 1

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->disableAutofillServices()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "AutofillManager:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "sessionId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "state: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "enabled: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "hasService: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v2, :cond_9c

    move v2, v3

    :goto_59
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "hasCallback: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_9e

    :goto_69
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "last autofilled data: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "tracked views: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-nez v2, :cond_a0

    const-string/jumbo v2, "null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "fillable ids: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mFillableIds:Landroid/util/ArraySet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :cond_9c
    move v2, v4

    goto :goto_59

    :cond_9e
    move v3, v4

    goto :goto_69

    :cond_a0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "visible:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->-get1(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "invisible:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-static {v2}, Landroid/view/autofill/AutofillManager$TrackedViews;->-get0(Landroid/view/autofill/AutofillManager$TrackedViews;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8d
.end method

.method public getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1}, Landroid/view/autofill/IAutoFillManager;->getFillEventHistory()Landroid/service/autofill/FillEventHistory;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return-object v1
.end method

.method public hasAutofillFeature()Z
    .registers 2

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasEnabledAutofillServices()Z
    .registers 5

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/autofill/IAutoFillManager;->isServiceEnabled(ILjava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_19

    move-result v1

    return v1

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAutofillSupported()Z
    .registers 4

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    return v1

    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/autofill/IAutoFillManager;->isServiceSupported(I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_11} :catch_13

    move-result v1

    return v1

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnabled()Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public notifyValueChanged(Landroid/view/View;)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-nez v0, :cond_54

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    :goto_15
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_21

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_88

    :cond_21
    sget-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_52

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_52

    const-string/jumbo v0, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyValueChanged("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "): ignoring on state "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getStateAsStringLocked()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_d .. :try_end_52} :catchall_76

    :cond_52
    monitor-exit v7

    return-void

    :cond_54
    :try_start_54
    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    const/4 v6, 0x1

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V
    :try_end_75
    .catchall {:try_start_54 .. :try_end_75} :catchall_76

    goto :goto_15

    :catchall_76
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_79
    const/4 v0, 0x0

    :try_start_7a
    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {v0, v1}, Landroid/view/autofill/ParcelableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAutofilled(Z)V

    goto :goto_15

    :cond_88
    if-nez v1, :cond_8e

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    :cond_8e
    if-nez v6, :cond_94

    invoke-virtual {p1}, Landroid/view/View;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    :cond_94
    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_9b
    .catchall {:try_start_7a .. :try_end_9b} :catchall_76

    monitor-exit v7

    return-void
.end method

.method public notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V
    .registers 11

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_a
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_26

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    :cond_16
    monitor-exit v6

    return-void

    :cond_18
    :try_start_18
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_26

    monitor-exit v6

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewEntered(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public notifyViewExited(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_a
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_23

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p1}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;)Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v6

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewExited(Landroid/view/View;I)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_a
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_23

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->getAutofillId(Landroid/view/View;I)Landroid/view/autofill/AutofillId;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/autofill/AutofillManager;->updateSessionLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v6

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public notifyViewVisibilityChanged(Landroid/view/View;IZ)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    return-void
.end method

.method public notifyViewVisibilityChanged(Landroid/view/View;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChangedInternal(Landroid/view/View;IZZ)V

    return-void
.end method

.method public onAuthenticationResult(ILandroid/content/Intent;)V
    .registers 10

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_25

    const-string/jumbo v3, "AutofillManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAuthenticationResult(): d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_28
    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_5e

    move-result v3

    if-eqz v3, :cond_30

    if-nez p2, :cond_32

    :cond_30
    monitor-exit v4

    return-void

    :cond_32
    :try_start_32
    const-string/jumbo v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_5e

    :try_start_44
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-interface {v3, v1, v5, p1, v6}, Landroid/view/autofill/IAutoFillManager;->setAuthenticationResult(Landroid/os/Bundle;III)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_51} :catch_53
    .catchall {:try_start_44 .. :try_end_51} :catchall_5e

    :goto_51
    monitor-exit v4

    return-void

    :catch_53
    move-exception v0

    :try_start_54
    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "Error delivering authentication result"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5e

    goto :goto_51

    :catchall_5e
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    const/high16 v6, -0x80000000

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v3

    if-nez v3, :cond_9

    return-void

    :cond_9
    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    const-string/jumbo v3, "android:lastAutoFilledData"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/ParcelableMap;

    iput-object v3, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "New session was started before onCreate()"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_c2

    monitor-exit v4

    return-void

    :cond_28
    :try_start_28
    const-string/jumbo v3, "android:sessionId"

    const/high16 v5, -0x80000000

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const-string/jumbo v3, "android:state"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    if-eq v3, v6, :cond_8a

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->ensureServiceClientAddedIfNeededLocked()V

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->getClientLocked()Landroid/view/autofill/AutofillManager$AutofillClient;
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_c2

    move-result-object v0

    if-eqz v0, :cond_8a

    :try_start_4a
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v5, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v6, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    iget-object v7, p0, Landroid/view/autofill/AutofillManager;->mServiceClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v7}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v3, v5, v6, v7}, Landroid/view/autofill/IAutoFillManager;->restoreSession(ILandroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_8c

    const-string/jumbo v3, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " could not be restored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, -0x80000000

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/view/autofill/AutofillManager;->mState:I
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_8a} :catch_b7
    .catchall {:try_start_4a .. :try_end_8a} :catchall_c2

    :cond_8a
    :goto_8a
    monitor-exit v4

    return-void

    :cond_8c
    :try_start_8c
    sget-boolean v3, Landroid/view/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_b3

    const-string/jumbo v3, "AutofillManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " was restored"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    invoke-interface {v0}, Landroid/view/autofill/AutofillManager$AutofillClient;->autofillCallbackResetableStateAvailable()V
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_b6} :catch_b7
    .catchall {:try_start_8c .. :try_end_b6} :catchall_c2

    goto :goto_8a

    :catch_b7
    move-exception v1

    :try_start_b8
    const-string/jumbo v3, "AutofillManager"

    const-string/jumbo v5, "Could not figure out if there was an autofill session"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c1
    .catchall {:try_start_b8 .. :try_end_c1} :catchall_c2

    goto :goto_8a

    :catchall_c2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onPendingSaveUi(ILandroid/os/IBinder;)V
    .registers 7

    sget-boolean v1, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_29

    const-string/jumbo v1, "AutofillManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPendingSaveUi("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManager;->onPendingSaveUi(ILandroid/os/IBinder;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_31} :catch_33
    .catchall {:try_start_2c .. :try_end_31} :catchall_38

    :goto_31
    monitor-exit v2

    return-void

    :catch_33
    move-exception v0

    :try_start_34
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_31

    :catchall_38
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_a
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_18

    const-string/jumbo v0, "android:sessionId"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_18
    iget v0, p0, Landroid/view/autofill/AutofillManager;->mState:I

    if-eqz v0, :cond_24

    const-string/jumbo v0, "android:state"

    iget v2, p0, Landroid/view/autofill/AutofillManager;->mState:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_24
    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    if-eqz v0, :cond_30

    const-string/jumbo v0, "android:lastAutoFilledData"

    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLastAutofilledData:Landroid/view/autofill/ParcelableMap;

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_32

    :cond_30
    monitor-exit v1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onVisibleForAutofill()V
    .registers 3

    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Landroid/view/autofill/AutofillManager;->mEnabled:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Landroid/view/autofill/AutofillManager;->isActiveLocked()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/view/autofill/AutofillManager;->mTrackedViews:Landroid/view/autofill/AutofillManager$TrackedViews;

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager$TrackedViews;->onVisibleForAutofillLocked()V
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v3, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_e

    monitor-exit v3

    return-void

    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-eqz v2, :cond_27

    const/4 v1, 0x1

    :goto_13
    iput-object p1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_2f

    if-nez v1, :cond_25

    :try_start_17
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v4, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v5, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v2, v4, v5, v6}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_25} :catch_29
    .catchall {:try_start_17 .. :try_end_25} :catchall_2f

    :cond_25
    monitor-exit v3

    return-void

    :cond_27
    const/4 v1, 0x0

    goto :goto_13

    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestAutofill(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;I)V

    return-void
.end method

.method public requestAutofill(Landroid/view/View;ILandroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/autofill/AutofillManager;->notifyViewEntered(Landroid/view/View;ILandroid/graphics/Rect;I)V

    return-void
.end method

.method public unregisterCallback(Landroid/view/autofill/AutofillManager$AutofillCallback;)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Landroid/view/autofill/AutofillManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_10

    :try_start_c
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_2f

    if-nez v1, :cond_12

    :cond_10
    monitor-exit v2

    return-void

    :cond_12
    :try_start_12
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;

    if-ne p1, v1, :cond_10

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/autofill/AutofillManager;->mCallback:Landroid/view/autofill/AutofillManager$AutofillCallback;
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_2f

    :try_start_19
    iget-object v1, p0, Landroid/view/autofill/AutofillManager;->mService:Landroid/view/autofill/IAutoFillManager;

    iget v3, p0, Landroid/view/autofill/AutofillManager;->mSessionId:I

    iget-object v4, p0, Landroid/view/autofill/AutofillManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v1, v3, v4, v5}, Landroid/view/autofill/IAutoFillManager;->setHasCallback(IIZ)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_29
    .catchall {:try_start_19 .. :try_end_27} :catchall_2f

    monitor-exit v2

    return-void

    :catch_29
    move-exception v0

    :try_start_2a
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v1

    monitor-exit v2

    throw v1
.end method
