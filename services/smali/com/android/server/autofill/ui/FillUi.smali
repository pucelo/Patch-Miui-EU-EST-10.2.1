.class final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$Callback;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FillUi"

.field private static final VISIBLE_OPTIONS_MAX_COUNT:I = 0x3

.field private static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field private final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field private mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field private final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field private mContentHeight:I

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFilterText:Ljava/lang/String;

.field private final mListView:Landroid/widget/ListView;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field private final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/FillUi$Callback;)V
    .registers 32

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v21, Landroid/graphics/Point;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    new-instance v21, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    const v21, 0x109003c

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    new-instance v13, Lcom/android/server/autofill/ui/FillUi$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/autofill/ui/FillUi$1;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v21

    if-eqz v21, :cond_fd

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    :try_start_5d
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v13}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_6c
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_6c} :catch_e3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iget v0, v15, Landroid/graphics/Point;->x:I

    move/from16 v21, v0

    const/high16 v22, -0x80000000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    iget v0, v15, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    const/high16 v22, -0x80000000

    invoke-static/range {v21 .. v22}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move/from16 v0, v20

    invoke-virtual {v7, v0, v9}, Landroid/view/ViewGroup;->measure(II)V

    new-instance v21, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    new-instance v21, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    move-object/from16 v24, v0

    invoke-interface/range {v21 .. v24}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    :goto_e2
    return-void

    :catch_e3
    move-exception v8

    invoke-interface/range {p6 .. p6}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    const-string/jumbo v21, "FillUi"

    const-string/jumbo v22, "Error inflating remote views"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-void

    :cond_fd
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v6

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    :goto_10b
    if-ge v10, v6, :cond_1a4

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/Dataset;

    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_191

    invoke-virtual {v5, v11}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v16

    :try_start_12b
    sget-boolean v21, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v21, :cond_14d

    const-string/jumbo v21, "FillUi"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "setting remote view for "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14d
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v13}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_158
    .catch Ljava/lang/RuntimeException; {:try_start_12b .. :try_end_158} :catch_195

    move-result-object v19

    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/autofill/AutofillValue;

    const/16 v18, 0x0

    if-eqz v17, :cond_181

    invoke-virtual/range {v17 .. v17}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v21

    if-eqz v21, :cond_181

    invoke-virtual {v5}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v21

    if-nez v21, :cond_181

    invoke-virtual/range {v17 .. v17}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    :cond_181
    new-instance v21, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/lang/String;Landroid/view/View;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_191
    :goto_191
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_10b

    :catch_195
    move-exception v8

    const-string/jumbo v21, "FillUi"

    const-string/jumbo v22, "Error inflating remote views"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_191

    :cond_1a4
    new-instance v21, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v21, 0x10201b9

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ListView;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-nez p4, :cond_210

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    :goto_1fa
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    new-instance v21, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v7, v2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    goto/16 :goto_e2

    :cond_210
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_1fa
.end method

.method private announceSearchResultIfNeeded()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_18

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    :cond_18
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    :cond_1d
    return-void
.end method

.method private applyNewFilterText()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;

    invoke-direct {v3, v0, p0}, Lcom/android/server/autofill/ui/-$Lambda$DgpgpA67BLtfXEF5MAIi1KCU694$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method private static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 6

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1110010

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x111000f

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private updateContentSize()Z
    .registers 15

    const/high16 v13, -0x80000000

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v11, :cond_8

    return v12

    :cond_8
    const/4 v0, 0x0

    iget-object v11, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v11}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v11

    if-gtz v11, :cond_20

    iget v11, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v11, :cond_18

    iput v12, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 v0, 0x1

    :cond_18
    iget v11, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v11, :cond_1f

    iput v12, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 v0, 0x1

    :cond_1f
    return v0

    :cond_20
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v11, v6}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    iput v12, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iput v12, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget v11, v6, Landroid/graphics/Point;->x:I

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    iget v11, v6, Landroid/graphics/Point;->y:I

    invoke-static {v11, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v11, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v11}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v5

    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v5, :cond_7f

    iget-object v11, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v11, v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/autofill/ui/FillUi$ViewItem;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    iget v12, v6, Landroid/graphics/Point;->x:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v11, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget v11, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq v8, v11, :cond_64

    iput v8, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 v0, 0x1

    :cond_64
    const/4 v11, 0x3

    if-ge v4, v11, :cond_7c

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v6, Landroid/graphics/Point;->y:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v11, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int v7, v11, v1

    iget v11, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eq v7, v11, :cond_7c

    iput v7, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 v0, 0x1

    :cond_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_7f
    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCallback: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    if-eqz v2, :cond_7e

    move v2, v3

    :goto_10
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mListView: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mAdapter: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v2, :cond_80

    move v2, v3

    :goto_2f
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mFilterText: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mContentWidth: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mContentHeight: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDestroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mWindow: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-nez v2, :cond_82

    const-string/jumbo v2, "N/A"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7d
    return-void

    :cond_7e
    move v2, v4

    goto :goto_10

    :cond_80
    move v2, v4

    goto :goto_2f

    :cond_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "showing: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-get1(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "view: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-get0(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "screen coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-get0(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_d5

    const-string/jumbo v2, "N/A"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    :cond_d5
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-get0(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    aget v2, v0, v4

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v2, "x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_7d
.end method

.method synthetic lambda$-com_android_server_autofill_ui_FillUi_5115(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_ui_FillUi_7197(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ViewItem;->getDataset()Landroid/service/autofill/Dataset;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_ui_FillUi_7794(II)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    if-gtz p2, :cond_40

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez v1, :cond_39

    const/4 v0, 0x0

    :goto_12
    const-string/jumbo v1, "FillUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No dataset matches filter with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " chars"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_12

    :cond_40
    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v3, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    :cond_51
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_72

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    :goto_64
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v1

    if-eq v1, p1, :cond_38

    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_38

    :cond_72
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_64
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object v3, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_18

    :cond_1f
    if-nez p1, :cond_2b

    const/4 p1, 0x0

    :goto_22
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    :cond_2b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_30
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    return-void
.end method
