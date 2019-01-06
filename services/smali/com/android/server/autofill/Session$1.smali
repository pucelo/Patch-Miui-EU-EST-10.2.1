.class Lcom/android/server/autofill/Session$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v8, "structure"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/assist/AssistStructure;

    if-nez v7, :cond_15

    const-string/jumbo v8, "AutofillSession"

    const-string/jumbo v9, "No assist structure - app might have crashed providing it"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const-string/jumbo v8, "receiverExtras"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_28

    const-string/jumbo v8, "AutofillSession"

    const-string/jumbo v9, "No receiver extras - app might have crashed providing it"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_28
    const-string/jumbo v8, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_58

    const-string/jumbo v8, "AutofillSession"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "New structure for requestId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get3(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_5f
    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->ensureData()V

    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c9

    const-string/jumbo v8, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v11}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " forged different component on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "AssistStructure: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get1(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get4(Lcom/android/server/autofill/Session;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v10

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/16 v11, 0x3b4

    invoke-static {v8, v11}, Lcom/android/server/autofill/Session;->-wrap0(Lcom/android/server/autofill/Session;I)Landroid/metrics/LogMaker;

    move-result-object v11

    if-nez v0, :cond_118

    const-string/jumbo v8, "null"

    :goto_c0
    const/16 v12, 0x3b5

    invoke-virtual {v11, v12, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_c9
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    invoke-virtual {v7}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v1

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_e4

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    new-instance v10, Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v8, v10}, Lcom/android/server/autofill/Session;->-set0(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_e4
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v10, Landroid/service/autofill/FillContext;

    invoke-direct {v10, v6, v7}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-wrap1(Lcom/android/server/autofill/Session;)V

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_102
    if-ge v2, v3, :cond_11d

    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/FillContext;

    invoke-static {v10, v8, v1}, Lcom/android/server/autofill/Session;->-wrap2(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_102

    :cond_118
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    goto :goto_c0

    :cond_11d
    new-instance v5, Landroid/service/autofill/FillRequest;

    new-instance v8, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-get2(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->-get0(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v10

    invoke-direct {v5, v6, v8, v10, v1}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/ArrayList;Landroid/os/Bundle;I)V
    :try_end_133
    .catchall {:try_start_5f .. :try_end_133} :catchall_13e

    monitor-exit v9

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->-get5(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    return-void

    :catchall_13e
    move-exception v8

    monitor-exit v9

    throw v8
.end method
