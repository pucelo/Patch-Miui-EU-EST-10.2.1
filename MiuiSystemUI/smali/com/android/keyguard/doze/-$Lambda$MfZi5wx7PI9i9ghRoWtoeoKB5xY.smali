.class final synthetic Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/keyguard/doze/AlwaysOnDisplayPolicy;->-com_android_keyguard_doze_AlwaysOnDisplayPolicy-mthref-0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY;

    invoke-direct {v0}, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY;-><init>()V

    sput-object v0, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY;->$INST$0:Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/doze/-$Lambda$MfZi5wx7PI9i9ghRoWtoeoKB5xY;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
