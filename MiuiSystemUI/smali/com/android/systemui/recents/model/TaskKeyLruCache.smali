.class public Lcom/android/systemui/recents/model/TaskKeyLruCache;
.super Ljava/lang/Object;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

.field private final mKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/TaskKeyLruCache;)Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/model/TaskKeyLruCache;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    return-object v0
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/model/TaskKeyLruCache;-><init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;-><init>(Lcom/android/systemui/recents/model/TaskKeyLruCache;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "TaskKeyLruCache"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " numEntries="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final evictAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method final get(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final getAndInvalidateIfModified(Lcom/android/systemui/recents/model/Task$TaskKey;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ")TV;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    if-ne v1, v2, :cond_0

    iget-wide v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-wide v4, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->lastActiveTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache;->remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V

    return-object v6

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v2, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v0, "TaskKeyLruCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected null key or value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final remove(Lcom/android/systemui/recents/model/Task$TaskKey;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Ljava/util/Map;

    iget v1, p1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final trimToSize(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    return-void
.end method
