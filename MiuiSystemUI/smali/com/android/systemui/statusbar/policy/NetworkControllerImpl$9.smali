.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;->val$command:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;->val$command:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;->val$args:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
