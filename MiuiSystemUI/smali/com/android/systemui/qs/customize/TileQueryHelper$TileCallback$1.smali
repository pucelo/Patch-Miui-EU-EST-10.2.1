.class Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback$1;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;

.field final synthetic val$tileInfo:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback$1;->val$tileInfo:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback$1;->this$1:Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;

    iget-object v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;->this$0:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->-get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback$1;->val$tileInfo:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;->onTileChanged(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V

    return-void
.end method
