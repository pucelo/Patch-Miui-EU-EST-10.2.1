.class Lcom/android/systemui/statusbar/phone/StatusBar$68;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mLeaveOpenOnKeyguardHide:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$68;Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method
