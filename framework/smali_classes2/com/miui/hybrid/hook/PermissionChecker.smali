.class public Lcom/miui/hybrid/hook/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# static fields
.field private static final PERMISSION:Ljava/lang/String; = "com.miui.hybrid.hook.WRITE_PERMISSION"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "com.miui.hybrid.hook.WRITE_PERMISSION"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method
