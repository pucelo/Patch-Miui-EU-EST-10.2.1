.class public final enum Landroid/os/SystemService$State;
.super Ljava/lang/Enum;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/os/SystemService$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/os/SystemService$State;

.field public static final enum RESTARTING:Landroid/os/SystemService$State;

.field public static final enum RUNNING:Landroid/os/SystemService$State;

.field public static final enum STOPPED:Landroid/os/SystemService$State;

.field public static final enum STOPPING:Landroid/os/SystemService$State;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/os/SystemService$State;

    const-string/jumbo v1, "RUNNING"

    const-string/jumbo v2, "running"

    invoke-direct {v0, v1, v3, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    new-instance v0, Landroid/os/SystemService$State;

    const-string/jumbo v1, "STOPPING"

    const-string/jumbo v2, "stopping"

    invoke-direct {v0, v1, v4, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    new-instance v0, Landroid/os/SystemService$State;

    const-string/jumbo v1, "STOPPED"

    const-string/jumbo v2, "stopped"

    invoke-direct {v0, v1, v5, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    new-instance v0, Landroid/os/SystemService$State;

    const-string/jumbo v1, "RESTARTING"

    const-string/jumbo v2, "restarting"

    invoke-direct {v0, v1, v6, v2}, Landroid/os/SystemService$State;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/SystemService$State;

    sget-object v1, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    aput-object v1, v0, v3

    sget-object v1, Landroid/os/SystemService$State;->STOPPING:Landroid/os/SystemService$State;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/SystemService$State;->STOPPED:Landroid/os/SystemService$State;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/SystemService$State;->RESTARTING:Landroid/os/SystemService$State;

    aput-object v1, v0, v6

    sput-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemService;->-get1()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/os/SystemService$State;
    .registers 2

    const-class v0, Landroid/os/SystemService$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/os/SystemService$State;

    return-object v0
.end method

.method public static values()[Landroid/os/SystemService$State;
    .registers 1

    sget-object v0, Landroid/os/SystemService$State;->$VALUES:[Landroid/os/SystemService$State;

    return-object v0
.end method
