.class public Lcom/android/internal/app/ChooserActivityInjector;
.super Ljava/lang/Object;
.source "ChooserActivityInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 5

    const-string/jumbo v1, "security"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1, p2}, Lmiui/security/SecurityManager;->isAllowStartService(Landroid/content/Intent;I)Z

    move-result v1

    return v1
.end method
