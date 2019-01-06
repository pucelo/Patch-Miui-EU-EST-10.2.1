.class Lcom/android/systemui/recents/BaseRecentsImpl$1;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$1;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$1;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$1;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-boolean v1, v1, Lcom/android/systemui/recents/BaseRecentsImpl;->mTriggeredFromAltTab:Z

    const/4 v3, 0x1

    const/4 v6, -0x1

    move v4, v2

    move v5, v2

    move v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/BaseRecentsImpl;->showRecents(ZZZZZIZ)V

    return-void
.end method
