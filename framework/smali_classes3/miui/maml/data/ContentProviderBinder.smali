.class public Lmiui/maml/data/ContentProviderBinder;
.super Lmiui/maml/data/VariableBinder;
.source "ContentProviderBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/ContentProviderBinder$Builder;,
        Lmiui/maml/data/ContentProviderBinder$ChangeObserver;,
        Lmiui/maml/data/ContentProviderBinder$List;,
        Lmiui/maml/data/ContentProviderBinder$QueryCompleteListener;,
        Lmiui/maml/data/ContentProviderBinder$QueryHandler;,
        Lmiui/maml/data/ContentProviderBinder$Variable;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ContentProviderBinder"

.field private static final QUERY_TOKEN:I = 0x64

.field public static final TAG_NAME:Ljava/lang/String; = "ContentProviderBinder"


# instance fields
.field protected mArgs:[Ljava/lang/String;

.field private mAwareChangeWhilePause:Z

.field public mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

.field protected mColumns:[Ljava/lang/String;

.field protected mCountName:Ljava/lang/String;

.field private mCountVar:Lmiui/maml/data/IndexedVariable;

.field private mHandler:Landroid/os/Handler;

.field private mLastQueryTime:J

.field private mLastUri:Landroid/net/Uri;

.field private mList:Lmiui/maml/data/ContentProviderBinder$List;

.field private mNeedsRequery:Z

.field protected mOrder:Ljava/lang/String;

.field private mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

.field private mSystemBootCompleted:Z

.field private mUpdateInterval:I

.field private mUpdater:Ljava/lang/Runnable;

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field protected mWhereFormatter:Lmiui/maml/util/TextFormatter;


# direct methods
.method static synthetic -get0(Lmiui/maml/data/ContentProviderBinder;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/data/ContentProviderBinder;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/data/ContentProviderBinder;Landroid/database/Cursor;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onQueryComplete(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-direct {v0, p0}, Lmiui/maml/data/ContentProviderBinder$ChangeObserver;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;-><init>(Lmiui/maml/data/ContentProviderBinder;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    if-eqz p1, :cond_2c

    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V

    :cond_2c
    return-void
.end method

.method private checkUpdate()V
    .registers 7

    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-gtz v2, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    iget v2, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_22

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    const-wide/16 v0, 0x0

    :cond_22
    iget-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    iget v4, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .registers 21

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/data/ContentProviderBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    const-string/jumbo v2, "uriExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    const-string/jumbo v2, "uriFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v8

    new-instance v2, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v4, "uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uriFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uriParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v8}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "columns"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_139

    const/4 v2, 0x0

    :goto_52
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    const-string/jumbo v2, "whereExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v14

    const-string/jumbo v2, "whereFormatExp"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v15

    new-instance v9, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "where"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v2, "whereFormat"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "whereParas"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v10, v3

    invoke-direct/range {v9 .. v15}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "args"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_144

    const/4 v2, 0x0

    :goto_a5
    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    const-string/jumbo v2, "order"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_ba

    const/16 v18, 0x0

    :cond_ba
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    const-string/jumbo v2, "countName"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d1

    const/16 v18, 0x0

    :cond_d1
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-eqz v2, :cond_eb

    new-instance v2, Lmiui/maml/data/IndexedVariable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    :cond_eb
    const-string/jumbo v2, "updateInterval"

    const/4 v4, -0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v4}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    move-object/from16 v0, p0

    iget v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    if-lez v2, :cond_10a

    new-instance v2, Lmiui/maml/data/ContentProviderBinder$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lmiui/maml/data/ContentProviderBinder$1;-><init>(Lmiui/maml/data/ContentProviderBinder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    :cond_10a
    invoke-virtual/range {p0 .. p1}, Lmiui/maml/data/ContentProviderBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    const-string/jumbo v2, "List"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    if-eqz v17, :cond_127

    :try_start_118
    new-instance v2, Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v4}, Lmiui/maml/data/ContentProviderBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;
    :try_end_127
    .catch Ljava/lang/IllegalArgumentException; {:try_start_118 .. :try_end_127} :catch_14f

    :cond_127
    :goto_127
    const-string/jumbo v2, "vigilant"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    return-void

    :cond_139
    const-string/jumbo v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_52

    :cond_144
    const-string/jumbo v2, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a5

    :catch_14f
    move-exception v16

    const-string/jumbo v2, "ContentProviderBinder"

    const-string/jumbo v4, "invalid List"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_127
.end method

.method private onQueryComplete(Landroid/database/Cursor;)V
    .registers 3

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-nez v0, :cond_9

    invoke-direct {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->updateVariables(Landroid/database/Cursor;)V

    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_c
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->onUpdateComplete()V

    return-void
.end method

.method private registerObserver(Landroid/net/Uri;Z)V
    .registers 9

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    if-eqz p2, :cond_17

    :try_start_11
    iget-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mChangeObserver:Lmiui/maml/data/ContentProviderBinder$ChangeObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_17} :catch_3c
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_17} :catch_18

    :cond_17
    :goto_17
    return-void

    :catch_18
    move-exception v2

    const-string/jumbo v3, "ContentProviderBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :catch_3c
    move-exception v1

    const-string/jumbo v3, "ContentProviderBinder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method private updateVariables(Landroid/database/Cursor;)V
    .registers 26

    if-nez p1, :cond_54

    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    move-object/from16 v21, v0

    int-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mList:Lmiui/maml/data/ContentProviderBinder$List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$List;->fill(Landroid/database/Cursor;)V

    :cond_2c
    if-eqz p1, :cond_30

    if-nez v7, :cond_5a

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_59

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/data/VariableBinder$Variable;

    check-cast v14, Lmiui/maml/data/ContentProviderBinder$Variable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V

    goto :goto_3a

    :cond_54
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    goto :goto_3

    :cond_59
    return-void

    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_64
    :goto_64
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1e7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiui/maml/data/VariableBinder$Variable;

    move-object/from16 v20, v14

    check-cast v20, Lmiui/maml/data/ContentProviderBinder$Variable;

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    move/from16 v21, v0

    if-nez v21, :cond_64

    const/16 v19, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mRow:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v21

    if-eqz v21, :cond_64

    :try_start_92
    move-object/from16 v0, v20

    iget-object v6, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-nez v21, :cond_1dc

    iget v0, v14, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_1e8

    iget v0, v14, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1fe

    const-string/jumbo v21, "ContentProviderBinder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "invalide type"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v14, Lmiui/maml/data/VariableBinder$Variable;->mTypeStr:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d0
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lmiui/maml/data/VariableBinder$Variable;->set(D)V
    :try_end_d5
    .catch Ljava/lang/NumberFormatException; {:try_start_92 .. :try_end_d5} :catch_d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_92 .. :try_end_d5} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_d5} :catch_157

    goto :goto_64

    :catch_d6
    move-exception v10

    const-string/jumbo v21, "ContentProviderBinder"

    const-string/jumbo v22, "failed to get value from cursor"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :sswitch_ee
    :try_start_ee
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :cond_f3
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_f3

    invoke-interface {v13}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_ee .. :try_end_10d} :catch_d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ee .. :try_end_10d} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_10d} :catch_157

    goto/16 :goto_64

    :catch_10f
    move-exception v9

    const-string/jumbo v21, "ContentProviderBinder"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "column does not exist: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :sswitch_132
    :try_start_132
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_137
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-nez v21, :cond_137

    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_155
    .catch Ljava/lang/NumberFormatException; {:try_start_132 .. :try_end_155} :catch_d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_132 .. :try_end_155} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_155} :catch_157

    goto/16 :goto_64

    :catch_157
    move-exception v8

    const-string/jumbo v21, "ContentProviderBinder"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    :sswitch_164
    :try_start_164
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_64

    :sswitch_171
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    if-eqz v18, :cond_18b

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_18b
    iget v0, v14, Lmiui/maml/data/VariableBinder$Variable;->mType:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_19c

    invoke-virtual {v14, v4}, Lmiui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    goto/16 :goto_64

    :cond_19c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lmiui/maml/data/ContentProviderBinder$Variable;->getImageElement(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ImageScreenElement;

    move-result-object v11

    if-eqz v11, :cond_64

    invoke-virtual {v11, v4}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_64

    :pswitch_1ad
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    goto/16 :goto_d0

    :pswitch_1b5
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getFloat(I)F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v16, v0

    goto/16 :goto_d0

    :pswitch_1c2
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v16, v0

    goto/16 :goto_d0

    :pswitch_1cf
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v16, v0

    goto/16 :goto_d0

    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/ContentProviderBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lmiui/maml/data/ContentProviderBinder$Variable;->setNull(Lmiui/maml/ScreenElementRoot;)V
    :try_end_1e5
    .catch Ljava/lang/NumberFormatException; {:try_start_164 .. :try_end_1e5} :catch_d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_164 .. :try_end_1e5} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_1e5} :catch_157

    goto/16 :goto_64

    :cond_1e7
    return-void

    :sswitch_data_1e8
    .sparse-switch
        0x2 -> :sswitch_164
        0x7 -> :sswitch_171
        0x8 -> :sswitch_132
        0x9 -> :sswitch_ee
        0x3e9 -> :sswitch_171
    .end sparse-switch

    :pswitch_data_1fe
    .packed-switch 0x3
        :pswitch_1c2
        :pswitch_1cf
        :pswitch_1b5
        :pswitch_1ad
    .end packed-switch
