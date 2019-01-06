.class final Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter$1;
.super Ljava/lang/Object;
.source "NavStubJankyFrameReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->recordJankyFrames(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uploadList:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter$1;->val$uploadList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    const-string/jumbo v1, "fsJankyFrames"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter$1;->val$uploadList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method
