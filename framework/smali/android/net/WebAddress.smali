.class public Landroid/net/WebAddress;
.super Ljava/lang/Object;
.source "WebAddress.java"


# static fields
.field static final MATCH_GROUP_AUTHORITY:I = 0x2

.field static final MATCH_GROUP_HOST:I = 0x3

.field static final MATCH_GROUP_PATH:I = 0x5

.field static final MATCH_GROUP_PORT:I = 0x4

.field static final MATCH_GROUP_SCHEME:I = 0x1

.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthInfo:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPort:I

.field private mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    const/16 v6, 0x1bb

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_f

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_f
    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    iput v5, p0, Landroid/net/WebAddress;->mPort:I

    const-string/jumbo v3, "/"

    iput-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    sget-object v3, Landroid/net/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_40

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    :cond_40
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_49

    iput-object v2, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    :cond_49
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_52

    iput-object v2, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    :cond_52
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_65

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_65

    :try_start_5f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/net/WebAddress;->mPort:I
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_65} :catch_a1

    :cond_65
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7c

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_ab

    iput-object v2, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    :cond_7c
    :goto_7c
    iget v3, p0, Landroid/net/WebAddress;->mPort:I

    if-ne v3, v6, :cond_cb

    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cb

    const-string/jumbo v3, "https"

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    :cond_90
    :goto_90
    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a0

    const-string/jumbo v3, "http"

    iput-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    :cond_a0
    return-void

    :catch_a1
    move-exception v0

    new-instance v3, Landroid/net/ParseException;

    const-string/jumbo v4, "Bad port"

    invoke-direct {v3, v4}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    goto :goto_7c

    :cond_c2
    new-instance v3, Landroid/net/ParseException;

    const-string/jumbo v4, "Bad address"

    invoke-direct {v3, v4}, Landroid/net/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_cb
    iget v3, p0, Landroid/net/WebAddress;->mPort:I

    if-ne v3, v5, :cond_90

    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string/jumbo v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dd

    iput v6, p0, Landroid/net/WebAddress;->mPort:I

    goto :goto_90

    :cond_dd
    const/16 v3, 0x50

    iput v3, p0, Landroid/net/WebAddress;->mPort:I

    goto :goto_90
.end method


# virtual methods
.method public getAuthInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    iget v0, p0, Landroid/net/WebAddress;->mPort:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .registers 2

    iput p1, p0, Landroid/net/WebAddress;->mPort:I

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v1, ""

    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v3, 0x1bb

    if-eq v2, v3, :cond_14

    iget-object v2, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    :cond_14
    iget v2, p0, Landroid/net/WebAddress;->mPort:I

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3f

    iget-object v2, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/WebAddress;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3f
    const-string/jumbo v0, ""

    iget-object v2, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
