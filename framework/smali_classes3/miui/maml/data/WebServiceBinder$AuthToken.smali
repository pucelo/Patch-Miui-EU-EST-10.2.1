.class public final Lmiui/maml/data/WebServiceBinder$AuthToken;
.super Ljava/lang/Object;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthToken"
.end annotation


# instance fields
.field public final authToken:Ljava/lang/String;

.field public final security:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/maml/data/WebServiceBinder$AuthToken;->authToken:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/data/WebServiceBinder$AuthToken;->security:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$AuthToken;
    .registers 5

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v3

    :cond_8
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    return-object v3

    :cond_14
    new-instance v1, Lmiui/maml/data/WebServiceBinder$AuthToken;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v1, v2, v3}, Lmiui/maml/data/WebServiceBinder$AuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
