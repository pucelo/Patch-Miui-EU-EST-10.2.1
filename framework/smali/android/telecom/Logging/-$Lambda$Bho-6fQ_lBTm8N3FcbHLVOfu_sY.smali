.class final synthetic Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-static {p1, p2}, Landroid/telecom/Logging/EventManager;->lambda$-android_telecom_Logging_EventManager_11918(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;

    invoke-direct {v0}, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;-><init>()V

    sput-object v0, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->$INST$0:Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telecom/Logging/-$Lambda$Bho-6fQ_lBTm8N3FcbHLVOfu_sY;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
