.class Landroid/printservice/recommendation/RecommendationService$MyHandler;
.super Landroid/os/Handler;
.source "RecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/recommendation/RecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_CONNECT:I = 0x1

.field static final MSG_DISCONNECT:I = 0x2

.field static final MSG_UPDATE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/printservice/recommendation/RecommendationService;


# direct methods
.method constructor <init>(Landroid/printservice/recommendation/RecommendationService;)V
    .registers 3

    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_3a

    :goto_5
    return-void

    :pswitch_6
    iget-object v2, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    invoke-static {v2, v1}, Landroid/printservice/recommendation/RecommendationService;->-set0(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {v1}, Landroid/printservice/recommendation/RecommendationService;->onConnected()V

    goto :goto_5

    :pswitch_15
    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {v1}, Landroid/printservice/recommendation/RecommendationService;->onDisconnected()V

    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/printservice/recommendation/RecommendationService;->-set0(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    goto :goto_5

    :pswitch_21
    :try_start_21
    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {v1}, Landroid/printservice/recommendation/RecommendationService;->-get0(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v1}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;->onRecommendationsUpdated(Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_5

    :catch_2f
    move-exception v0

    const-string/jumbo v1, "PrintServiceRecS"

    const-string/jumbo v2, "Could not update recommended services"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_15
        :pswitch_21
    .end packed-switch
.end method
