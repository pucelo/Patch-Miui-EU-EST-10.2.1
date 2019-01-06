.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

.field final synthetic val$isManagedProfile:Z

.field final synthetic val$secondSpace:Z

.field final synthetic val$xSpace:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;ZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$xSpace:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$isManagedProfile:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$secondSpace:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const v4, 0x7f11007c

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$xSpace:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080406

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get8(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-set2(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Z)Z

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$isManagedProfile:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080402

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get9(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080404

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->val$secondSpace:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get7(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get6(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get12(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->-get1(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080400

    invoke-interface {v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->setIcon(Ljava/lang/String;ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
