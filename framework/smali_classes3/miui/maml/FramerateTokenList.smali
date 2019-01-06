.class public Lmiui/maml/FramerateTokenList;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/FramerateTokenList$FramerateChangeListener;,
        Lmiui/maml/FramerateTokenList$FramerateToken;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FramerateTokenList"


# instance fields
.field private mCurFramerate:F

.field private mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/FramerateTokenList$FramerateToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lmiui/maml/FramerateTokenList;)Lmiui/maml/FramerateTokenList$FramerateChangeListener;
    .registers 2

    iget-object v0, p0, Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lmiui/maml/FramerateTokenList;)V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/FramerateTokenList;->onChange()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/FramerateTokenList$FramerateChangeListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    iput-object p1, p0, Lmiui/maml/FramerateTokenList;->mFramerateChangeListener:Lmiui/maml/FramerateTokenList$FramerateChangeListener;

    return-void
.end method

.method private onChange()V
    .registers 6

    const/4 v0, 0x0

    iget-object v4, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/FramerateTokenList$FramerateToken;

    iget v3, v1, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_a

    iget v0, v1, Lmiui/maml/FramerateTokenList$FramerateToken;->mFramerate:F
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_23

    goto :goto_a

    :cond_1f
    monitor-exit v4

    iput v0, p0, Lmiui/maml/FramerateTokenList;->mCurFramerate:F

    return-void

    :catchall_23
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public clear()V
    .registers 3

    iget-object v1, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .registers 6

    const-string/jumbo v1, "FramerateTokenList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-direct {v0, p0, p1}, Lmiui/maml/FramerateTokenList$FramerateToken;-><init>(Lmiui/maml/FramerateTokenList;Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_22
    iget-object v1, p0, Lmiui/maml/FramerateTokenList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_29

    monitor-exit v2

    return-object v0

    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getFramerate()F
    .registers 2

    iget v0, p0, Lmiui/maml/FramerateTokenList;->mCurFramerate:F

    return v0
.end method
