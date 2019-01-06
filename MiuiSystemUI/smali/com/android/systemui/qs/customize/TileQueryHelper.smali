.class public Lcom/android/systemui/qs/customize/TileQueryHelper;
.super Ljava/lang/Object;
.source "TileQueryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;,
        Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    }
.end annotation


# instance fields
.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private mFinished:Z

.field private final mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

.field private final mLiveTiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSpecs:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/customize/TileQueryHelper;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/customize/TileQueryHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/customize/TileQueryHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/customize/TileQueryHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/qs/customize/TileQueryHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->notifyTilesChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->updateStateForCustomizer(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mListener:Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;

    new-instance v1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/customize/TileQueryHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$2;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addStockTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mContext:Landroid/content/Context;

    const v7, 0x7f110522

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    invoke-interface {v4, p0, v6}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->clearState()V

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    new-instance v6, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileCallback;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/plugins/qs/QSTile;)V

    invoke-interface {v4, v6}, Lcom/android/systemui/plugins/qs/QSTile;->addCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    invoke-interface {v4, v3}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/qs/customize/TileQueryHelper$1;

    invoke-direct {v7, p0, v5}, Lcom/android/systemui/qs/customize/TileQueryHelper$1;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addTile(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p3, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-direct {v1, p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v1, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p4, v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    return-void
.end method

.method private addTile(Ljava/lang/String;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "edit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-direct {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;-><init>()V

    iput-object p3, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->updateStateForCustomizer(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    iput-object p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->state:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez p4, :cond_2

    iget-object v2, p3, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    iput-object p2, v1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    iput-boolean p4, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getState(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/systemui/plugins/qs/QSTile$State;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private notifyTilesChanged(Z)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/qs/customize/TileQueryHelper$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper$3;-><init>(Lcom/android/systemui/qs/customize/TileQueryHelper;Ljava/util/ArrayList;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateStateForCustomizer(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    return v0
.end method

.method public queryTiles(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mSpecs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mFinished:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addStockTiles(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->addPackageTiles(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public releaseTiles()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/android/systemui/plugins/qs/QSTile;->setListening(Ljava/lang/Object;Z)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileQueryHelper;->mLiveTiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-void
.end method
