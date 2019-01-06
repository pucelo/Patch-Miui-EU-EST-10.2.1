.class Lcom/android/systemui/recents/BaseRecentsImpl$14;
.super Ljava/lang/Object;
.source "BaseRecentsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;->onResumed(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$14;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$14;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$14;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get10(Lcom/android/systemui/recents/BaseRecentsImpl;)Lcom/android/systemui/statusbar/phone/NavStubView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/BaseRecentsImpl$14;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v0}, Lcom/android/systemui/recents/BaseRecentsImpl;->-wrap7(Lcom/android/systemui/recents/BaseRecentsImpl;)V

    return-void
.end method
