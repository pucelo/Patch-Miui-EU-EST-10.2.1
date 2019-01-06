.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$6$1;
.super Ljava/lang/Object;
.source "UserSwitcherController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->onKeyguardShowingChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6$1;->this$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$6;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    return-void
.end method
