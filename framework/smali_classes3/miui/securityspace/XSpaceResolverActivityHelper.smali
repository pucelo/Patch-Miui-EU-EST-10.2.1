.class public Lmiui/securityspace/XSpaceResolverActivityHelper;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XSpaceResolverActivity"

.field private static final XSPACE_SERVICE_COMPONENT:Ljava/lang/String; = "com.miui.securitycore/com.miui.xspace.service.XSpaceService"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndResolve(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)Z
    .registers 5

    if-eqz p1, :cond_11

    const-string/jumbo v0, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_13
    new-instance v0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {v0, p0, p1, p2}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;-><init>(Landroid/app/Activity;Landroid/content/Intent;Lcom/android/internal/app/AlertController$AlertParams;)V

    invoke-virtual {v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->run()V

    const/4 v0, 0x1

    return v0
.end method
