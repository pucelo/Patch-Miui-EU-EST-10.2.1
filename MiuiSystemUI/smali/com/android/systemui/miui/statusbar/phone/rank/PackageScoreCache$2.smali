.class Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;
.super Ljava/lang/Object;
.source "PackageScoreCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->retrievePackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

.field final synthetic val$pkgEntity:Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;->val$pkgEntity:Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;->this$0:Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache$2;->val$pkgEntity:Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;

    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->-wrap1(Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;Lcom/android/systemui/miui/statusbar/phone/rank/PackageEntity;)V

    return-void
.end method
