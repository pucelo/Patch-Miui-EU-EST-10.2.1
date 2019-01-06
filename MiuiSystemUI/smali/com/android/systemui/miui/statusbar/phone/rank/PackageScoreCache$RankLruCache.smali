.class Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;
.super Landroid/util/LruCache;
.source "PackageScoreCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RankLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LruCache",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    instance-of v1, p3, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    if-eqz v1, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->-get0(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;-><init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
