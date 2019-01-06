.class public final enum Lcom/xiaomi/analytics/LogEvent$LogType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/analytics/LogEvent$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

.field public static final enum TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

.field public static final enum TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    const-string/jumbo v1, "TYPE_EVENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/analytics/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    const-string/jumbo v1, "TYPE_AD"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/analytics/LogEvent$LogType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaomi/analytics/LogEvent$LogType;

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    iput p3, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1

    const-class v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/analytics/LogEvent$LogType;
    .locals 1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->$VALUES:[Lcom/xiaomi/analytics/LogEvent$LogType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/analytics/LogEvent$LogType;->mValue:I

    return v0
.end method
