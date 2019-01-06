.class Lcom/android/systemui/DependencyUI$32;
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

    iput-object p1, p0, Lcom/android/systemui/DependencyUI$32;->this$0:Lcom/android/systemui/DependencyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDependency()Ljava/lang/Object;
    .locals 5

    new-instance v2, Lcom/android/systemui/util/leak/LeakReporter;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI$32;->this$0:Lcom/android/systemui/DependencyUI;

    iget-object v3, v0, Lcom/android/systemui/DependencyUI;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/DependencyUI$32;->this$0:Lcom/android/systemui/DependencyUI;

    const-class v1, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-virtual {v0, v1}, Lcom/android/systemui/DependencyUI;->getDependency(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v1, p0, Lcom/android/systemui/DependencyUI$32;->this$0:Lcom/android/systemui/DependencyUI;

    sget-object v4, Lcom/android/systemui/Dependency;->LEAK_REPORT_EMAIL:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-virtual {v1, v4}, Lcom/android/systemui/DependencyUI;->getDependency(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/util/leak/LeakReporter;-><init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Ljava/lang/String;)V

    return-object v2
.end method
