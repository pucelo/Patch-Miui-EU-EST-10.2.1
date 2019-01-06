.class Lcom/android/systemui/DependencyUI$19;
.super Ljava/lang/Object;
.source "DependencyUI.java"

# interfaces
.implements Lcom/android/systemui/Dependency$DependencyProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/DependencyUI;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/DependencyUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/DependencyUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/DependencyUI$19;->this$0:Lcom/android/systemui/DependencyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 6

    new-instance v3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI$19;->this$0:Lcom/android/systemui/DependencyUI;

    iget-object v4, v0, Lcom/android/systemui/DependencyUI;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI$19;->this$0:Lcom/android/systemui/DependencyUI;

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/DependencyUI;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/DependencyUI$19;->this$0:Lcom/android/systemui/DependencyUI;

    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {v1, v2}, Lcom/android/systemui/DependencyUI;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/DependencyUI$19;->this$0:Lcom/android/systemui/DependencyUI;

    const-class v5, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v2, v5}, Lcom/android/systemui/DependencyUI;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;)V

    return-object v3
.end method
