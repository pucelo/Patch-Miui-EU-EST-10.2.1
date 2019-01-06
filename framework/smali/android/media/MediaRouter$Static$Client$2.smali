.class Landroid/media/MediaRouter$Static$Client$2;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$Static$Client;->onRestoreRoute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Landroid/media/MediaRouter$Static$Client;


# direct methods
.method constructor <init>(Landroid/media/MediaRouter$Static$Client;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, v1, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_13

    :cond_12
    return-void

    :cond_13
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, v1, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mDefaultAudioVideo:Landroid/media/MediaRouter$RouteInfo;

    if-eq v0, v1, :cond_2f

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    iget-object v1, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v1, v1, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v1, v1, Landroid/media/MediaRouter$Static;->mBluetoothA2dpRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne v0, v1, :cond_12

    :cond_2f
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRestoreRoute() : route="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v2, v2, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v2, v2, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$2;->this$2:Landroid/media/MediaRouter$Static$Client;

    iget-object v0, v0, Landroid/media/MediaRouter$Static$Client;->this$1:Landroid/media/MediaRouter$Static;

    iget-object v0, v0, Landroid/media/MediaRouter$Static;->mSelectedRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->select()V

    return-void
.end method
