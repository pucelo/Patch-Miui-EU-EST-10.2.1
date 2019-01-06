.class Lcom/android/systemui/miui/PackageEventController$3;
.super Ljava/lang/Object;
.source "PackageEventController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/miui/PackageEventController;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/miui/PackageEventController;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/PackageEventController;ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/PackageEventController$3;->this$0:Lcom/android/systemui/miui/PackageEventController;

    iput p2, p0, Lcom/android/systemui/miui/PackageEventController$3;->val$uid:I

    iput-object p3, p0, Lcom/android/systemui/miui/PackageEventController$3;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/miui/PackageEventController$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/systemui/miui/PackageEventController$3;->this$0:Lcom/android/systemui/miui/PackageEventController;

    invoke-static {v0}, Lcom/android/systemui/miui/PackageEventController;->-get0(Lcom/android/systemui/miui/PackageEventController;)Lcom/android/systemui/miui/PackageEventReceiver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/miui/PackageEventController$3;->val$uid:I

    iget-object v2, p0, Lcom/android/systemui/miui/PackageEventController$3;->val$packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/miui/PackageEventController$3;->val$intent:Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/miui/PackageEventController$3;->val$intent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.REPLACING"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/miui/PackageEventReceiver;->onPackageRemoved(ILjava/lang/String;ZZ)V

    return-void
.end method
