.class final synthetic Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY$1;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-com_android_keyguard_doze_AlwaysOnDisplayPolicy-mthref-1(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY$1;

    invoke-direct {v0}, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY$1;->$INST$0:Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY$1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY$1;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
