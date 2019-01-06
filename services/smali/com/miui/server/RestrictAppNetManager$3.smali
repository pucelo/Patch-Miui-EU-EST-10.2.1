.class final Lcom/miui/server/RestrictAppNetManager$3;
.super Landroid/database/ContentObserver;
.source "RestrictAppNetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver1(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    iput-object p2, p0, Lcom/miui/server/RestrictAppNetManager$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    const-string/jumbo v0, "RestrictAppNetManager"

    const-string/jumbo v1, "registerCloudDataObserver1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/RestrictAppNetManager$3;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/server/RestrictAppNetManager;->-wrap1(Landroid/content/Context;I)V

    return-void
.end method
