.class Lcom/android/systemui/qs/customize/TileQueryHelper$1;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;->addStockTiles(Lcom/android/systemui/qs/QSTileHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field final synthetic val$tilesToAdd:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$tilesToAdd:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->val$tilesToAdd:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$1;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
