.class Lcom/android/systemui/fragments/FragmentService$FragmentHostState$1;
.super Ljava/lang/Object;
.source "FragmentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->sendConfigurationChange(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$1;->this$1:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    iput-object p2, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$1;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$1;->this$1:Lcom/android/systemui/fragments/FragmentService$FragmentHostState;

    iget-object v1, p0, Lcom/android/systemui/fragments/FragmentService$FragmentHostState$1;->val$newConfig:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/android/systemui/fragments/FragmentService$FragmentHostState;->-wrap0(Lcom/android/systemui/fragments/FragmentService$FragmentHostState;Landroid/content/res/Configuration;)V

    return-void
.end method
