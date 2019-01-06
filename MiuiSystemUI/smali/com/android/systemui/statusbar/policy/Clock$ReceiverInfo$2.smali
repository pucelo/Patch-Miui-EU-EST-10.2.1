.class Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$2;
.super Ljava/lang/Object;
.source "Clock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;->updateAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

.field final synthetic val$clock:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$2;->this$1:Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$2;->val$clock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock$ReceiverInfo$2;->val$clock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    return-void
.end method
