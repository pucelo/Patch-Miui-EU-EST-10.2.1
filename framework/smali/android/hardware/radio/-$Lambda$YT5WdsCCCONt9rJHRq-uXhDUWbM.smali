.class final synthetic Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic $INST$0:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

.field public static final synthetic $INST$1:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->lambda$-android_hardware_radio_ProgramSelector_7454(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/hardware/radio/ProgramSelector$Identifier;

    invoke-static {p1}, Landroid/hardware/radio/ProgramSelector;->lambda$-android_hardware_radio_ProgramSelector_14965(Landroid/hardware/radio/ProgramSelector$Identifier;)Z

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;-><init>(B)V

    sput-object v0, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$INST$0:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    new-instance v0, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;-><init>(B)V

    sput-object v0, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$INST$1:Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$id:B

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$id:B

    packed-switch v0, :pswitch_data_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Landroid/hardware/radio/-$Lambda$YT5WdsCCCONt9rJHRq-uXhDUWbM;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
    .end packed-switch
.end method
