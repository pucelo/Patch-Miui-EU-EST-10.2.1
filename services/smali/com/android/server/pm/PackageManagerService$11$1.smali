.class Lcom/android/server/pm/PackageManagerService$11$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$11;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$retCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$11;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$11$1;->this$1:Lcom/android/server/pm/PackageManagerService$11;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$11$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$11$1;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$11$1;->val$packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$11$1;->val$retCode:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
