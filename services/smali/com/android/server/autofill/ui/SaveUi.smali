.class final Lcom/android/server/autofill/ui/SaveUi;
.super Ljava/lang/Object;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;,
        Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillSaveUi"


# instance fields
.field private mDestroyed:Z

.field private final mDialog:Landroid/app/Dialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mServicePackageName:Ljava/lang/String;

.field private final mSubTitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/autofill/ui/SaveUi;II)Landroid/metrics/LogMaker;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V
    .registers 34

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    new-instance v20, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    new-instance v20, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;-><init>(Lcom/android/server/autofill/ui/SaveUi;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    move-object/from16 v0, p9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mPackageName:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v20, 0x109003d

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    const v20, 0x10201bf

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    new-instance v16, Landroid/util/ArraySet;

    const/16 v20, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getType()I

    move-result v15

    and-int/lit8 v20, v15, 0x1

    if-eqz v20, :cond_84

    const v20, 0x10400d4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_84
    and-int/lit8 v20, v15, 0x2

    if-eqz v20, :cond_9a

    const v20, 0x10400d1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9a
    and-int/lit8 v20, v15, 0x4

    if-eqz v20, :cond_b0

    const v20, 0x10400d2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_b0
    and-int/lit8 v20, v15, 0x8

    if-eqz v20, :cond_c6

    const v20, 0x10400d5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_c6
    and-int/lit8 v20, v15, 0x10

    if-eqz v20, :cond_dc

    const v20, 0x10400d3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_dc
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->size()I

    move-result v20

    packed-switch v20, :pswitch_data_3d0

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p3, v20, v21

    const v21, 0x10400cd

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    :goto_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/SaveUi;->setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const/4 v12, 0x0

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getCustomDescription()Landroid/service/autofill/CustomDescription;

    move-result-object v4

    if-eqz v4, :cond_340

    const/16 v20, 0x469

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    sget-boolean v20, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v20, :cond_143

    const-string/jumbo v20, "AutofillSaveUi"

    const-string/jumbo v21, "Using custom description"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_143
    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Landroid/service/autofill/CustomDescription;->getPresentation(Landroid/service/autofill/ValueFinder;)Landroid/widget/RemoteViews;

    move-result-object v11

    if-eqz v11, :cond_335

    new-instance v7, Lcom/android/server/autofill/ui/SaveUi$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v7, v0, v15, v1}, Lcom/android/server/autofill/ui/SaveUi$1;-><init>(Lcom/android/server/autofill/ui/SaveUi;ILcom/android/server/autofill/ui/PendingUi;)V

    const/16 v20, 0x0

    :try_start_156
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1, v7}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v5

    const v20, 0x10201bc

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/widget/ScrollView;

    move-object v12, v0

    invoke-virtual {v12, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ScrollView;->setVisibility(I)V
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_178} :catch_325

    :cond_178
    :goto_178
    const v20, 0x10201be

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getNegativeActionStyle()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3c6

    const v20, 0x104059e

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_199
    new-instance v20, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/autofill/ui/-$Lambda$At7ghLP7ePb8IjX4T-3J791grHE;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v20, 0x10201c0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    new-instance v20, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v20, Landroid/app/Dialog;

    const v21, 0x103013b

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/-$Lambda$lWFJV62mVsorLi23UkgJkVRbfB8;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v20 .. v21}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v20, 0x7f6

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const v20, 0x60028

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v20, 0x10

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    const/16 v20, 0x20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/16 v20, 0x51

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    invoke-virtual/range {v18 .. v18}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const v20, 0x10400cb

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v10, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const v20, 0x1030309

    move/from16 v0, v20

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V

    return-void

    :pswitch_25c
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x1

    aput-object p3, v20, v21

    const v21, 0x10400d0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_108

    :pswitch_291
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const/16 v21, 0x2

    aput-object p3, v20, v21

    const v21, 0x10400ce

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_108

    :pswitch_2d4
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const/16 v21, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    const/16 v22, 0x2

    aput-object v21, v20, v22

    const/16 v21, 0x3

    aput-object p3, v20, v21

    const v21, 0x10400cf

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_108

    :catch_325
    move-exception v6

    const-string/jumbo v20, "AutofillSaveUi"

    const-string/jumbo v21, "Could not inflate custom description. "

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_178

    :cond_335
    const-string/jumbo v20, "AutofillSaveUi"

    const-string/jumbo v21, "could not create remote presentation for custom title"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_178

    :cond_340
    invoke-virtual/range {p7 .. p7}, Landroid/service/autofill/SaveInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_38f

    const/16 v20, 0x46b

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v15}, Lcom/android/server/autofill/ui/SaveUi;->writeLog(II)V

    const v20, 0x10201bc

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ScrollView;

    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x2

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v13, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_38f
    sget-boolean v20, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v20, :cond_178

    const-string/jumbo v20, "AutofillSaveUi"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "on constructor: title="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", subTitle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_178

    :cond_3c6
    const v20, 0x10400cc

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_199

    :pswitch_data_3d0
    .packed-switch 0x1
        :pswitch_25c
        :pswitch_291
        :pswitch_2d4
    .end packed-switch