.end method


# virtual methods
.method public createCountVar()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    if-nez v0, :cond_8

    iput-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    :goto_7
    return-void

    :cond_8
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mCountName:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mCountVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_7
.end method

.method public finish()V
    .registers 4

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2}, Lmiui/maml/data/ContentProviderBinder;->setBlockedColumns([Ljava/lang/String;)V

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    return-void
.end method

.method public final getUriText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContentChanged()V
    .registers 3

    const-string/jumbo v0, "ContentProviderBinder"

    const-string/jumbo v1, "ChangeObserver: content changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mFinished:Z

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mPaused:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mAwareChangeWhilePause:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    goto :goto_1b
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;
    .registers 4

    new-instance v0, Lmiui/maml/data/ContentProviderBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/ContentProviderBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .registers 3

    invoke-virtual {p0, p1}, Lmiui/maml/data/ContentProviderBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/ContentProviderBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .registers 3

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public refresh()V
    .registers 1

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    return-void
.end method

.method public resume()V
    .registers 2

    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->startQuery()V

    :goto_a
    return-void

    :cond_b
    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    goto :goto_a
.end method

.method public final setBlockedColumns([Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v7, p1

    move v5, v6

    :goto_b
    if-ge v5, v7, :cond_15

    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_15
    iget-object v5, p0, Lmiui/maml/data/ContentProviderBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/data/VariableBinder$Variable;

    move-object v4, v2

    check-cast v4, Lmiui/maml/data/ContentProviderBinder$Variable;

    if-eqz v0, :cond_35

    iget-object v5, v4, Lmiui/maml/data/ContentProviderBinder$Variable;->mColumn:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    :goto_32
    iput-boolean v5, v4, Lmiui/maml/data/ContentProviderBinder$Variable;->mBlocked:Z

    goto :goto_1b

    :cond_35
    move v5, v6

    goto :goto_32

    :cond_37
    return-void
.end method

.method public startQuery()V
    .registers 10

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmiui/maml/data/ContentProviderBinder;->getUriText()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_13

    const-string/jumbo v0, "ContentProviderBinder"

    const-string/jumbo v1, "start query: uri null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_35

    const-string/jumbo v0, "content://sms/"

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string/jumbo v0, "1"

    const-string/jumbo v4, "sys.boot_completed"

    invoke-static {v4}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    iget-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mSystemBootCompleted:Z

    if-nez v0, :cond_35

    return-void

    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/data/ContentProviderBinder;->mNeedsRequery:Z

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    invoke-virtual {v0, v1}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->cancelOperation(I)V

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_44

    return-void

    :cond_44
    iget v0, p0, Lmiui/maml/data/ContentProviderBinder;->mUpdateInterval:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_59

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_59

    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lmiui/maml/data/ContentProviderBinder;->registerObserver(Landroid/net/Uri;Z)V

    iput-object v3, p0, Lmiui/maml/data/ContentProviderBinder;->mLastUri:Landroid/net/Uri;

    :cond_59
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mWhereFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder;->mQueryHandler:Lmiui/maml/data/ContentProviderBinder$QueryHandler;

    iget-object v4, p0, Lmiui/maml/data/ContentProviderBinder;->mColumns:[Ljava/lang/String;

    iget-object v6, p0, Lmiui/maml/data/ContentProviderBinder;->mArgs:[Ljava/lang/String;

    iget-object v7, p0, Lmiui/maml/data/ContentProviderBinder;->mOrder:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lmiui/maml/data/ContentProviderBinder$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/ContentProviderBinder;->mLastQueryTime:J

    invoke-direct {p0}, Lmiui/maml/data/ContentProviderBinder;->checkUpdate()V

    return-void
.end method
