.class Lcom/miui/server/enterprise/RestrictionsManagerService$1;
.super Landroid/database/ContentObserver;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/enterprise/RestrictionsManagerService;->startWatchLocationRestriction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/enterprise/RestrictionsManagerService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v0

    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-static {v2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->-get0(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "gps_state"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4, v0}, Lcom/miui/enterprise/settings/EnterpriseSettings;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_34

    const-string/jumbo v2, "Enterprise-restric"

    const-string/jumbo v3, "FORCE_OPEN GPS"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-static {v2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->-get0(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_33
    :goto_33
    return-void

    :cond_34
    if-nez v1, :cond_33

    const-string/jumbo v2, "Enterprise-restric"

    const-string/jumbo v3, "Close GPS"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/server/enterprise/RestrictionsManagerService$1;->this$0:Lcom/miui/server/enterprise/RestrictionsManagerService;

    invoke-static {v2}, Lcom/miui/server/enterprise/RestrictionsManagerService;->-get0(Lcom/miui/server/enterprise/RestrictionsManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    invoke-static {v2, v3, v5, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_33
.end method
