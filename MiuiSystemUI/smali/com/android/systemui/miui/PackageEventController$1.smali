.class Lcom/android/systemui/miui/PackageEventController$1;
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

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/systemui/miui/PackageEventController;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/PackageEventController$1;->this$0:Lcom/android/systemui/miui/PackageEventController;

    iput p2, p0, Lcom/android/systemui/miui/PackageEventController$1;->val$uid:I

    iput-object p3, p0, Lcom/android/systemui/miui/PackageEventController$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/miui/PackageEventController$1;->this$0:Lcom/android/systemui/miui/PackageEventController;

    invoke-static {v0}, Lcom/android/systemui/miui/PackageEventController;->-get0(Lcom/android/systemui/miui/PackageEventController;)Lcom/android/systemui/miui/PackageEventReceiver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/miui/PackageEventController$1;->val$uid:I

    iget-object v2, p0, Lcom/android/systemui/miui/PackageEventController$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/miui/PackageEventReceiver;->onPackageChanged(ILjava/lang/String;)V

    return-void
.end method
