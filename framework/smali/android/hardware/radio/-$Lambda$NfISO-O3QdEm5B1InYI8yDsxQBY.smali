.class final synthetic Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/hardware/radio/RadioManager$ModuleProperties;->-android_hardware_radio_RadioManager$ModuleProperties-mthref-0(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;

    invoke-direct {v0}, Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;-><init>()V

    sput-object v0, Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;->$INST$0:Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/-$Lambda$NfISO-O3QdEm5B1InYI8yDsxQBY;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
