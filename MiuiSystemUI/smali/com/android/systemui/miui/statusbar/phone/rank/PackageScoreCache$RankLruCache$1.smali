.class Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;
.super Ljava/lang/Object;
.source "PackageScoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

.field final synthetic val$entity:Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;->this$1:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;->val$entity:Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;->this$1:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;

    iget-object v0, v0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$RankLruCache$1;->val$entity:Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->-wrap2(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    return-void
.end method
