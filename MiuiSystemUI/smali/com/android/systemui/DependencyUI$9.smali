.class Lcom/android/systemui/DependencyUI$9;
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

    iput-object p1, p0, Lcom/android/systemui/DependencyUI$9;->this$0:Lcom/android/systemui/DependencyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/DependencyUI$9;->this$0:Lcom/android/systemui/DependencyUI;

    const-class v1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/DependencyUI;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
