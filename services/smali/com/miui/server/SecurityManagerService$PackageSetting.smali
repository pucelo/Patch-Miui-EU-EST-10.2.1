.class Lcom/miui/server/SecurityManagerService$PackageSetting;
.super Ljava/lang/Object;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageSetting"
.end annotation


# instance fields
.field accessControl:Z

.field childrenControl:Z

.field isPrivacyApp:Z

.field maskNotification:Z

.field name:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    iput-boolean v0, p0, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    return-void
.end method
