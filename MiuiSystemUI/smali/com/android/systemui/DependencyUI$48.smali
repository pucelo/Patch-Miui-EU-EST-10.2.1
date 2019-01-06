.class Lcom/android/systemui/DependencyUI$48;
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

    iput-object p1, p0, Lcom/android/systemui/DependencyUI$48;->this$0:Lcom/android/systemui/DependencyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/DependencyUI$48;->this$0:Lcom/android/systemui/DependencyUI;

    iget-object v1, v1, Lcom/android/systemui/DependencyUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SilentModeObserverControllerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
