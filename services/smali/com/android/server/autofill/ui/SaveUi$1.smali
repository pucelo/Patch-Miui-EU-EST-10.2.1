.class Lcom/android/server/autofill/ui/SaveUi$1;
.super Landroid/widget/RemoteViews$OnClickHandler;
.source "SaveUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/SaveUi;-><init>(Landroid/content/Context;Lcom/android/server/autofill/ui/PendingUi;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Lcom/android/server/autofill/ui/OverlayControl;Lcom/android/server/autofill/ui/SaveUi$OnSaveListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/SaveUi;

.field final synthetic val$pendingUi:Lcom/android/server/autofill/ui/PendingUi;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/SaveUi;ILcom/android/server/autofill/ui/PendingUi;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    iput p2, p0, Lcom/android/server/autofill/ui/SaveUi$1;->val$type:I

    iput-object p3, p0, Lcom/android/server/autofill/ui/SaveUi$1;->val$pendingUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-direct {p0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    iget v5, p0, Lcom/android/server/autofill/ui/SaveUi$1;->val$type:I

    const/16 v6, 0x46c

    invoke-static {v4, v6, v5}, Lcom/android/server/autofill/ui/SaveUi;->-wrap0(Lcom/android/server/autofill/ui/SaveUi;II)Landroid/metrics/LogMaker;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/android/server/autofill/ui/SaveUi;->-wrap1(Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v2, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->-get0(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return v7

    :cond_1f
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_2c

    const-string/jumbo v4, "AutofillSaveUi"

    const-string/jumbo v5, "Intercepting custom description intent"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->-get1(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v3

    const-string/jumbo v4, "android.view.autofill.extra.RESTORE_SESSION_TOKEN"

    invoke-virtual {p3, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    :try_start_3c
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->val$pendingUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-object v4, v4, Lcom/android/server/autofill/ui/PendingUi;->client:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->-get1(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/server/autofill/ui/PendingUi;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/ui/PendingUi;->setState(I)V

    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_6f

    const-string/jumbo v4, "AutofillSaveUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hiding UI until restored with token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/SaveUi;->hide()Lcom/android/server/autofill/ui/PendingUi;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->-get0(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_81} :catch_82

    return v8

    :catch_82
    move-exception v0

    const-string/jumbo v4, "AutofillSaveUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error triggering pending intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v4, p0, Lcom/android/server/autofill/ui/SaveUi$1;->this$0:Lcom/android/server/autofill/ui/SaveUi;

    invoke-static {v4}, Lcom/android/server/autofill/ui/SaveUi;->-get0(Lcom/android/server/autofill/ui/SaveUi;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return v7
.end method
