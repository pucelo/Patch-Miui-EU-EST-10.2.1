.class Lcom/android/systemui/qs/customize/TileQueryHelper$3;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field final synthetic val$finished:Z

.field final synthetic val$tilesToReturn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->val$tilesToReturn:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->val$finished:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->val$tilesToReturn:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTilesChanged(Ljava/util/List;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-boolean v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$3;->val$finished:Z

    invoke-static {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-set0(Lcom/android/systemui/qs/customize/TileQueryHelper;Z)Z

    return-void
.end method
