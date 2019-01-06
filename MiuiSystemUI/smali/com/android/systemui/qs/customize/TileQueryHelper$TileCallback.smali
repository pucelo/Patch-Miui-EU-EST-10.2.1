.class Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileCallback"
.end annotation


# instance fields
.field private mTile:Lcom/android/systemui/plugins/qs/QSTile;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onShowDetail(Z)V
    .locals 0

    return-void
.end method

.method public onShowEdit(Z)V
    .locals 0

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v3, v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap4(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get4(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->mTile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get3(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback$1;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 0

    return-void
.end method
