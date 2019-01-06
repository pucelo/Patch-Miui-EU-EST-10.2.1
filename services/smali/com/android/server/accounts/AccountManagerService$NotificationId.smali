.class Lcom/android/server/accounts/AccountManagerService$NotificationId;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationId"
.end annotation


# instance fields
.field private final mId:I

.field final mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I
    .registers 2

    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return v0
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mId:I

    return-void
.end method
