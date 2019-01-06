.class final synthetic Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic $INST$0:Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_31229([B[B)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;

    invoke-direct {v0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;-><init>()V

    sput-object v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;->$INST$0:Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;

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

    invoke-direct {p0, p1, p2}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