.end method

.method private static isValidLink(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_d

    const-string/jumbo v0, "AutofillSaveUi"

    const-string/jumbo v1, "isValidLink(): custom description without pending intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_d
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "AutofillSaveUi"

    const-string/jumbo v1, "isValidLink(): pending intent not for activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1d
    if-nez p1, :cond_29

    const-string/jumbo v0, "AutofillSaveUi"

    const-string/jumbo v1, "isValidLink(): no intent"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_29
    const/4 v0, 0x1

    return v0
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .registers 5

    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    const/16 v2, 0x38c

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(II)Landroid/metrics/LogMaker;
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x46a

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private setServiceIcon(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 13

    const v6, 0x10201bd

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v3, v4

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    if-gt v1, v4, :cond_72

    if-gt v0, v4, :cond_72

    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_6e

    const-string/jumbo v6, "AutofillSaveUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Adding service icon ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") as it\'s less than maximum "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_71
    return-void

    :cond_72
    const-string/jumbo v6, "AutofillSaveUi"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not adding service icon of size ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") because maximum is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_71
.end method

.method private show()V
    .registers 4

    const-string/jumbo v0, "AutofillSaveUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Showing save dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    return-void
.end method

.method private throwIfDestroyed()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot interact with a destroyed instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private writeLog(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(II)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method


# virtual methods
.method destroy()V
    .registers 3

    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "AutofillSaveUi"

    const-string/jumbo v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->throwIfDestroyed()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onDestroy()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z
    :try_end_24
    .catchall {:try_start_0 .. :try_end_24} :catchall_2a

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    return-void

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    const/16 v7, 0x2c

    const/16 v6, 0x29

    const/16 v5, 0x28

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "title: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "subtitle: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mSubTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "pendingUi: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "service: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "app: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "coordinates: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    aget v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    aget v2, v0, v4

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    aget v2, v0, v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    aget v2, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "destroyed: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mDestroyed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method hide()Lcom/android/server/autofill/ui/PendingUi;
    .registers 3

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "AutofillSaveUi"

    const-string/jumbo v1, "Hiding save dialog."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1a

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    return-object v0

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mOverlayControl:Lcom/android/server/autofill/ui/OverlayControl;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/OverlayControl;->showOverlays()V

    throw v0
.end method

.method synthetic lambda$-com_android_server_autofill_ui_SaveUi_10978(Landroid/service/autofill/SaveInfo;Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getNegativeActionListener()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_ui_SaveUi_11152(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onSave()V

    return-void
.end method

.method synthetic lambda$-com_android_server_autofill_ui_SaveUi_11481(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mListener:Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/SaveUi$OneTimeListener;->onCancel(Landroid/content/IntentSender;)V

    return-void
.end method

.method onPendingUi(ILandroid/os/IBinder;)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v1, p2}, Lcom/android/server/autofill/ui/PendingUi;->matches(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_3f

    const-string/jumbo v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): got token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " instead of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v3}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3f
    const/16 v1, 0x46e

    invoke-direct {p0, v1}, Lcom/android/server/autofill/ui/SaveUi;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v0

    packed-switch p1, :pswitch_data_c6

    const/16 v1, 0xb

    :try_start_4a
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    const-string/jumbo v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restore(): invalid operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_99

    :goto_67
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUi;->mPendingUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    return-void

    :pswitch_73
    :try_start_73
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_91

    const-string/jumbo v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Restoring save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/SaveUi;->show()V
    :try_end_98
    .catchall {:try_start_73 .. :try_end_98} :catchall_99

    goto :goto_67

    :catchall_99
    move-exception v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/SaveUi;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    throw v1

    :pswitch_a0
    const/4 v1, 0x5

    :try_start_a1
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_c2

    const-string/jumbo v1, "AutofillSaveUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cancelling pending save dialog for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;
    :try_end_c5
    .catchall {:try_start_a1 .. :try_end_c5} :catchall_99

    goto :goto_67

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_73
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_8

    const-string/jumbo v0, "NO TITLE"

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/server/autofill/ui/SaveUi;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method
