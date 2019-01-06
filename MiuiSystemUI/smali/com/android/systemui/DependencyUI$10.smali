.class Lcom/android/systemui/DependencyUI$10;
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

    iput-object p1, p0, Lcom/android/systemui/DependencyUI$10;->this$0:Lcom/android/systemui/DependencyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 4

    new-instance v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI$10;->this$0:Lcom/android/systemui/DependencyUI;

    iget-object v2, v0, Lcom/android/systemui/DependencyUI;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI$10;->this$0:Lcom/android/systemui/DependencyUI;

    sget-object v3, Lcom/android/systemui/Dependency;->BT_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {v0, v3}, Lcom/android/systemui/DependencyUI;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    return-object v1
.end method
